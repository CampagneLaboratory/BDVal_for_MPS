package org.campagnelab.bdval.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;

public class FloatRange_Behavior {
  public static void init(SNode thisNode) {
    SPropertyOperations.set(thisNode, "max", String.valueOf(Integer.MIN_VALUE));
    SPropertyOperations.set(thisNode, "min", String.valueOf(Integer.MAX_VALUE));

  }
}