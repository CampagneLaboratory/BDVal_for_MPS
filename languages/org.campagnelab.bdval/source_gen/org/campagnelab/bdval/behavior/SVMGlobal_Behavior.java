package org.campagnelab.bdval.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;

public class SVMGlobal_Behavior {
  public static void init(SNode thisNode) {
    SPropertyOperations.set(thisNode, "name", "svmGlobal");
    SPropertyOperations.set(thisNode, "defs", "");
    SPropertyOperations.set(thisNode, "addoptions", "");
    SPropertyOperations.set(thisNode, "otherOptions", "");
  }

  public static String virtual_getEvaluateCommand_1277192072314969653(SNode thisNode, boolean first, boolean twoFS, boolean genelist, String splitType) {
    String command = "-m svm-weights --num-features %num-features%" + " --overwrite-output true --output-gene-list --gene-features-dir %gene-features-dir% --gene-list full" + " -o %dataset-name%-%split-id%-%label%-features.txt %other-options% --split-type" + splitType;
    if (first && twoFS) {
      command = command.replaceAll("-o %dataset-name%-%split-id%-%label%-features.txt", "-o %dataset-name%-%split-id%-%label%-intermediate-features.txt").replaceAll("%num-features%", "%max-intermediate-features%");
    }
    if (genelist) {
      command.replaceAll("--gene-list full", "--gene-list %gene-list-file%");
    } else if (!(first) && twoFS) {
      command.replaceAll("--gene-list full", "--gene-list %label%|%dataset-name%-%split-id%-%label%-intermediate-features.txt");
    }
    return command + "\n";
  }

  public static String virtual_getFinalModelCommand_7218745629926480436(SNode thisNode, boolean first, boolean twoFS, boolean genelist) {
    String command = "-m svm-weights --num-features %num-features%" + " --overwrite-output true --output-gene-list --gene-features-dir %gene-features-dir% --gene-list full" + " -o %model-final-features-filename%";
    if (first && twoFS) {
      command = command.replaceAll("-o %model-final-features-filename%", "-o %dataset-name%-%label%-intermediate-features.txt").replaceAll("%num-features%", "%max-intermediate-features%");
    }
    if (genelist) {
      command.replaceAll("--gene-list full", "--gene-list %gene-list-file%");
    } else if (!(first) && twoFS) {
      command.replaceAll("--gene-list full", "--gene-list %label%|%dataset-name%-%label%-intermediate-features.txt");
    }
    return command + "\n";
  }
}
