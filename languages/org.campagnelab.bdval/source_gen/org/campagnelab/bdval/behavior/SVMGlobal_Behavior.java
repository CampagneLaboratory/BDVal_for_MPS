package org.campagnelab.bdval.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;

public class SVMGlobal_Behavior {
  public static void init(SNode thisNode) {
    SPropertyOperations.set(thisNode, "name", "svmGlobal");
    SPropertyOperations.set(thisNode, "addoptions", "");
    SPropertyOperations.set(thisNode, "sequenceCommand", " svm-weights");
    SPropertyOperations.set(thisNode, "sequenceInfo", "");
    SPropertyOperations.set(thisNode, "sequenceNumFeatures", " --num-features");
    SPropertyOperations.set(thisNode, "otherOptions", "");
  }
}
