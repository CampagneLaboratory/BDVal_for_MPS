package org.campagnelab.bdval.sandbox;

/*Generated by MPS */

import java.util.Properties;
import java.io.InputStream;
import java.io.FileInputStream;
import javax.swing.JLabel;
import javax.swing.JPanel;
import java.awt.BorderLayout;
import javax.swing.BorderFactory;
import javax.swing.JProgressBar;
import javax.swing.JTextArea;
import javax.swing.JScrollPane;
import javax.swing.JFrame;
import java.sql.Timestamp;
import java.util.Date;
import java.io.File;
import java.io.PrintStream;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.DefaultLogger;
import org.apache.tools.ant.ProjectHelper;
import javax.swing.JOptionPane;
import java.io.BufferedReader;
import java.io.FileReader;

public class runner {
  public static void main(String[] args) {
    String memoFile;
    if (args.length == 0) {
      memoFile = "C:/Users/Victoria/Desktop/8-19/test19/memo/memo.properties";
    } else {
      memoFile = args[0];
    }
    try {
      Properties prop = new Properties();
      InputStream input = new FileInputStream(memoFile);
      prop.load(input);
      final int numModels = Integer.parseInt(prop.getProperty("models.number"));
      final String name = prop.getProperty("project.name");
      final String folder = prop.getProperty("project.folder");
      String tag = prop.getProperty("tag");
      String modelInfo = prop.getProperty("models.description");
      String folds = prop.getProperty("folds");
      String repeats = prop.getProperty("repeats");
      String header = prop.getProperty("project.header");
      input.close();

      final int numFolds = Integer.parseInt(folds);
      final int numRepeats = Integer.parseInt(repeats);

      final JLabel statusLabel = new JLabel();
      JLabel descriptionLabel = new JLabel("Tag Description: " + tag);

      JPanel panel = new JPanel(new BorderLayout());
      panel.setBorder(BorderFactory.createEmptyBorder(5, 5, 5, 5));
      panel.add(descriptionLabel, BorderLayout.WEST);
      panel.add(statusLabel, BorderLayout.EAST);

      final JProgressBar progressBar = new JProgressBar();
      progressBar.setValue(0);
      progressBar.setStringPainted(true);

      JTextArea modelText = new JTextArea("Project Summary:\n" + modelInfo + "Folds: " + folds + "    Repeats: " + repeats);
      modelText.setEditable(false);
      JScrollPane scrollPane = new JScrollPane(modelText);

      JFrame frame = new JFrame(header);
      frame.setLayout(new BorderLayout());
      frame.add(panel, BorderLayout.NORTH);
      frame.add(scrollPane, BorderLayout.CENTER);
      frame.add(progressBar, BorderLayout.SOUTH);
      frame.setSize(500, 130);
      frame.setLocationRelativeTo(null);
      frame.setVisible(true);

      final String messageName = name + "-evaluate-" + String.format("%1$TF=%1$TR", new Timestamp(new Date().getTime())).replaceAll("-", "").replaceAll("=", "-").replaceAll(":", "") + ".txt";

      final File messageFile = new File(folder + "memo/" + messageName);
      final PrintStream printStream = new PrintStream(messageFile);

      // Starts ant to run BDVal project 
      Thread antCall = new Thread() {
        public void run() {
          Project p = new Project();
          try {
            File buildFile = new File(folder + name + ".xml");
            p.setUserProperty("ant.file", buildFile.getAbsolutePath());

            DefaultLogger consoleLogger = new DefaultLogger();
            consoleLogger.setErrorPrintStream(System.err);
            consoleLogger.setOutputPrintStream(printStream);
            consoleLogger.setMessageOutputLevel(Project.MSG_INFO);

            p.addBuildListener(consoleLogger);
            p.fireBuildStarted();
            p.init();
            ProjectHelper helper = ProjectHelper.getProjectHelper();
            p.addReference("ant.projectHelper", helper);
            helper.parse(p, buildFile);
            p.executeTarget("evaluate");
            p.fireBuildFinished(null);
          } catch (Exception e) {
            p.fireBuildFinished(e);
            statusLabel.setText("Build Failed");
            JOptionPane.showMessageDialog(null, "Error running ANT");
          }
        }
      };
      antCall.start();

      // Reads messages file to monitor progress 
      Thread monitorProgress = new Thread() {
        public void run() {
          int counter = 0;
          int sections = numModels * numFolds * numRepeats;
          int modelCounter = 0;
          String line;
          boolean stop = false;
          boolean success = true;

          try {
            BufferedReader br = new BufferedReader(new FileReader(messageFile));
            statusLabel.setText("Initializing");
            while (!(stop)) {
              line = br.readLine();
              if (line == null) {
                Thread.sleep(1000);
              } else {
                if (line.contains("execute-splits ->") && counter == 0) {
                  counter++;
                  progressBar.setValue(((counter * 100) / (sections + 1)) - 1);
                  modelCounter++;
                  statusLabel.setText("Processing " + modelCounter + " of " + numModels);
                } else if (line.contains("Item:-m predict")) {
                  counter++;
                  progressBar.setValue(((counter * 100) / (sections + 1)) - 1);
                } else if (line.contains("execute-splits ->")) {
                  modelCounter++;
                  statusLabel.setText("Processing " + modelCounter + " of " + numModels);
                } else if (line.contains("CAUGHT FAILED BUILD")) {
                  stop = true;
                  success = false;
                } else {
                  stop = line.contains("Total time:");
                }
              }
            }
            if (success) {
              statusLabel.setText("Done!");
            } else {
              statusLabel.setText("Build Failed");
            }
            progressBar.setValue(100);
          } catch (Exception e) {
            System.out.println("Error monitoring project progress");
          }
        }
      };
      monitorProgress.start();
    } catch (Exception e) {
      System.out.println("Unsuccessful BDVal run");
    }
  }
}
