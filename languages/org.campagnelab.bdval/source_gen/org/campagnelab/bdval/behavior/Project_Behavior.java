package org.campagnelab.bdval.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import java.io.File;
import javax.swing.JOptionPane;
import org.apache.commons.io.FileUtils;
import java.util.Properties;
import java.io.OutputStream;
import java.io.FileOutputStream;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import java.io.Writer;
import java.io.BufferedWriter;
import java.io.FileWriter;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.DefaultLogger;
import org.apache.tools.ant.ProjectHelper;

public class Project_Behavior {
  public static void init(SNode thisNode) {
  }

  public static boolean call_checkProjectFolder_3976565827571671486(SNode thisNode) {
    String projectName = SPropertyOperations.getString(thisNode, "name").replaceAll("\\s", "");
    String directoryName = SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "properties", true), "outputLocation") + "/" + ((projectName == null ? null : projectName.trim())) + "/";
    boolean proceed;
    File directoryFile = new File(directoryName);
    if (directoryFile.exists()) {
      int reply = JOptionPane.showConfirmDialog(null, directoryName + " already exists. Delete Folder and Continue?", "Directory exists", JOptionPane.YES_NO_CANCEL_OPTION);
      switch (reply) {
        case JOptionPane.YES_OPTION:
          try {
            FileUtils.deleteDirectory(directoryFile);
          } catch (Exception e) {
            throw new Error("Error deleting existing Project Folder");
          }
          proceed = true;
          break;
        default:
          proceed = false;
      }
    } else {
      proceed = true;
    }
    return proceed;
  }

  public static void call_createFiles_290469645456423260(SNode thisNode) {
    String projectName = SPropertyOperations.getString(thisNode, "name").replaceAll("\\s", "");
    Project_Behavior.call_createLocalProperties_7083662764418572584(thisNode, projectName);
    Project_Behavior.call_createProperties_290469645499580654(thisNode, projectName);
  }

  public static void call_createLocalProperties_7083662764418572584(SNode thisNode, String projectName) {
    String fileName = SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "properties", true), "outputLocation") + "/" + projectName + "/" + projectName + "-local.properties";
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
    } catch (Exception e) {
      throw new Error("Error creating local properties file");
    }
  }

  public static void call_createProperties_290469645499580654(final SNode thisNode, final String projectName) {
    String fileName = SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "properties", true), "outputLocation") + "/" + projectName + "/" + projectName + ".properties";
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
          if (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(dataset, "otherFiles", true), "pathways"))) {
            prop.setProperty(datasetName.value + ".pathways-file", root + "/pathways/" + new File(SPropertyOperations.getString(SLinkOperations.getTarget(dataset, "otherFiles", true), "pathways")).getName());
            prop.setProperty(datasetName.value + ".gene-to-probes-file", root + "/pathways/" + new File(SPropertyOperations.getString(SLinkOperations.getTarget(dataset, "otherFiles", true), "geneToProbes")).getName());
          }
          if (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(dataset, "otherFiles", true), "survival"))) {
            prop.setProperty(datasetName.value + ".survival-file", root + "/survivals/" + new File(SPropertyOperations.getString(SLinkOperations.getTarget(dataset, "otherFiles", true), "survival")).getName());
          }
        }
      });
      // Finish bottom: custom ID/model 
      prop.store(output, SPropertyOperations.getString(thisNode, "name") + " Properties");
    } catch (Exception e) {
      throw new Error("Error creating properties file");
    }
  }

  public static void call_writeExecutable_7732421842564140401(SNode thisNode) {
    SPropertyOperations.set(thisNode, "terminalCommand", null);
    String projectName = SPropertyOperations.getString(thisNode, "name").replaceAll("\\s", "");
    try {
      String script = "export ANT_HOME=" + SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "properties", true), "antLocation") + "\n export PATH=${PATH}:${ANT_HOME}/bin \n ant -f " + SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "properties", true), "outputLocation") + "/" + projectName + "/" + projectName + ".xml";
      Writer output = new BufferedWriter(new FileWriter(SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "properties", true), "outputLocation") + "/" + projectName + "/run.command"));
      output.write(script);
      output.close();
      SPropertyOperations.set(thisNode, "terminalCommand", projectName);
      SPropertyOperations.set(thisNode, "terminalCommand2", projectName);
      System.out.println("Test");

    } catch (Exception e) {
      throw new Error("Error creating executable file");
    }
  }

  public static void call_runAnt_6178536078419791032(SNode thisNode) {
    File buildFile = new File(SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "properties", true), "outputLocation") + "/" + SPropertyOperations.getString(thisNode, "name") + "/" + SPropertyOperations.getString(thisNode, "name") + ".xml");
    Project p = new Project();
    p.setUserProperty("ant.file", buildFile.getAbsolutePath());
    DefaultLogger consoleLogger = new DefaultLogger();
    consoleLogger.setErrorPrintStream(System.err);
    consoleLogger.setOutputPrintStream(System.out);
    consoleLogger.setMessageOutputLevel(Project.MSG_INFO);
    p.addBuildListener(consoleLogger);
    try {
      p.fireBuildStarted();
      p.init();
      ProjectHelper helper = ProjectHelper.getProjectHelper();
      p.addReference("ant.projectHelper", helper);
      helper.parse(p, buildFile);
      p.executeTarget(p.getDefaultTarget());
      p.fireBuildFinished(null);
    } catch (Exception e) {
      p.fireBuildFinished(e);
    }
  }

  private static boolean isNotEmptyString(String str) {
    return str != null && str.length() > 0;
  }
}
