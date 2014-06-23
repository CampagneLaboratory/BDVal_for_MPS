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
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Approach").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("externalRepeats", "externalFolds", "maxIntermediateFeatures").children(new String[]{"numFeatures", "featureSelection", "featureSelectionProperties", "classification"}, new boolean[]{true, true, false, true}).create();
      case 1:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.AverageAggregation").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.PathwayAggregationMethod").alias("average", "").create();
      case 2:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.CIDs").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("fileName").children(new String[]{"mismatches"}, new boolean[]{true}).alias("cids", "File containing phenotypes and Ids in columns").create();
      case 3:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.CategoryReference").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").references("endpointCategory").create();
      case 4:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Classification").interface_().parents("jetbrains.mps.lang.core.structure.INamedConcept").create();
      case 5:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.ComputerType").interface_().parents("jetbrains.mps.lang.core.structure.INamedConcept").create();
      case 6:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.CoxRegSVMGlobal").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("Cox Regression-SVM Global", "").create();
      case 7:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.DataSet").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "jetbrains.mps.lang.core.structure.INamedConcept").properties("normalTarget", "testSet").children(new String[]{"platform", "input", "task", "cids", "thresholdFloor"}, new boolean[]{false, false, false, false, false}).alias("dataset", "A set containing a platform file, input file, and the conditions for investigation").create();
      case 8:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.DesktopComputer").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.ComputerType").alias("desktop", "").create();
      case 9:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.DisplayRow").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").children(new String[]{"displayValue"}, new boolean[]{true}).alias("displayRow", "Stores the values of a row of the input to be displayed").create();
      case 10:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.DisplayValue").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("value").create();
      case 11:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Endpoint").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "jetbrains.mps.lang.core.structure.INamedConcept").children(new String[]{"categories"}, new boolean[]{true}).alias("endpoint", "A characteristic of interest under investigation ex. diseased").create();
      case 12:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.EndpointCategory").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "jetbrains.mps.lang.core.structure.INamedConcept").alias("endpointCategory", "The condition of the sample for a specific endpoint").create();
      case 13:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.FCP_LogitBoost").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.Classification").alias("FC+P Logistic Boost", "").create();
      case 14:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.FeatureSelection").interface_().parents("jetbrains.mps.lang.core.structure.INamedConcept").properties("type").create();
      case 15:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.FeatureSelectionFoldFalse").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("Feature Selection Fold-False", "").create();
      case 16:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.FeatureSelectionFoldTrue").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("Feature Selection Fold-True", "").create();
      case 17:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.FeatureSelectionProperties").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").children(new String[]{"SVM", "ttest"}, new boolean[]{false, false}).create();
      case 18:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.FoldChangeSVMIterative").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("Fold Change-SVM Iterative", "").create();
      case 19:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.FoldchangeGeneticAlgorithm").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("Fold Change-Genetic Algorithm", "").create();
      case 20:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.FoldchangeSVMGlobal").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("Fold Change-SVM Iterative", "").create();
      case 21:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.FullGeneticAlgorithm").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("Full Genetic Algorithm", "").create();
      case 22:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.GenelistGeneticAlgorithm").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("Genelist-Genetic Algorithm", "").create();
      case 23:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.GenelistSVMGlobal").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("Genelist-SVM Global", "").create();
      case 24:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.GenelistSVMGlobalTuneC").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("Genelist-SVM Global-Tune C", "").create();
      case 25:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Input").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("fileName", "numberOfSamples").children(new String[]{"sample", "displayRow"}, new boolean[]{true, true}).alias("input", "File containing input (table of ID's and genes)").create();
      case 26:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Integer").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("value").create();
      case 27:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.KStar").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.Classification").alias("K Star", "").create();
      case 28:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Logistic").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.Classification").alias("Logistic", "").create();
      case 29:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.LogitBoost").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.Classification").alias("Logistic Boost", "").create();
      case 30:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.MinMaxSVMGlobal").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("Min/Max-SVM Global", "").create();
      case 31:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.NaiveBayes").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.Classification").alias("Naive Bayes", "").create();
      case 32:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.PCAAggregation").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.PathwayAggregationMethod").alias("PCA", "").create();
      case 33:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.PathwayAggregationMethod").interface_().create();
      case 34:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.PathwaysBaseline").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("Pathways-Baseline", "").create();
      case 35:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.PathwaysBuildPathwayComponents").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("Pathways-Build Pathways Components", "").create();
      case 36:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.PathwaysCoxregSVMGlobal").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("Pathways-Cox Regression-SVM Global", "").create();
      case 37:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.PathwaysTTestSVMGlobal").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("Pathways-ttest-SVM Global", "").create();
      case 38:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.PathwaysTuneC").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("Pathways-Tune C", "").create();
      case 39:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.PermutationSVMGlobal").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("Permutations-SVM Global", "").create();
      case 40:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Platform").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("fileName").alias("platform", "File containing platform").create();
      case 41:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Project").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "jetbrains.mps.lang.core.structure.INamedConcept").children(new String[]{"properties", "approach", "endpoint", "dataset"}, new boolean[]{false, false, true, true}).alias("project", "An entire project which can contain multiple datasets ").create();
      case 42:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Properties").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("outputLocation", "bdvalLocation", "threads", "memory").children(new String[]{"computerType"}, new boolean[]{false}).create();
      case 43:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.RandomForest").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.Classification").alias("Random Forest", "").create();
      case 44:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.SVM").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.Classification").alias("SVM", "").create();
      case 45:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.SVMIterative").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("SVM Iterative", "").create();
      case 46:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.SVMProperties").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("trainSVM").create();
      case 47:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.SVMTuneC").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.Classification").alias("SVM Tune C", "").create();
      case 48:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Sample").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "jetbrains.mps.lang.core.structure.INamedConcept").properties("displayId").references("category").alias("sample", "A sample: must have an id and optionally has an endpoint").create();
      case 49:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.ServerComputer").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.ComputerType").alias("server", "").create();
      case 50:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.TTestGeneticAlgorithm").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("ttest-Genetic Algorithm", "").create();
      case 51:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.TTestSVMGlobal").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("ttest-SVM Global", "").create();
      case 52:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.TTestSVMIterative").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("ttest-SVM Iterative", "").create();
      case 53:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Task").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").references("endpoint").children(new String[]{"categoryReference"}, new boolean[]{true}).create();
      case 54:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.TtestProperties").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("cutoff").create();
      case 55:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.WekaScan").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("Weka Feature Selection Scan", "").create();
      case 56:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.WholeChip").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("Whole Chip", "").create();
      default:
        return StructureAspectInterpreted.getInstance().getDescriptor(conceptFqName);
    }
  }

  private static String[] stringSwitchCases_1htk8d_a0a0b = new String[]{"org.campagnelab.bdval.structure.Approach", "org.campagnelab.bdval.structure.AverageAggregation", "org.campagnelab.bdval.structure.CIDs", "org.campagnelab.bdval.structure.CategoryReference", "org.campagnelab.bdval.structure.Classification", "org.campagnelab.bdval.structure.ComputerType", "org.campagnelab.bdval.structure.CoxRegSVMGlobal", "org.campagnelab.bdval.structure.DataSet", "org.campagnelab.bdval.structure.DesktopComputer", "org.campagnelab.bdval.structure.DisplayRow", "org.campagnelab.bdval.structure.DisplayValue", "org.campagnelab.bdval.structure.Endpoint", "org.campagnelab.bdval.structure.EndpointCategory", "org.campagnelab.bdval.structure.FCP_LogitBoost", "org.campagnelab.bdval.structure.FeatureSelection", "org.campagnelab.bdval.structure.FeatureSelectionFoldFalse", "org.campagnelab.bdval.structure.FeatureSelectionFoldTrue", "org.campagnelab.bdval.structure.FeatureSelectionProperties", "org.campagnelab.bdval.structure.FoldChangeSVMIterative", "org.campagnelab.bdval.structure.FoldchangeGeneticAlgorithm", "org.campagnelab.bdval.structure.FoldchangeSVMGlobal", "org.campagnelab.bdval.structure.FullGeneticAlgorithm", "org.campagnelab.bdval.structure.GenelistGeneticAlgorithm", "org.campagnelab.bdval.structure.GenelistSVMGlobal", "org.campagnelab.bdval.structure.GenelistSVMGlobalTuneC", "org.campagnelab.bdval.structure.Input", "org.campagnelab.bdval.structure.Integer", "org.campagnelab.bdval.structure.KStar", "org.campagnelab.bdval.structure.Logistic", "org.campagnelab.bdval.structure.LogitBoost", "org.campagnelab.bdval.structure.MinMaxSVMGlobal", "org.campagnelab.bdval.structure.NaiveBayes", "org.campagnelab.bdval.structure.PCAAggregation", "org.campagnelab.bdval.structure.PathwayAggregationMethod", "org.campagnelab.bdval.structure.PathwaysBaseline", "org.campagnelab.bdval.structure.PathwaysBuildPathwayComponents", "org.campagnelab.bdval.structure.PathwaysCoxregSVMGlobal", "org.campagnelab.bdval.structure.PathwaysTTestSVMGlobal", "org.campagnelab.bdval.structure.PathwaysTuneC", "org.campagnelab.bdval.structure.PermutationSVMGlobal", "org.campagnelab.bdval.structure.Platform", "org.campagnelab.bdval.structure.Project", "org.campagnelab.bdval.structure.Properties", "org.campagnelab.bdval.structure.RandomForest", "org.campagnelab.bdval.structure.SVM", "org.campagnelab.bdval.structure.SVMIterative", "org.campagnelab.bdval.structure.SVMProperties", "org.campagnelab.bdval.structure.SVMTuneC", "org.campagnelab.bdval.structure.Sample", "org.campagnelab.bdval.structure.ServerComputer", "org.campagnelab.bdval.structure.TTestGeneticAlgorithm", "org.campagnelab.bdval.structure.TTestSVMGlobal", "org.campagnelab.bdval.structure.TTestSVMIterative", "org.campagnelab.bdval.structure.Task", "org.campagnelab.bdval.structure.TtestProperties", "org.campagnelab.bdval.structure.WekaScan", "org.campagnelab.bdval.structure.WholeChip"};
}
