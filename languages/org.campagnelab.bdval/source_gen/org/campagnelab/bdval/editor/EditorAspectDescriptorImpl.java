package org.campagnelab.bdval.editor;

/*Generated by MPS */

import jetbrains.mps.openapi.editor.descriptor.EditorAspectDescriptor;
import java.util.Collection;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import java.util.Arrays;
import java.util.Collections;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditorComponent;

public class EditorAspectDescriptorImpl implements EditorAspectDescriptor {


  public Collection<ConceptEditor> getEditors(ConceptDescriptor descriptor) {
    switch (Arrays.binarySearch(stringSwitchCases_xbvbvu_a0a0b, descriptor.getConceptFqName())) {
      case 0:
        return Collections.<ConceptEditor>singletonList(new AUCPerformance_Editor());
      case 1:
        return Collections.<ConceptEditor>singletonList(new Approach_Editor());
      case 2:
        return Collections.<ConceptEditor>singletonList(new AverageAggregation_Editor());
      case 3:
        return Collections.<ConceptEditor>singletonList(new CIDs_Editor());
      case 4:
        return Collections.<ConceptEditor>singletonList(new CategoryReference_Editor());
      case 5:
        return Collections.<ConceptEditor>singletonList(new ClassificationInfo_Editor());
      case 6:
        return Collections.<ConceptEditor>singletonList(new ClassificationProperties_Editor());
      case 7:
        return Collections.<ConceptEditor>singletonList(new CoxReg_Editor());
      case 8:
        return Collections.<ConceptEditor>singletonList(new CoxRegProperties_Editor());
      case 9:
        return Collections.<ConceptEditor>singletonList(new DataSet_Editor());
      case 10:
        return Collections.<ConceptEditor>singletonList(new DesktopComputer_Editor());
      case 11:
        return Collections.<ConceptEditor>singletonList(new Directory_Editor());
      case 12:
        return Collections.<ConceptEditor>singletonList(new DisplayRow_Editor());
      case 13:
        return Collections.<ConceptEditor>singletonList(new DisplayValue_Editor());
      case 14:
        return Collections.<ConceptEditor>singletonList(new Endpoint_Editor());
      case 15:
        return Collections.<ConceptEditor>singletonList(new EndpointCategory_Editor());
      case 16:
        return Collections.<ConceptEditor>singletonList(new FeatureSelectionCombo_Editor());
      case 17:
        return Collections.<ConceptEditor>singletonList(new FeatureSelectionFoldFalse_Editor());
      case 18:
        return Collections.<ConceptEditor>singletonList(new FeatureSelectionFoldTrue_Editor());
      case 19:
        return Collections.<ConceptEditor>singletonList(new FeatureSelectionInfo_Editor());
      case 20:
        return Collections.<ConceptEditor>singletonList(new FeatureSelectionProperties_Editor());
      case 21:
        return Collections.<ConceptEditor>singletonList(new File_Editor());
      case 22:
        return Collections.<ConceptEditor>singletonList(new Float_Editor());
      case 23:
        return Collections.<ConceptEditor>singletonList(new FloatRange_Editor());
      case 24:
        return Collections.<ConceptEditor>singletonList(new FoldChange_Editor());
      case 25:
        return Collections.<ConceptEditor>singletonList(new FoldchangeProperties_Editor());
      case 26:
        return Collections.<ConceptEditor>singletonList(new Genelist_Editor());
      case 27:
        return Collections.<ConceptEditor>singletonList(new GenelistRef_Editor());
      case 28:
        return Collections.<ConceptEditor>singletonList(new GeneticAlgorithm_Editor());
      case 29:
        return Collections.<ConceptEditor>singletonList(new GeneticAlgorithmProperties_Editor());
      case 30:
        return Collections.<ConceptEditor>singletonList(new Input_Editor());
      case 31:
        return Collections.<ConceptEditor>singletonList(new Integer_Editor());
      case 32:
        return Collections.<ConceptEditor>singletonList(new KStar_Editor());
      case 33:
        return Collections.<ConceptEditor>singletonList(new KendallTau_Editor());
      case 34:
        return Collections.<ConceptEditor>singletonList(new KendallTauProperties_Editor());
      case 35:
        return Collections.<ConceptEditor>singletonList(new LoggedArray_Editor());
      case 36:
        return Collections.<ConceptEditor>singletonList(new Logistic_Editor());
      case 37:
        return Collections.<ConceptEditor>singletonList(new LogitBoost_Editor());
      case 38:
        return Collections.<ConceptEditor>singletonList(new MCCPerformance_Editor());
      case 39:
        return Collections.<ConceptEditor>singletonList(new MinMax_Editor());
      case 40:
        return Collections.<ConceptEditor>singletonList(new MinMaxProperties_Editor());
      case 41:
        return Collections.<ConceptEditor>singletonList(new NaiveBayes_Editor());
      case 42:
        return Collections.<ConceptEditor>singletonList(new OtherFiles_Editor());
      case 43:
        return Collections.<ConceptEditor>singletonList(new PCAAggregation_Editor());
      case 44:
        return Collections.<ConceptEditor>singletonList(new Pathway_Editor());
      case 45:
        return Collections.<ConceptEditor>singletonList(new PathwayProperties_Editor());
      case 46:
        return Collections.<ConceptEditor>singletonList(new Permutation_Editor());
      case 47:
        return Collections.<ConceptEditor>singletonList(new PermutationProperties_Editor());
      case 48:
        return Collections.<ConceptEditor>singletonList(new Platform_Editor());
      case 49:
        return Collections.<ConceptEditor>singletonList(new Project_Editor());
      case 50:
        return Collections.<ConceptEditor>singletonList(new Properties_Editor());
      case 51:
        return Collections.<ConceptEditor>singletonList(new RandomForest_Editor());
      case 52:
        return Collections.<ConceptEditor>singletonList(new Result_Editor());
      case 53:
        return Collections.<ConceptEditor>singletonList(new SVM_Editor());
      case 54:
        return Collections.<ConceptEditor>singletonList(new SVMGlobal_Editor());
      case 55:
        return Collections.<ConceptEditor>singletonList(new SVMIterative_Editor());
      case 56:
        return Collections.<ConceptEditor>singletonList(new SVMIterativeProperties_Editor());
      case 57:
        return Collections.<ConceptEditor>singletonList(new SVMProperties_Editor());
      case 58:
        return Collections.<ConceptEditor>singletonList(new SVMTuneC_Editor());
      case 59:
        return Collections.<ConceptEditor>singletonList(new SVMTuneCProperties_Editor());
      case 60:
        return Collections.<ConceptEditor>singletonList(new Sample_Editor());
      case 61:
        return Collections.<ConceptEditor>singletonList(new ServerComputer_Editor());
      case 62:
        return Collections.<ConceptEditor>singletonList(new SingleColorArray_Editor());
      case 63:
        return Collections.<ConceptEditor>singletonList(new Status_Editor());
      case 64:
        return Collections.<ConceptEditor>singletonList(new TTestProperties_Editor());
      case 65:
        return Collections.<ConceptEditor>singletonList(new Task_Editor());
      case 66:
        return Collections.<ConceptEditor>singletonList(new Ttest_Editor());
      case 67:
        return Collections.<ConceptEditor>singletonList(new TwoColorArray_Editor());
      case 68:
        return Collections.<ConceptEditor>singletonList(new WholeChip_Editor());
      default:
    }
    return Collections.<ConceptEditor>emptyList();
  }

  public Collection<ConceptEditorComponent> getEditorComponents(ConceptDescriptor descriptor, String editorComponentId) {
    return Collections.<ConceptEditorComponent>emptyList();
  }



  private static String[] stringSwitchCases_xbvbvu_a0a0b = new String[]{"org.campagnelab.bdval.structure.AUCPerformance", "org.campagnelab.bdval.structure.Approach", "org.campagnelab.bdval.structure.AverageAggregation", "org.campagnelab.bdval.structure.CIDs", "org.campagnelab.bdval.structure.CategoryReference", "org.campagnelab.bdval.structure.ClassificationInfo", "org.campagnelab.bdval.structure.ClassificationProperties", "org.campagnelab.bdval.structure.CoxReg", "org.campagnelab.bdval.structure.CoxRegProperties", "org.campagnelab.bdval.structure.DataSet", "org.campagnelab.bdval.structure.DesktopComputer", "org.campagnelab.bdval.structure.Directory", "org.campagnelab.bdval.structure.DisplayRow", "org.campagnelab.bdval.structure.DisplayValue", "org.campagnelab.bdval.structure.Endpoint", "org.campagnelab.bdval.structure.EndpointCategory", "org.campagnelab.bdval.structure.FeatureSelectionCombo", "org.campagnelab.bdval.structure.FeatureSelectionFoldFalse", "org.campagnelab.bdval.structure.FeatureSelectionFoldTrue", "org.campagnelab.bdval.structure.FeatureSelectionInfo", "org.campagnelab.bdval.structure.FeatureSelectionProperties", "org.campagnelab.bdval.structure.File", "org.campagnelab.bdval.structure.Float", "org.campagnelab.bdval.structure.FloatRange", "org.campagnelab.bdval.structure.FoldChange", "org.campagnelab.bdval.structure.FoldchangeProperties", "org.campagnelab.bdval.structure.Genelist", "org.campagnelab.bdval.structure.GenelistRef", "org.campagnelab.bdval.structure.GeneticAlgorithm", "org.campagnelab.bdval.structure.GeneticAlgorithmProperties", "org.campagnelab.bdval.structure.Input", "org.campagnelab.bdval.structure.Integer", "org.campagnelab.bdval.structure.KStar", "org.campagnelab.bdval.structure.KendallTau", "org.campagnelab.bdval.structure.KendallTauProperties", "org.campagnelab.bdval.structure.LoggedArray", "org.campagnelab.bdval.structure.Logistic", "org.campagnelab.bdval.structure.LogitBoost", "org.campagnelab.bdval.structure.MCCPerformance", "org.campagnelab.bdval.structure.MinMax", "org.campagnelab.bdval.structure.MinMaxProperties", "org.campagnelab.bdval.structure.NaiveBayes", "org.campagnelab.bdval.structure.OtherFiles", "org.campagnelab.bdval.structure.PCAAggregation", "org.campagnelab.bdval.structure.Pathway", "org.campagnelab.bdval.structure.PathwayProperties", "org.campagnelab.bdval.structure.Permutation", "org.campagnelab.bdval.structure.PermutationProperties", "org.campagnelab.bdval.structure.Platform", "org.campagnelab.bdval.structure.Project", "org.campagnelab.bdval.structure.Properties", "org.campagnelab.bdval.structure.RandomForest", "org.campagnelab.bdval.structure.Result", "org.campagnelab.bdval.structure.SVM", "org.campagnelab.bdval.structure.SVMGlobal", "org.campagnelab.bdval.structure.SVMIterative", "org.campagnelab.bdval.structure.SVMIterativeProperties", "org.campagnelab.bdval.structure.SVMProperties", "org.campagnelab.bdval.structure.SVMTuneC", "org.campagnelab.bdval.structure.SVMTuneCProperties", "org.campagnelab.bdval.structure.Sample", "org.campagnelab.bdval.structure.ServerComputer", "org.campagnelab.bdval.structure.SingleColorArray", "org.campagnelab.bdval.structure.Status", "org.campagnelab.bdval.structure.TTestProperties", "org.campagnelab.bdval.structure.Task", "org.campagnelab.bdval.structure.Ttest", "org.campagnelab.bdval.structure.TwoColorArray", "org.campagnelab.bdval.structure.WholeChip"};
}
