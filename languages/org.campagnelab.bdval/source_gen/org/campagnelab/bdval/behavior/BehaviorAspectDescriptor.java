package org.campagnelab.bdval.behavior;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BehaviorDescriptor;
import java.util.Arrays;
import jetbrains.mps.smodel.runtime.interpreted.BehaviorAspectInterpreted;

public class BehaviorAspectDescriptor implements jetbrains.mps.smodel.runtime.BehaviorAspectDescriptor {
  public BehaviorAspectDescriptor() {
  }

  public BehaviorDescriptor getDescriptor(String fqName) {
    switch (Arrays.binarySearch(stringSwitchCases_846f5o_a0a0b, fqName)) {
      case 5:
        return new Input_BehaviorDescriptor();
      case 1:
        return new DataSet_BehaviorDescriptor();
      case 6:
        return new Platform_BehaviorDescriptor();
      case 0:
        return new CIDs_BehaviorDescriptor();
      case 9:
        return new Task_BehaviorDescriptor();
      case 8:
        return new SampleId_BehaviorDescriptor();
      case 2:
        return new DisplayRow_BehaviorDescriptor();
      case 3:
        return new DisplayValue_BehaviorDescriptor();
      case 4:
        return new Endpoint_BehaviorDescriptor();
      case 7:
        return new Project_BehaviorDescriptor();
      default:
        return BehaviorAspectInterpreted.getInstance().getDescriptor(fqName);
    }
  }

  private static String[] stringSwitchCases_846f5o_a0a0b = new String[]{"org.campagnelab.bdval.structure.CIDs", "org.campagnelab.bdval.structure.DataSet", "org.campagnelab.bdval.structure.DisplayRow", "org.campagnelab.bdval.structure.DisplayValue", "org.campagnelab.bdval.structure.Endpoint", "org.campagnelab.bdval.structure.Input", "org.campagnelab.bdval.structure.Platform", "org.campagnelab.bdval.structure.Project", "org.campagnelab.bdval.structure.SampleId", "org.campagnelab.bdval.structure.Task"};
}
