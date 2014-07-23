package org.campagnelab.bdval.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;

public class Pathway_Behavior {
  public static void init(SNode thisNode) {
    SPropertyOperations.set(thisNode, "name", "pathway");
    SPropertyOperations.set(thisNode, "def", "");
    SPropertyOperations.set(thisNode, "addoptions", "");
    SPropertyOperations.set(thisNode, "otherOptions", "--pathways ${@{endpoint-name}.pathways-file}" + " --gene-to-probes ${@{endpoint-name}.gene-to-probes-file}" + " --pathway-aggregation-method ${pathway-aggregation-method}");
  }
}
