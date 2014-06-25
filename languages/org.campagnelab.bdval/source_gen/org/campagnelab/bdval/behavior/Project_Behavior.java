package org.campagnelab.bdval.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import org.apache.commons.lang.WordUtils;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.Properties;
import java.io.OutputStream;
import java.io.FileOutputStream;
import java.io.File;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import java.io.Writer;
import java.io.BufferedWriter;
import java.io.FileWriter;

public class Project_Behavior {
  public static void init(SNode thisNode) {
  }

  public static void call_createFiles_290469645456423260(SNode thisNode) {
    String projectName = WordUtils.capitalize(SPropertyOperations.getString(thisNode, "name").replaceAll("\\s", ""));
    boolean proceed = true;
    proceed = Project_Behavior.call_createLocalProperties_7083662764418572584(thisNode, projectName, proceed);
    proceed = Project_Behavior.call_createProperties_290469645499580654(thisNode, projectName, proceed);
  }

  public static boolean call_createLocalProperties_7083662764418572584(SNode thisNode, String projectName, boolean proceed) {
    String fileName = SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "properties", true), "outputLocation") + "/" + projectName + "/" + projectName + "-local.properties";
    if (proceed && DataSet_Behavior.call_checkFile_7083662764406992609(ListSequence.fromList(SLinkOperations.getTargets(thisNode, "dataset", true)).first(), fileName)) {
      try {
        Properties prop = new Properties();
        OutputStream output = new FileOutputStream(new File(fileName));
        prop.setProperty("eval-dataset-root", SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "properties", true), "outputLocation") + "/" + SPropertyOperations.getString(thisNode, "name").replaceAll("\\s", ""));
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
        return true;
      } catch (Exception e) {
        throw new Error("Error creating local properties file");
      }
    } else {
      return false;
    }
  }

  public static boolean call_createProperties_290469645499580654(final SNode thisNode, final String projectName, boolean proceed) {
    String fileName = SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "properties", true), "outputLocation") + "/" + projectName + "/" + projectName + ".properties";
    if (proceed && DataSet_Behavior.call_checkFile_7083662764406992609(ListSequence.fromList(SLinkOperations.getTargets(thisNode, "dataset", true)).first(), fileName)) {
      try {
        final Properties prop = new Properties();
        OutputStream output = new FileOutputStream(new File(fileName));
        final Wrappers._T<String> datasetName = new Wrappers._T<String>();
        final String root = "${eval-dataset-root}";
        ListSequence.fromList(SLinkOperations.getTargets(thisNode, "dataset", true)).visitAll(new IVisitor<SNode>() {
          public void visit(final SNode dataset) {
            datasetName.value = DataSet_Behavior.call_getName_290469645480322571(dataset);
            prop.setProperty(datasetName.value + ".dataset-name", projectName);
            prop.setProperty(datasetName.value + ".dataset-file", root + "/inputs/" + new File(SPropertyOperations.getString(SLinkOperations.getTarget(dataset, "input", true), "fileName")).getName());
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
                    if (!(SPropertyOperations.getString(SLinkOperations.getTarget(nonTarget, "input", true), "fileName").matches(SPropertyOperations.getString(SLinkOperations.getTarget(dataset, "input", true), "fileName")))) {
                      prop.setProperty(nonTargetName.value + ".dataset-file", root + "/inputs/" + new File(SPropertyOperations.getString(SLinkOperations.getTarget(nonTarget, "input", true), "fileName")).getName());
                    }
                  }
                }
              });
            }
            prop.setProperty(datasetName.value + ".platform-file", root + "/platforms/" + new File(SPropertyOperations.getString(SLinkOperations.getTarget(dataset, "platform", true), "fileName")).getName());
          }
        });
        // Finish bottom: custom ID/model 
        prop.store(output, SPropertyOperations.getString(thisNode, "name") + " Properties");
        return true;
      } catch (Exception e) {
        throw new Error("Error creating properties file");
      }
    } else {
      return false;
    }
  }

  public static void call_writeExecutableAndRun_7732421842564140401(SNode thisNode) {
    try {
      SPropertyOperations.set(SLinkOperations.getTarget(thisNode, "properties", true), "location", Object.class.getClass().getClassLoader().getResource("/sandbox/classes_gen/org/campagnelab/bdval/sandbox/Testing.xml").getFile());
    } catch (Exception e) {
      throw new Error("Error moving XML file");
    }
    String projectName = WordUtils.capitalize(SPropertyOperations.getString(thisNode, "name").replaceAll("\\s", ""));
    try {
      String script = "cd " + SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "properties", true), "bdvalLocation") + "/data \n export ANT_HOME=" + SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "properties", true), "antLocation") + "\n export PATH=${PATH}:${ANT_HOME}/bin \n ant -f " + SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "properties", true), "outputLocation") + "/" + projectName + "/" + projectName + ".xml";
      Writer output = new BufferedWriter(new FileWriter(SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "properties", true), "outputLocation") + "/" + projectName + "/run.command"));
      output.write(script);
      output.close();

    } catch (Exception e) {
      throw new Error("Error creating executable file");
    }
    try {
      Runtime.getRuntime().exec("open " + SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "properties", true), "outputLocation") + "/" + projectName + "/run.command");
    } catch (Exception e) {
      throw new Error("Error running project");
    }
  }
}
