package org.campagnelab.bdval.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;

public class ClassificationParameters_Behavior {
  public static void init(SNode thisNode) {
    SLinkOperations.setNewChild(thisNode, "svmProperties", "org.campagnelab.bdval.structure.SVMProperties");
  }
}