package org.campagnelab.bdval.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import org.apache.commons.lang.WordUtils;
import java.io.File;
import javax.swing.JOptionPane;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import java.util.Properties;
import java.io.OutputStream;
import java.io.FileOutputStream;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import javax.swing.JFrame;
import java.io.InputStream;
import java.io.FileInputStream;
import javax.swing.JLabel;
import javax.swing.JProgressBar;
import javax.swing.JPanel;
import java.awt.BorderLayout;
import javax.swing.BorderFactory;
import java.sql.Timestamp;
import java.util.Date;
import org.apache.tools.ant.Project;
import java.io.PrintStream;
import org.apache.tools.ant.DefaultLogger;
import org.apache.tools.ant.ProjectHelper;
import java.io.BufferedReader;
import java.io.FileReader;

public class Project_Behavior {
  public static void init(SNode thisNode) {
  }

  public static void call_setup_7860773101052430949(SNode thisNode) {
    SPropertyOperations.set(thisNode, "trimmedName", SPropertyOperations.getString(thisNode, "name").replaceAll("\\s", "").trim());
    SPropertyOperations.set(thisNode, "projectFolder", SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(thisNode, "properties", true), "outputDirectory", true), "directoryLocation") + "/" + SPropertyOperations.getString(thisNode, "trimmedName") + "/" + WordUtils.capitalize(SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "properties", true), "tagDescription").replaceAll("\\s", "").trim()) + "/");
    Project_Behavior.call_checkProjectFolder_3976565827571671486(thisNode);
  }

  public static void call_checkProjectFolder_3976565827571671486(SNode thisNode) {
    boolean proceed = true;
    File directoryFile = new File(SPropertyOperations.getString(thisNode, "projectFolder"));
    if (directoryFile.exists()) {
      int reply = JOptionPane.showConfirmDialog(null, "Change project name/tag description to prevent deletion\n\n" + SPropertyOperations.getString(thisNode, "projectFolder") + " exists already\n" + "Overwrite any duplicate files and continue?", "Project with this name and tag description already exists", JOptionPane.OK_CANCEL_OPTION);
      if (reply != JOptionPane.OK_OPTION) {
        proceed = false;
      }
    }
    SPropertyOperations.set(thisNode, "proceed", "" + (proceed));
  }

  public static void call_generateAllFiles_290469645456423260(SNode thisNode) {
    File projectDirectory = new File(SPropertyOperations.getString(thisNode, "projectFolder"));
    projectDirectory.mkdirs();
    Project_Behavior.call_generateLocalProperties_7083662764418572584(thisNode);
    Project_Behavior.call_generateProperties_290469645499580654(thisNode);
    ListSequence.fromList(SLinkOperations.getTargets(thisNode, "dataset", true)).visitAll(new IVisitor<SNode>() {
      public void visit(SNode dataset) {
        DataSet_Behavior.call_generateFiles_6032947574604950587(dataset);
      }
    });
    Approach_Behavior.call_generateSequenceFiles_1870354875253436007(SLinkOperations.getTarget(thisNode, "approach", true));
  }

  public static void call_generateLocalProperties_7083662764418572584(SNode thisNode) {
    String fileName = SPropertyOperations.getString(thisNode, "projectFolder") + SPropertyOperations.getString(thisNode, "trimmedName") + "-local.properties";
    try {
      Properties prop = new Properties();
      OutputStream output = new FileOutputStream(new File(fileName));
      prop.setProperty("eval-dataset-root", SPropertyOperations.getString(thisNode, "projectFolder").substring(0, SPropertyOperations.getString(thisNode, "projectFolder").length() - 1));
      String computerType = SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(thisNode, "properties", true), "computerType", true), "name");
      prop.setProperty("computer.type", computerType);
      if (computerType.matches("server")) {
        prop.setProperty("server.thread-number", "" + SPropertyOperations.getInteger(SLinkOperations.getTarget(thisNode, "properties", true), "threads"));
        prop.setProperty("server.memory", "-Xmx" + SPropertyOperations.getInteger(SLinkOperations.getTarget(thisNode, "properties", true), "memory") + "m");
      } else {
        prop.setProperty("desktop.thread-number", "" + SPropertyOperations.getInteger(SLinkOperations.getTarget(thisNode, "properties", true), "threads"));
        prop.setProperty("desktop.memory", "-Xmx" + SPropertyOperations.getInteger(SLinkOperations.getTarget(thisNode, "properties", true), "memory") + "m");
      }
      prop.setProperty("number.models", String.valueOf(Project_Behavior.call_getNumModels_7860773100992528077(thisNode)));
      prop.store(output, SPropertyOperations.getString(thisNode, "name") + " Local Properties");
    } catch (Exception e) {
      throw new Error("Error creating local properties file");
    }
  }

  public static void call_generateProperties_290469645499580654(final SNode thisNode) {
    String fileName = SPropertyOperations.getString(thisNode, "projectFolder") + SPropertyOperations.getString(thisNode, "trimmedName") + ".properties";
    try {
      final Properties prop = new Properties();
      OutputStream output = new FileOutputStream(new File(fileName));
      final Wrappers._T<String> datasetName = new Wrappers._T<String>();
      final String root = "${eval-dataset-root}";
      ListSequence.fromList(SLinkOperations.getTargets(thisNode, "dataset", true)).visitAll(new IVisitor<SNode>() {
        public void visit(final SNode dataset) {
          datasetName.value = DataSet_Behavior.call_getName_290469645480322571(dataset);
          prop.setProperty(datasetName.value + ".dataset-name", SPropertyOperations.getString(thisNode, "trimmedName"));
          prop.setProperty(datasetName.value + ".dataset-file", root + "/inputs/" + new File(SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(dataset, "input", true), "file", true), "fileLocation")).getName());
          prop.setProperty(datasetName.value + ".cids-file", root + "/cids/" + datasetName.value + ".cids");
          prop.setProperty(datasetName.value + ".tasks-file", root + "/tasks/" + datasetName.value + ".tasks");
          // TODO: Fill in floor 
          prop.setProperty(datasetName.value + "floor", "");
          if (SPropertyOperations.getBoolean(dataset, "normalTarget")) {
            final Wrappers._T<String> nonTargetName = new Wrappers._T<String>();
            ListSequence.fromList(SLinkOperations.getTargets(thisNode, "dataset", true)).visitAll(new IVisitor<SNode>() {
              public void visit(SNode nonTarget) {
                if (SPropertyOperations.getBoolean(nonTarget, "testSet")) {
                  nonTargetName.value = datasetName.value + "." + SPropertyOperations.getString(nonTarget, "name").replaceAll("\\s", "").toLowerCase();
                  prop.setProperty(nonTargetName.value + ".test-samples", root + "/test-sets/" + DataSet_Behavior.call_getName_290469645480322571(nonTarget) + "-samples.txt");
                  prop.setProperty(nonTargetName.value + ".true-labels", root + "/cids/" + DataSet_Behavior.call_getName_290469645480322571(nonTarget) + ".cids");
                  if (!(SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(nonTarget, "input", true), "file", true), "fileLocation").matches(SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(dataset, "input", true), "file", true), "fileLocation")))) {
                    prop.setProperty(nonTargetName.value + ".dataset-file", root + "/inputs/" + new File(SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(nonTarget, "input", true), "file", true), "fileLocation")).getName());
                  }
                }
              }
            });
          }
          prop.setProperty(datasetName.value + ".platform-file", root + "/platforms/" + new File(SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(dataset, "platform", true), "file", true), "fileLocation")).getName());
          if (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(dataset, "otherFiles", true), "pathwaysFile", true), "fileLocation"))) {
            prop.setProperty(datasetName.value + ".pathways-file", root + "/pathways/" + new File(SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(dataset, "otherFiles", true), "pathwaysFile", true), "fileLocation")).getName());
            prop.setProperty(datasetName.value + ".gene-to-probes-file", root + "/pathways/" + new File(SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(dataset, "otherFiles", true), "geneToProbesFile", true), "fileLocation")).getName());
          }
          if (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(dataset, "otherFiles", true), "survivalFile", true), "fileLocation"))) {
            prop.setProperty(datasetName.value + ".survival-file", root + "/survivals/" + new File(SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(dataset, "otherFiles", true), "survivalFile", true), "fileLocation")).getName());
          }
        }
      });
      // Finish bottom: custom ID/model 
      prop.store(output, SPropertyOperations.getString(thisNode, "name") + " Properties");
    } catch (Exception e) {
      throw new Error("Error creating properties file");
    }
  }

  public static void call_showRunWindow_7860773100997324157(SNode thisNode) {
    final String name = SPropertyOperations.getString(thisNode, "name");
    final String description = SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "properties", true), "tagDescription");
    final SNode project = thisNode;

    Thread frameThread = new Thread() {
      public void run() {
        Object[] options = {"Run BDVal", "Cancel"};
        JFrame runFrame = new JFrame();
        int reply = JOptionPane.showOptionDialog(runFrame, "Run BDVal " + description + " Project", name + " Project", JOptionPane.OK_CANCEL_OPTION, JOptionPane.QUESTION_MESSAGE, null, options, options[0]);
        if (reply == JOptionPane.OK_OPTION) {
          Project_Behavior.call_runBDVal_6752420586317975318(project, new File(SPropertyOperations.getString(project, "projectFolder") + SPropertyOperations.getString(project, "trimmedName") + "-local.properties"));
        }
      }
    };
    frameThread.start();
  }

  public static void call_runBDVal_6752420586317975318(SNode thisNode, File localPropertiesFile) {
    try {
      Properties prop = new Properties();
      InputStream input = new FileInputStream(localPropertiesFile);
      final int numModels = Integer.getInteger(prop.getProperty("number.models"));
      final String tag = localPropertiesFile.getParentFile().getName();
      final String name = localPropertiesFile.getParentFile().getParentFile().getName();

      final JLabel statusLabel = new JLabel();
      final JProgressBar progressBar = new JProgressBar();
      progressBar.setValue(0);
      progressBar.setStringPainted(true);

      JPanel panel = new JPanel(new BorderLayout());
      panel.setBorder(BorderFactory.createEmptyBorder(5, 5, 5, 5));
      panel.add(statusLabel, BorderLayout.EAST);
      panel.add(progressBar, BorderLayout.SOUTH);

      JFrame frame = new JFrame("BDVal " + SPropertyOperations.getString(thisNode, "name") + " Project");
      frame.setLayout(new BorderLayout());
      frame.setSize(500, 90);
      frame.setContentPane(panel);
      frame.setLocationRelativeTo(null);
      frame.setVisible(true);

      final String folder = SPropertyOperations.getString(thisNode, "projectFolder");
      final String messageName = name + "-runMessages-" + String.format("%1$TF=%1$TR", new Timestamp(new Date().getTime())).replaceAll("-", "").replaceAll("=", "-").replaceAll(":", "") + ".txt";
      final File messageFile = new File(folder + messageName);

      // Starts ant to run BDVal project 
      Thread antCall = new Thread() {
        public void run() {
          Project p = new Project();
          try {
            PrintStream printStream = new PrintStream(messageFile);
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
            p.executeTarget(p.getDefaultTarget());
            p.fireBuildFinished(null);
          } catch (Exception e) {
            p.fireBuildFinished(e);
            throw new Error("Error running ant");
          }
        }
      };
      antCall.start();

      // Reads messages file to monitor progress 
      Thread monitorProgress = new Thread() {
        public void run() {
          boolean stop = false;
          String line;
          int counter = 0;

          try {
            BufferedReader br = new BufferedReader(new FileReader(messageFile));
            statusLabel.setText("Initializing");
            while (!(stop)) {
              line = br.readLine();
              if (line == null) {
                Thread.sleep(1000);
              } else {
                if (line.contains("execute-splits ->") || line.contains("Item:-m predict")) {
                  counter++;
                  progressBar.setValue(((counter * 100) / (numModels + 1)) - 1);
                  if (counter <= numModels) {
                    statusLabel.setText("Processing " + counter + " of " + (numModels));
                  }
                }
                stop = line.contains("Total time:");
              }
            }
            progressBar.setValue(100);
            statusLabel.setText("Done!");
          } catch (Exception e) {
            throw new Error("Error monitoring progress");
          }
        }
      };
      monitorProgress.start();

    } catch (Exception e) {
      throw new Error("Error running BDVal");
    }



  }

  public static int call_getNumModels_7860773100992528077(SNode thisNode) {
    final SNode approach = SLinkOperations.getTarget(thisNode, "approach", true);
    final Wrappers._int classificationsNum = new Wrappers._int(0);
    ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(approach, "classificationInfo", true), "classification", true)).visitAll(new IVisitor<SNode>() {
      public void visit(SNode classification) {
        if (SPropertyOperations.getString(classification, "name").matches("SVMTuneC")) {
          classificationsNum.value = classificationsNum.value + ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(SLinkOperations.getTarget(SLinkOperations.getTarget(approach, "classificationInfo", true), "classificationProperties", true), "svmTuneCProperties", true), "cValue", true)).count();
        } else {
          classificationsNum.value++;
        }
      }
    });
    final int foldNum = ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(approach, "featureSelectionInfo", true), "featureSelectionFold", true)).count();
    final Wrappers._int featureSelectionNum = new Wrappers._int(0);
    ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(approach, "featureSelectionInfo", true), "featureSelectionCombo", true)).visitAll(new IVisitor<SNode>() {
      public void visit(SNode featureSelectionCombo) {
        if (SPropertyOperations.getString(SLinkOperations.getTarget(featureSelectionCombo, "featureSelection1", true), "name").matches("wholeChip")) {
          featureSelectionNum.value++;
        } else {
          featureSelectionNum.value = featureSelectionNum.value + foldNum;
        }
      }
    });
    return featureSelectionNum.value * classificationsNum.value * ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(approach, "featureSelectionInfo", true), "numberOfFeatures", true)).count() * SPropertyOperations.getInteger(approach, "externalFolds") * SPropertyOperations.getInteger(approach, "externalRepeats");
  }

  private static boolean isNotEmptyString(String str) {
    return str != null && str.length() > 0;
  }
}
