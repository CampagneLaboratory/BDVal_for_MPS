package org.campagnelab.bdval.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import java.util.Arrays;
import jetbrains.mps.smodel.runtime.impl.ConceptDescriptorBuilder;
import jetbrains.mps.smodel.runtime.interpreted.StructureAspectInterpreted;

public class StructureAspectDescriptor implements jetbrains.mps.smodel.runtime.StructureAspectDescriptor {
  public StructureAspectDescriptor() {
  }

  public ConceptDescriptor getDescriptor(String conceptFqName) {
    switch (Arrays.binarySearch(stringSwitchCases_1htk8d_a0a0b, conceptFqName)) {
      case 0:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.CIDs").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("cids", "samples", "mismatches").alias("cids", "File containing phenotype and ID").create();
      case 1:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.DataSet").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "jetbrains.mps.lang.core.structure.INamedConcept").children(new String[]{"input", "platform", "cids", "task"}, new boolean[]{false, false, false, false}).create();
      case 2:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Input").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("input", "samples").children(new String[]{"Id", "Display"}, new boolean[]{true, true}).alias("input", "File containing input (table of ID's and genes)").create();
      case 3:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.InputDisplayRow").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").children(new String[]{"cols"}, new boolean[]{true}).alias("inputdisplay", "Stores the values of a row of the input to be displayed").create();
      case 4:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.InputDisplayVal").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("value").create();
      case 5:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.InputIds").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("id").alias("inputIds", "The sample Ids from the input data").create();
      case 6:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Platform").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("platform").alias("platform", "File containing platform").create();
      case 7:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Task").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("task").alias("task", "File containing name, conditions, and number of samples per condition").create();
      default:
        return StructureAspectInterpreted.getInstance().getDescriptor(conceptFqName);
    }
  }

  private static String[] stringSwitchCases_1htk8d_a0a0b = new String[]{"org.campagnelab.bdval.structure.CIDs", "org.campagnelab.bdval.structure.DataSet", "org.campagnelab.bdval.structure.Input", "org.campagnelab.bdval.structure.InputDisplayRow", "org.campagnelab.bdval.structure.InputDisplayVal", "org.campagnelab.bdval.structure.InputIds", "org.campagnelab.bdval.structure.Platform", "org.campagnelab.bdval.structure.Task"};
}
