package org.campagnelab.bdval.typesystem;

/*Generated by MPS */

import jetbrains.mps.errors.QuickFix_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;

public class TrimDirectory_QuickFix extends QuickFix_Runtime {
  public TrimDirectory_QuickFix() {
  }

  public String getDescription(SNode node) {
    return "Remove '/' character";
  }

  public void execute(SNode node) {
    {
      SNode dirNode = node;
      if (SNodeOperations.isInstanceOf(dirNode, "org.campagnelab.bdval.structure.Directory")) {
        String oldLocation = SPropertyOperations.getString(dirNode, "directoryLocation");
        SPropertyOperations.set(dirNode, "directoryLocation", oldLocation.substring(0, oldLocation.length() - 1));
      }
    }
  }
}