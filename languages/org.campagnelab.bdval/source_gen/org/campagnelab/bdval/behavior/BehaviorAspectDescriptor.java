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
      case 26:
        return new Input_BehaviorDescriptor();
      case 6:
        return new DataSet_BehaviorDescriptor();
      case 42:
        return new Platform_BehaviorDescriptor();
      case 3:
        return new CIDs_BehaviorDescriptor();
      case 50:
        return new Sample_BehaviorDescriptor();
      case 8:
        return new DisplayRow_BehaviorDescriptor();
      case 9:
        return new DisplayValue_BehaviorDescriptor();
      case 10:
        return new Endpoint_BehaviorDescriptor();
      case 43:
        return new Project_BehaviorDescriptor();
      case 11:
        return new EndpointCategory_BehaviorDescriptor();
      case 56:
        return new Task_BehaviorDescriptor();
      case 4:
        return new CategoryReference_BehaviorDescriptor();
      case 44:
        return new Properties_BehaviorDescriptor();
      case 27:
        return new Integer_BehaviorDescriptor();
      case 57:
        return new WekaScan_BehaviorDescriptor();
      case 12:
        return new FCP_LogitBoost_BehaviorDescriptor();
      case 33:
        return new NaiveBayes_BehaviorDescriptor();
      case 30:
        return new LogitBoost_BehaviorDescriptor();
      case 29:
        return new Logistic_BehaviorDescriptor();
      case 45:
        return new RandomForest_BehaviorDescriptor();
      case 28:
        return new KStar_BehaviorDescriptor();
      case 46:
        return new SVM_BehaviorDescriptor();
      case 58:
        return new WholeChip_BehaviorDescriptor();
      case 49:
        return new SVMTuneC_BehaviorDescriptor();
      case 32:
        return new MinMaxSVMGlobal_BehaviorDescriptor();
      case 47:
        return new SVMIterative_BehaviorDescriptor();
      case 55:
        return new TTestSVMIterative_BehaviorDescriptor();
      case 54:
        return new TTestSVMGlobal_BehaviorDescriptor();
      case 41:
        return new PermutationSVMGlobal_BehaviorDescriptor();
      case 5:
        return new CoxRegSVMGlobal_BehaviorDescriptor();
      case 23:
        return new GenelistSVMGlobal_BehaviorDescriptor();
      case 24:
        return new GenelistSVMGlobalTuneC_BehaviorDescriptor();
      case 22:
        return new GenelistGeneticAlgorithm_BehaviorDescriptor();
      case 20:
        return new FoldchangeSVMIterative_BehaviorDescriptor();
      case 19:
        return new FoldchangeSVMGlobal_BehaviorDescriptor();
      case 52:
        return new TTestGeneticAlgorithm_BehaviorDescriptor();
      case 17:
        return new FoldchangeGeneticAlgorithm_BehaviorDescriptor();
      case 21:
        return new FullGeneticAlgorithm_BehaviorDescriptor();
      case 36:
        return new PathwaysBuildPathwayComponents_BehaviorDescriptor();
      case 35:
        return new PathwaysBaseline_BehaviorDescriptor();
      case 39:
        return new PathwaysTTestSVMGlobal_BehaviorDescriptor();
      case 37:
        return new PathwaysCoxregSVMGlobal_BehaviorDescriptor();
      case 40:
        return new PathwaysTuneC_BehaviorDescriptor();
      case 1:
        return new Approach_BehaviorDescriptor();
      case 34:
        return new PCAAggregation_BehaviorDescriptor();
      case 2:
        return new AverageAggregation_BehaviorDescriptor();
      case 7:
        return new DesktopComputer_BehaviorDescriptor();
      case 51:
        return new ServerComputer_BehaviorDescriptor();
      case 48:
        return new SVMProperties_BehaviorDescriptor();
      case 53:
        return new TTestProperties_BehaviorDescriptor();
      case 18:
        return new FoldchangeProperties_BehaviorDescriptor();
      case 25:
        return new GeneticAlgorithmProperties_BehaviorDescriptor();
      case 31:
        return new MCCPerformance_BehaviorDescriptor();
      case 0:
        return new AUCPerformance_BehaviorDescriptor();
      case 16:
        return new FeatureSelectionProperties_BehaviorDescriptor();
      case 13:
        return new FeatureSelectionFoldFalse_BehaviorDescriptor();
      case 14:
        return new FeatureSelectionFoldTrue_BehaviorDescriptor();
      case 15:
        return new FeatureSelectionInfo_BehaviorDescriptor();
      case 38:
        return new PathwaysProperties_BehaviorDescriptor();
      default:
        return BehaviorAspectInterpreted.getInstance().getDescriptor(fqName);
    }
  }

  private static String[] stringSwitchCases_846f5o_a0a0b = new String[]{"org.campagnelab.bdval.structure.AUCPerformance", "org.campagnelab.bdval.structure.Approach", "org.campagnelab.bdval.structure.AverageAggregation", "org.campagnelab.bdval.structure.CIDs", "org.campagnelab.bdval.structure.CategoryReference", "org.campagnelab.bdval.structure.CoxRegSVMGlobal", "org.campagnelab.bdval.structure.DataSet", "org.campagnelab.bdval.structure.DesktopComputer", "org.campagnelab.bdval.structure.DisplayRow", "org.campagnelab.bdval.structure.DisplayValue", "org.campagnelab.bdval.structure.Endpoint", "org.campagnelab.bdval.structure.EndpointCategory", "org.campagnelab.bdval.structure.FCP_LogitBoost", "org.campagnelab.bdval.structure.FeatureSelectionFoldFalse", "org.campagnelab.bdval.structure.FeatureSelectionFoldTrue", "org.campagnelab.bdval.structure.FeatureSelectionInfo", "org.campagnelab.bdval.structure.FeatureSelectionProperties", "org.campagnelab.bdval.structure.FoldchangeGeneticAlgorithm", "org.campagnelab.bdval.structure.FoldchangeProperties", "org.campagnelab.bdval.structure.FoldchangeSVMGlobal", "org.campagnelab.bdval.structure.FoldchangeSVMIterative", "org.campagnelab.bdval.structure.FullGeneticAlgorithm", "org.campagnelab.bdval.structure.GenelistGeneticAlgorithm", "org.campagnelab.bdval.structure.GenelistSVMGlobal", "org.campagnelab.bdval.structure.GenelistSVMGlobalTuneC", "org.campagnelab.bdval.structure.GeneticAlgorithmProperties", "org.campagnelab.bdval.structure.Input", "org.campagnelab.bdval.structure.Integer", "org.campagnelab.bdval.structure.KStar", "org.campagnelab.bdval.structure.Logistic", "org.campagnelab.bdval.structure.LogitBoost", "org.campagnelab.bdval.structure.MCCPerformance", "org.campagnelab.bdval.structure.MinMaxSVMGlobal", "org.campagnelab.bdval.structure.NaiveBayes", "org.campagnelab.bdval.structure.PCAAggregation", "org.campagnelab.bdval.structure.PathwaysBaseline", "org.campagnelab.bdval.structure.PathwaysBuildPathwayComponents", "org.campagnelab.bdval.structure.PathwaysCoxregSVMGlobal", "org.campagnelab.bdval.structure.PathwaysProperties", "org.campagnelab.bdval.structure.PathwaysTTestSVMGlobal", "org.campagnelab.bdval.structure.PathwaysTuneC", "org.campagnelab.bdval.structure.PermutationSVMGlobal", "org.campagnelab.bdval.structure.Platform", "org.campagnelab.bdval.structure.Project", "org.campagnelab.bdval.structure.Properties", "org.campagnelab.bdval.structure.RandomForest", "org.campagnelab.bdval.structure.SVM", "org.campagnelab.bdval.structure.SVMIterative", "org.campagnelab.bdval.structure.SVMProperties", "org.campagnelab.bdval.structure.SVMTuneC", "org.campagnelab.bdval.structure.Sample", "org.campagnelab.bdval.structure.ServerComputer", "org.campagnelab.bdval.structure.TTestGeneticAlgorithm", "org.campagnelab.bdval.structure.TTestProperties", "org.campagnelab.bdval.structure.TTestSVMGlobal", "org.campagnelab.bdval.structure.TTestSVMIterative", "org.campagnelab.bdval.structure.Task", "org.campagnelab.bdval.structure.WekaScan", "org.campagnelab.bdval.structure.WholeChip"};
}
