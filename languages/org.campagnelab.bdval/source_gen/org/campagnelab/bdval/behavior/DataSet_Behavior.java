package org.campagnelab.bdval.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import java.io.File;
import java.util.HashMap;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import org.apache.commons.lang.WordUtils;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import org.apache.commons.io.FileUtils;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.List;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class DataSet_Behavior {
  public static void init(SNode thisNode) {
  }

  public static boolean call_generateFiles_6032947574604950587(SNode thisNode, boolean proceed) {
    String parentName = SPropertyOperations.getString(SNodeOperations.cast(SNodeOperations.getParent(thisNode), "org.campagnelab.bdval.structure.Project"), "name").replaceAll("\\s", "");
    String datasetName = DataSet_Behavior.call_getName_290469645480322571(thisNode);
    String directoryName = SPropertyOperations.getString(SLinkOperations.getTarget(SNodeOperations.cast(SNodeOperations.getParent(thisNode), "org.campagnelab.bdval.structure.Project"), "properties", true), "outputLocation") + "/" + ((parentName == null ? null : parentName.trim())) + "/";
    File directory = new File(directoryName);
    directory.mkdirs();
    proceed = DataSet_Behavior.call_copyPlatform_7083662764413093380(thisNode, directoryName, datasetName);
    proceed = DataSet_Behavior.call_copyInput_7083662764415129152(thisNode, directoryName, datasetName, proceed);
    HashMap categoryCounterMap = DataSet_Behavior.call_createCIDs_6032947574604951771(thisNode, directoryName, datasetName, proceed);
    if (!(categoryCounterMap.isEmpty())) {
      proceed = DataSet_Behavior.call_createTask_6032947574607589325(thisNode, directoryName, datasetName, categoryCounterMap);
    } else {
      proceed = false;
    }
    DataSet_Behavior.call_createTestSet_3976565827563239534(thisNode, directoryName, datasetName, proceed);
    return proceed;
  }

  public static String call_getName_290469645480322571(SNode thisNode) {
    final Wrappers._T<String> endpointDescription = new Wrappers._T<String>(WordUtils.capitalizeFully(SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(thisNode, "task", true), "endpoint", false), "name")).replaceAll("\\s", ""));
    ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(thisNode, "task", true), "categoryReference", true)).visitAll(new IVisitor<SNode>() {
      public void visit(SNode category) {
        endpointDescription.value = endpointDescription.value + WordUtils.capitalizeFully(SPropertyOperations.getString(SLinkOperations.getTarget(category, "endpointCategory", false), "name")).replaceAll("\\s", "");
      }
    });
    String parentName = SPropertyOperations.getString(SNodeOperations.cast(SNodeOperations.getParent(thisNode), "org.campagnelab.bdval.structure.Project"), "name").replaceAll("\\s", "");
    return parentName + "_" + endpointDescription.value + "_" + SPropertyOperations.getString(thisNode, "name").replaceAll("\\s", "");
  }

  public static boolean call_copyPlatform_7083662764413093380(SNode thisNode, String directoryName, String datasetName) {
    String platformFolder = directoryName + "platforms/";
    new File(platformFolder).mkdir();
    String fileName = platformFolder + new File(SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "platform", true), "fileName")).getName();
    if (DataSet_Behavior.call_checkFile_7083662764406992609(thisNode, fileName)) {
      try {
        FileUtils.copyFile(new File(SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "platform", true), "fileName")), new File(fileName));
        return true;
      } catch (Exception e) {
        throw new Error("Error Copying Platform File");
      }
    } else {
      return false;
    }
  }

  public static boolean call_copyInput_7083662764415129152(SNode thisNode, String directoryName, String datasetName, boolean proceed) {
    String inputFolder = directoryName + "inputs/";
    new File(inputFolder).mkdir();
    String fileName = inputFolder + new File(SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "input", true), "fileName")).getName();
    if (proceed && DataSet_Behavior.call_checkFile_7083662764406992609(thisNode, fileName)) {
      try {
        FileUtils.copyFile(new File(SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, "input", true), "fileName")), new File(fileName));
        return true;
      } catch (Exception e) {
        throw new Error("Error Copying Input File");
      }
    } else {
      return false;
    }
  }

  public static HashMap call_createCIDs_6032947574604951771(SNode thisNode, String directoryName, String datasetName, boolean proceed) {
    try {
      String cidsFolder = directoryName + "cids/";
      new File(cidsFolder).mkdir();
      String fileName = cidsFolder + datasetName + ".cids";
      if (proceed && DataSet_Behavior.call_checkFile_7083662764406992609(thisNode, fileName)) {
        FileWriter file = new FileWriter(fileName);
        final PrintWriter writer = new PrintWriter(file);
        writer.print(SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(thisNode, "task", true), "endpoint", false), "name") + "\t");
        writer.print("SampleId\t");
        final Wrappers._T<String> category = new Wrappers._T<String>();
        final HashMap categoryCountMap = new HashMap(ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(thisNode, "task", true), "categoryReference", true)).count());
        ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(thisNode, "input", true), "sample", true)).visitAll(new IVisitor<SNode>() {
          public void visit(SNode sample) {
            if ((SLinkOperations.getTarget(sample, "category", false) != null)) {
              writer.println();
              category.value = SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(sample, "category", false), "endpointCategory", false), "name");
              writer.print(category.value + "\t");
              writer.print(SPropertyOperations.getString(sample, "name") + "\t");
              if (categoryCountMap.containsKey(category.value)) {
                categoryCountMap.put(category.value, Integer.parseInt(categoryCountMap.remove(category.value).toString()) + 1);
              } else {
                categoryCountMap.put(category.value, 1);
              }
            }
          }
        });
        writer.close();
        file.close();
        return categoryCountMap;
      } else {
        return new HashMap();
      }
    } catch (Exception e) {
      throw new Error("Error Printing CIDs File");
    }
  }

  public static boolean call_createTask_6032947574607589325(SNode thisNode, String directoryName, String datasetName, final HashMap categoryCountMap) {
    try {
      String taskFolder = directoryName + "tasks/";
      new File(taskFolder).mkdir();
      String fileName = taskFolder + datasetName + ".tasks";
      if (DataSet_Behavior.call_checkFile_7083662764406992609(thisNode, fileName)) {
        FileWriter file = new FileWriter(fileName);
        PrintWriter writer = new PrintWriter(file);
        writer.print(datasetName + "\t");
        final List<String> endpointNames = ListSequence.fromList(new ArrayList<String>());
        final List<String> endpointCounts = ListSequence.fromList(new ArrayList<String>());
        final Wrappers._T<String> categoryName = new Wrappers._T<String>();
        ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(thisNode, "task", true), "categoryReference", true)).visitAll(new IVisitor<SNode>() {
          public void visit(SNode categoryref) {
            categoryName.value = SPropertyOperations.getString(SLinkOperations.getTarget(categoryref, "endpointCategory", false), "name");
            ListSequence.fromList(endpointNames).addElement(categoryName.value);
            ListSequence.fromList(endpointCounts).addElement(categoryCountMap.get(categoryName.value).toString());
          }
        });
        int size = ListSequence.fromList(endpointNames).count();
        for (int counter = 0; counter < size; counter++) {
          writer.print(ListSequence.fromList(endpointNames).getElement(counter) + "\t");
        }
        for (int counter = 0; counter < size; counter++) {
          writer.print(ListSequence.fromList(endpointCounts).getElement(counter) + "\t");
        }
        writer.close();
        file.close();
        return true;
      } else {
        return false;
      }
    } catch (Exception e) {
      throw new Error("Error Printing Task File");
    }
  }

  public static void call_createTestSet_3976565827563239534(SNode thisNode, String directoryName, String datasetName, boolean proceed) {
    String testSetFolder = directoryName + "test-sets/";
    new File(testSetFolder).mkdir();
    String fileName = testSetFolder + datasetName + "-samples.txt";
    if (proceed & SPropertyOperations.getBoolean(thisNode, "testSet") && DataSet_Behavior.call_checkFile_7083662764406992609(thisNode, fileName)) {
      try {
        FileWriter file = new FileWriter(fileName);
        final PrintWriter writer = new PrintWriter(file);
        ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(thisNode, "input", true), "sample", true)).visitAll(new IVisitor<SNode>() {
          public void visit(SNode sample) {
            if ((SLinkOperations.getTarget(SLinkOperations.getTarget(sample, "category", false), "endpointCategory", false) != null)) {
              writer.print(SPropertyOperations.getString(sample, "name"));
              writer.println();
            }
          }
        });
        writer.close();
        file.close();
      } catch (Exception e) {
        throw new Error("Error Printing Test-Set File");
      }
    }
  }

  public static boolean call_checkFile_7083662764406992609(SNode thisNode, String fileName) {
    return true;
  }

  public static boolean call_checkFileReal_3976565827571671486(SNode thisNode, String fileName) {
    boolean proceed;
    if (new File(fileName).exists()) {
      int reply = JOptionPane.showConfirmDialog(null, fileName + " already exists. Overwrite and Continue?", "File exists", JOptionPane.YES_NO_CANCEL_OPTION);
      switch (reply) {
        case JOptionPane.YES_OPTION:
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
}
