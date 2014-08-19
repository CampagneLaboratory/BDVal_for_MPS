package org.campagnelab.bdval.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;

public class MinMax_Behavior {
  public static void init(SNode thisNode) {
    SPropertyOperations.set(thisNode, "name", "minMax");
    SPropertyOperations.set(thisNode, "defs", "");
    SPropertyOperations.set(thisNode, "addoptions", "addoption required:min-max-observations:Number of observations for min/max\n");
    SPropertyOperations.set(thisNode, "sequenceCommand", " min-max");
    SPropertyOperations.set(thisNode, "sequenceInfo", " --min-max-observations %min-max-observations%");
    SPropertyOperations.set(thisNode, "sequenceNumFeatures", " --report-max-probes");
    SPropertyOperations.set(thisNode, "otherOptions", " --min-max-observations ${minMax-observations}");

  }

  public static String virtual_getCommand_1277192072314969653(SNode thisNode, boolean first, boolean twoFS, boolean genelist, String splitType) {
    String command = "-m min-max --overwrite-output true --output-gene-list --gene-features-dir %gene-features-dir%" + " --min-max-observations %min-max-observations% %other-options%";
    if (first && twoFS) {
      command = command + " -o %dataset-name%-%split-id%-%label%-intermediate-features.txt --report-max-probes %max-intermediate-features%";
    } else {
      command = command + " -o %dataset-name%-%split-id%-%label%-features.txt --report-max-probes %num-features%";
    }
    if (genelist) {
      command = command + " --gene-list %gene-list-file%";
    } else if (!(first) && twoFS) {
      command = command + " --gene-list %label%|%dataset-name%-%split-id%-%label%-intermediate-features.txt";
    } else {
      command = command + " --gene-list full";
    }
    return command + " --split-type" + splitType + "\n";
  }
}
