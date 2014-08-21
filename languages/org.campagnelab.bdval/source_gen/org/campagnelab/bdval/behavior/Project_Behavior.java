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

public class Project_Behavior {
  public static void init(SNode thisNode) {
  }

  public static void call_setup_7860773101052430949(SNode thisNode) {
    SPropertyOperations.set(thisNode, "projectFolder", SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(thisNode, "properties", true), "outputDirectory", true), "directoryLocation") + "/" + SPropertyOperations.getString(thisNode, "name") + "/" + SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "properties", true), "directoryName") + "/");
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
    Approach_Behavior.call_generateSequenceFiles_1277192072313887035(SLinkOperations.getTarget(thisNode, "approach", true));
    Project_Behavior.call_generateMemoProperties_1911754720586693397(thisNode);
    ListSequence.fromList(SLinkOperations.getTargets(thisNode, "dataset", true)).visitAll(new IVisitor<SNode>() {
      public void visit(SNode dataset) {
        DataSet_Behavior.call_generateFiles_6032947574604950587(dataset);
      }
    });
  }

  public static void call_copyPlatform_8962624141197218263(SNode thisNode, String projectFolder) {
    File platformFile = new File(SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(thisNode, "platform", true), "file", true), "fileLocation"));
    if (!(platformFile.exists())) {
      return;
    }
    String platformFolder = projectFolder + "platforms/";

    new File(platformFolder).mkdir();
    String fileName = platformFolder + platformFile.getName();
    try {
      FileUtils.copyFile(platformFile, new File(fileName));
    } catch (Exception e) {
      throw new Error("Error Copying Platform File: ", e);
    }
  }

  public static void call_generateLocalProperties_7083662764418572584(SNode thisNode) {
    String fileName = SPropertyOperations.getString(thisNode, "projectFolder") + SPropertyOperations.getString(thisNode, "name") + "-local.properties";
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
      throw new Error("Error creating local properties file: " + e);
    }
  }

  public static void call_generateProperties_290469645499580654(final SNode thisNode) {
    String fileName = SPropertyOperations.getString(thisNode, "projectFolder") + SPropertyOperations.getString(thisNode, "name") + ".properties";
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
          prop.setProperty(datasetName.value + ".dataset-name", SPropertyOperations.getString(thisNode, "name"));
          prop.setProperty(datasetName.value + ".dataset-file", root + "/inputs/" + new File(SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(dataset, "input", true), "file", true), "fileLocation")).getName());
          prop.setProperty(datasetName.value + ".platform-file", platformFile);
          prop.setProperty(datasetName.value + ".cids-file", root + "/cids/" + datasetName.value + ".cids");
          prop.setProperty(datasetName.value + ".tasks-file", root + "/tasks/" + datasetName.value + ".tasks");
          prop.setProperty(datasetName.value + ".floor", floor.value);
          prop.setProperty(datasetName.value + ".array-parameters", arrayParam.value.substring(1));
          if (SPropertyOperations.getBoolean(dataset, "run")) {
            final Wrappers._T<String> nonTargetName = new Wrappers._T<String>();
            // TODO: figure out test set 
            final boolean testset = false;
            ListSequence.fromList(SLinkOperations.getTargets(thisNode, "dataset", true)).visitAll(new IVisitor<SNode>() {
              public void visit(SNode nonTarget) {
                if (testset) {
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
      prop.setProperty("define.model-id.column-id", "id-parameter-scan-series");
      prop.store(output, SPropertyOperations.getString(thisNode, "name") + " Properties");
    } catch (Exception e) {
      throw new Error("Error creating properties file: " + e);
    }
  }

  public static void call_generateMemoProperties_1911754720586693397(SNode thisNode) {
    String memoFolder = SPropertyOperations.getString(thisNode, "projectFolder") + "memo/";
    new File(memoFolder).mkdir();
    String fileName = memoFolder + "memo.properties";
    int numModels = ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(thisNode, "approach", true), "modelToGenerate", true)).count() * ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(SLinkOperations.getTarget(thisNode, "approach", true), "featureSelectionInfo", true), "numberOfFeatures", true)).count();
    final Wrappers._T<String> models = new Wrappers._T<String>("");
    ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(thisNode, "approach", true), "modelToGenerate", true)).visitAll(new IVisitor<SNode>() {
      public void visit(SNode modelToGenerate) {
        models.value = models.value + SPropertyOperations.getString(modelToGenerate, "name") + "\n";
      }
    });
    try {
      Properties prop = new Properties();
      OutputStream output = new FileOutputStream(new File(fileName));
      prop.setProperty("project.header", "BDVal " + SPropertyOperations.getString(thisNode, "name") + "/" + SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "properties", true), "directoryName") + " Project");
      prop.setProperty("project.name", SPropertyOperations.getString(thisNode, "name"));
      prop.setProperty("project.folder", SPropertyOperations.getString(thisNode, "projectFolder"));
      prop.setProperty("tag", SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "properties", true), "tagDescription"));
      prop.setProperty("models.number", String.valueOf(numModels));
      prop.setProperty("models.description", models.value);
      prop.setProperty("folds", String.valueOf(SPropertyOperations.getInteger(SLinkOperations.getTarget(thisNode, "approach", true), "externalFolds")));
      prop.setProperty("repeats", String.valueOf(SPropertyOperations.getInteger(SLinkOperations.getTarget(thisNode, "approach", true), "externalRepeats")));
      prop.store(output, SPropertyOperations.getString(thisNode, "name") + " information for rerunning through MPS");
    } catch (Exception e) {
      throw new Error("Error creating memo properties file: " + e);
    }
  }

  private static boolean isNotEmptyString(String str) {
    return str != null && str.length() > 0;
  }
}
