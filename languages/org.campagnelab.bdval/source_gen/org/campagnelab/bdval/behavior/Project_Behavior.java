package org.campagnelab.bdval.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import java.io.File;
import javax.swing.JOptionPane;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import org.apache.commons.io.FileUtils;
import java.util.Properties;
import java.io.OutputStream;
import java.io.FileOutputStream;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
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
import java.io.PrintStream;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.DefaultLogger;
import org.apache.tools.ant.ProjectHelper;
import java.io.BufferedReader;
import java.io.FileReader;

public class Project_Behavior {
  public static void init(SNode thisNode) {
  }

  public static void call_setup_7860773101052430949(SNode thisNode) {
    SPropertyOperations.set(thisNode, "trimmedName", SPropertyOperations.getString(thisNode, "name").replaceAll("\\s", "").trim());
    SPropertyOperations.set(thisNode, "projectFolder", SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(thisNode, "properties", true), "outputDirectory", true), "directoryLocation") + "/" + SPropertyOperations.getString(thisNode, "trimmedName") + "/" + SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "properties", true), "directoryName") + "/");
    Project_Behavior.call_checkProjectFolder_3976565827571671486(thisNode);
  }

  public static void call_checkProjectFolder_3976565827571671486(SNode thisNode) {
    boolean proceed = true;
    File directoryFile = new File(SPropertyOperations.getString(thisNode, "projectFolder"));
    if (directoryFile.exists()) {
      int reply = JOptionPane.showConfirmDialog(null, "Change project name/tag description to prevent deletion\n\n" + SPropertyOperations.getString(thisNode, "projectFolder") + " already exists\n" + "Overwrite any duplicate files and continue?", "Project with this name and tag description already exists", JOptionPane.OK_CANCEL_OPTION);
      if (reply != JOptionPane.OK_OPTION) {
        proceed = false;
      }
    }
    SPropertyOperations.set(thisNode, "proceed", "" + (proceed));
  }

  public static void call_generateAllFiles_290469645456423260(SNode thisNode) {
    File projectDirectory = new File(SPropertyOperations.getString(thisNode, "projectFolder"));
    projectDirectory.mkdirs();
    Project_Behavior.call_copyPlatform_8962624141197218263(thisNode, SPropertyOperations.getString(thisNode, "projectFolder"));
    Project_Behavior.call_generateLocalProperties_7083662764418572584(thisNode);
    Project_Behavior.call_generateProperties_290469645499580654(thisNode);
    Approach_Behavior.call_generateSequenceFiles_1870354875253436007(SLinkOperations.getTarget(thisNode, "approach", true));
    Project_Behavior.call_generateMemoProperties_1911754720586693397(thisNode);
    ListSequence.fromList(SLinkOperations.getTargets(thisNode, "dataset", true)).visitAll(new IVisitor<SNode>() {
      public void visit(SNode dataset) {
        DataSet_Behavior.call_generateFiles_6032947574604950587(dataset);
      }
    });
  }

  public static void call_copyPlatform_8962624141197218263(SNode thisNode, String projectFolder) {
    String platformFolder = projectFolder + "platforms/";
    new File(platformFolder).mkdir();
    String fileName = platformFolder + new File(SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(thisNode, "platform", true), "file", true), "fileLocation")).getName();
    try {
      FileUtils.copyFile(new File(SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(thisNode, "platform", true), "file", true), "fileLocation")), new File(fileName));
    } catch (Exception e) {
      throw new Error("Error Copying Platform File");
    }
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
      prop.store(output, SPropertyOperations.getString(thisNode, "name") + " Local Properties");
    } catch (Exception e) {
      throw new Error("Error creating local properties file");
    }
  }

  public static void call_generateProperties_290469645499580654(final SNode thisNode) {
    String fileName = SPropertyOperations.getString(thisNode, "projectFolder") + SPropertyOperations.getString(thisNode, "trimmedName") + ".properties";
    final Wrappers._T<String> datasetName = new Wrappers._T<String>();
    final String root = "${eval-dataset-root}";
    final Wrappers._T<String> arrayParam = new Wrappers._T<String>("");
    final Wrappers._T<String> floor = new Wrappers._T<String>("");

    final String platformFile = root + "/platforms/" + new File(SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(thisNode, "platform", true), "file", true), "fileLocation")).getName();
    ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(thisNode, "platform", true), "arrayParameter", true)).visitAll(new IVisitor<SNode>() {
      public void visit(SNode arrayNode) {
        arrayParam.value = arrayParam.value + SPropertyOperations.getString(arrayNode, "command");
      }
    });
    if (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "platform", true), "floor"))) {
      floor.value = SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "platform", true), "floor");
    }

    try {
      final Properties prop = new Properties();
      OutputStream output = new FileOutputStream(new File(fileName));
      ListSequence.fromList(SLinkOperations.getTargets(thisNode, "dataset", true)).visitAll(new IVisitor<SNode>() {
        public void visit(final SNode dataset) {
          datasetName.value = DataSet_Behavior.call_getName_290469645480322571(dataset);
          prop.setProperty(datasetName.value + ".dataset-name", SPropertyOperations.getString(thisNode, "trimmedName"));
          prop.setProperty(datasetName.value + ".dataset-file", root + "/inputs/" + new File(SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(dataset, "input", true), "file", true), "fileLocation")).getName());
          prop.setProperty(datasetName.value + ".platform-file", platformFile);
          prop.setProperty(datasetName.value + ".cids-file", root + "/cids/" + datasetName.value + ".cids");
          prop.setProperty(datasetName.value + ".tasks-file", root + "/tasks/" + datasetName.value + ".tasks");
          prop.setProperty(datasetName.value + ".floor", floor.value);
          prop.setProperty(datasetName.value + ".array-parameters", arrayParam.value.substring(1));
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

  public static void call_generateMemoProperties_1911754720586693397(SNode thisNode) {
    String memoFolder = SPropertyOperations.getString(thisNode, "projectFolder") + "memo/";
    new File(memoFolder).mkdir();
    String fileName = memoFolder + "memo.properties";
    int numModels = ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(thisNode, "approach", true), "modelToGenerate", true)).count() * ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(SLinkOperations.getTarget(thisNode, "approach", true), "featureSelectionInfo", true), "numberOfFeatures", true)).count() * SPropertyOperations.getInteger(SLinkOperations.getTarget(thisNode, "approach", true), "externalFolds") * SPropertyOperations.getInteger(SLinkOperations.getTarget(thisNode, "approach", true), "externalRepeats");
    final Wrappers._T<String> models = new Wrappers._T<String>("");
    ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(thisNode, "approach", true), "modelToGenerate", true)).visitAll(new IVisitor<SNode>() {
      public void visit(SNode modelToGenerate) {
        models.value = models.value + SPropertyOperations.getString(modelToGenerate, "name") + "\n";
      }
    });
    try {
      Properties prop = new Properties();
      OutputStream output = new FileOutputStream(new File(fileName));
      prop.setProperty("project.name", "BDVal " + SPropertyOperations.getString(thisNode, "name") + " Project");
      prop.setProperty("project.trimmed.name", SPropertyOperations.getString(thisNode, "trimmedName"));
      prop.setProperty("project.folder", SPropertyOperations.getString(thisNode, "projectFolder"));
      prop.setProperty("tag", SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "properties", true), "tagDescription"));
      prop.setProperty("models.number", String.valueOf(numModels));
      prop.setProperty("models.description", models.value);
      prop.setProperty("folds", String.valueOf(SPropertyOperations.getInteger(SLinkOperations.getTarget(thisNode, "approach", true), "externalFolds")));
      prop.setProperty("repeats", String.valueOf(SPropertyOperations.getInteger(SLinkOperations.getTarget(thisNode, "approach", true), "externalRepeats")));
      prop.store(output, SPropertyOperations.getString(thisNode, "name") + " information for rerunning through MPS");
    } catch (Exception e) {
      throw new Error("Error creating memo properties file");
    }
  }

  public static void call_showRunWindow_7860773100997324157(SNode thisNode) {
    final SNode project = thisNode;
    Thread frameThread = new Thread() {
      public void run() {
        int counter = 0;
        while (!(new File(SPropertyOperations.getString(project, "projectFolder") + SPropertyOperations.getString(project, "trimmedName") + ".xml").exists()) && counter < 60) {
          try {
            Thread.sleep(250);
            counter++;
          } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error waiting for xml file before showing run window");
          }
        }
        if (new File(SPropertyOperations.getString(project, "projectFolder") + SPropertyOperations.getString(project, "trimmedName") + ".xml").exists()) {
          Object[] options = {"Cancel", "Run BDVal"};
          int reply = JOptionPane.showOptionDialog(null, "Run BDVal " + SPropertyOperations.getString(SLinkOperations.getTarget(project, "properties", true), "tagDescription") + " Project", SPropertyOperations.getString(project, "name") + " Project", JOptionPane.OK_CANCEL_OPTION, JOptionPane.QUESTION_MESSAGE, null, options, options[1]);
          if (reply == 1) {
            Project_Behavior.call_runBDVal_6752420586317975318(project, SPropertyOperations.getString(project, "projectFolder") + "memo/memo.properties");
          }
        } else {
          JOptionPane.showMessageDialog(null, "Error\nTimed out waiting for xml file to move into correct folder");
        }
      }
    };
    frameThread.start();
  }

  public static void call_runBDVal_6752420586317975318(SNode thisNode, String memoFile) {
    try {
      Properties prop = new Properties();
      InputStream input = new FileInputStream(memoFile);
      prop.load(input);
      final int numModels = Integer.parseInt(prop.getProperty("models.number"));
      final String name = prop.getProperty("project.trimmed.name");
      final String folder = prop.getProperty("project.folder");
      String tag = prop.getProperty("tag");
      String modelInfo = prop.getProperty("models.description");
      String folds = prop.getProperty("folds");
      String repeats = prop.getProperty("repeats");
      String header = prop.getProperty("project.name");
      input.close();

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

      final String messageName = name + "-runMessages-" + String.format("%1$TF=%1$TR", new Timestamp(new Date().getTime())).replaceAll("-", "").replaceAll("=", "-").replaceAll(":", "") + ".txt";
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
            p.executeTarget(p.getDefaultTarget());
            p.fireBuildFinished(null);
          } catch (Exception e) {
            p.fireBuildFinished(e);
            JOptionPane.showMessageDialog(null, "Error running ANT");
          }
        }
      };
      antCall.start();

      // Reads messages file to monitor progress 
      Thread monitorProgress = new Thread() {
        public void run() {
          int counter = 0;
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
                if (line.contains("execute-splits ->") || line.contains("Item:-m predict")) {
                  counter++;
                  progressBar.setValue(((counter * 100) / (numModels + 1)) - 1);
                  if (counter <= numModels) {
                    statusLabel.setText("Processing " + counter + " of " + (numModels));
                  }
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
            JOptionPane.showMessageDialog(null, "Error monitoring project progress");
          }
        }
      };
      monitorProgress.start();
    } catch (Exception e) {
      JOptionPane.showMessageDialog(null, "Unsuccessful BDVal run");
    }
  }

  private static boolean isNotEmptyString(String str) {
    return str != null && str.length() > 0;
  }
}
