package org.campagnelab.bdval.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.core.behavior.BaseConcept_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.core.behavior.INamedConcept_Behavior;

public class MinMax_BehaviorDescriptor extends BaseConcept_BehaviorDescriptor implements FeatureSelection_BehaviorDescriptor {
  public MinMax_BehaviorDescriptor() {
  }

  public String virtual_getCommand_1277192072314969653(SNode thisNode, boolean first, boolean twoFS, boolean genelist, String splitType) {
    return MinMax_Behavior.virtual_getCommand_1277192072314969653(thisNode, first, twoFS, genelist, splitType);
  }

  public String virtual_getFqName_1213877404258(SNode thisNode) {
    return INamedConcept_Behavior.virtual_getFqName_1213877404258(thisNode);
  }

  @Override
  public String getConceptFqName() {
    return "org.campagnelab.bdval.structure.MinMax";
  }
}
