package org.campagnelab.bdval.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;

public class Permutation_Behavior {
  public static void init(SNode thisNode) {
    SPropertyOperations.set(thisNode, "name", "permutation");
    SPropertyOperations.set(thisNode, "defs", "");
    SPropertyOperations.set(thisNode, "addoptions", "addoption required:alpha:confidence level for permutation\n");
    SPropertyOperations.set(thisNode, "sequenceCommand", " permutation");
    SPropertyOperations.set(thisNode, "sequenceInfo", " --alpha %alpha%");
    SPropertyOperations.set(thisNode, "sequenceNumFeatures", " --report-max-probes");
    SPropertyOperations.set(thisNode, "otherOptions", " --alpha ${perm-alpha}");

  }
}
