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
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.AUCPerformance").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.GAPerformance").alias("AUC", "").create();
      case 1:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Approach").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("enableFlooring", "evaluateStatistics", "externalRepeats", "externalFolds").children(new String[]{"featureSelectionInfo", "classificationInfo", "modelToGenerate"}, new boolean[]{false, false, true}).create();
      case 2:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.AverageAggregation").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.PathwayAggregationMethod").alias("average", "").create();
      case 3:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.CIDs").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("fileName").children(new String[]{"mismatches"}, new boolean[]{true}).alias("cids", "File containing phenotypes and Ids in columns").create();
      case 4:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.CategoryReference").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").references("endpointCategory").create();
      case 5:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Classification").interface_().parents("jetbrains.mps.lang.core.structure.INamedConcept").properties("classname", "wekaClass", "parameters", "otherOption", "addoption").create();
      case 6:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.ClassificationCombo").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").children(new String[]{"classification", "classiciationOption"}, new boolean[]{false, false}).create();
      case 7:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.ClassificationInfo").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").children(new String[]{"classificationCombo", "classificationProperties"}, new boolean[]{true, false}).create();
      case 8:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.ClassificationOption").interface_().parents("jetbrains.mps.lang.core.structure.INamedConcept").properties("extraClassifierParameters").create();
      case 9:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.ClassificationProperties").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").children(new String[]{"svmProperties", "tuneCProperties"}, new boolean[]{false, false}).create();
      case 10:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.ComputerType").interface_().parents("jetbrains.mps.lang.core.structure.INamedConcept").create();
      case 11:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.CoxReg").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("Cox Regression", "").create();
      case 12:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.CoxRegProperties").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("alpha").create();
      case 13:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.DataSet").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "jetbrains.mps.lang.core.structure.INamedConcept").properties("normalTarget", "testSet", "thresholdFloor").children(new String[]{"platform", "input", "task", "cids", "otherFiles"}, new boolean[]{false, false, false, false, false}).alias("dataset", "A set containing a platform file, input file, and the conditions for investigation").create();
      case 14:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.DesktopComputer").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.ComputerType").alias("Desktop", "").create();
      case 15:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.DisplayRow").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").children(new String[]{"displayValue"}, new boolean[]{true}).alias("displayRow", "Stores the values of a row of the input to be displayed").create();
      case 16:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.DisplayValue").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("value").create();
      case 17:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Endpoint").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "jetbrains.mps.lang.core.structure.INamedConcept").children(new String[]{"categories"}, new boolean[]{true}).alias("endpoint", "A characteristic of interest under investigation ex. diseased").create();
      case 18:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.EndpointCategory").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "jetbrains.mps.lang.core.structure.INamedConcept").alias("endpointCategory", "The condition of the sample for a specific endpoint").create();
      case 19:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.FeatureSelection").interface_().parents("jetbrains.mps.lang.core.structure.INamedConcept").properties("addoptions", "sequenceCommand", "sequenceInfo", "sequenceNumFeatures", "otherOptions").create();
      case 20:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.FeatureSelectionCombo").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").children(new String[]{"featureSelection1", "featureSelection2", "featureSelectionOption"}, new boolean[]{false, false, false}).create();
      case 21:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.FeatureSelectionFold").interface_().parents("jetbrains.mps.lang.core.structure.INamedConcept").properties("value").create();
      case 22:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.FeatureSelectionFoldFalse").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelectionFold").alias("false", "").create();
      case 23:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.FeatureSelectionFoldTrue").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelectionFold").alias("true", "").create();
      case 24:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.FeatureSelectionInfo").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("maxIntermediateFeatures").children(new String[]{"numberOfFeatures", "featureSelectionFold", "featureSelectionCombo", "featureSelectionProperties"}, new boolean[]{true, true, true, false}).create();
      case 25:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.FeatureSelectionOption").interface_().parents("jetbrains.mps.lang.core.structure.INamedConcept").properties("def", "addoptions", "otherOptions", "extraClassifierParameters").create();
      case 26:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.FeatureSelectionProperties").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").children(new String[]{"ttest", "svmIterative", "minMax", "foldchange", "geneticAlgorithm", "pathways", "permutation", "coxReg"}, new boolean[]{false, false, false, false, false, false, false, false}).create();
      case 27:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Float").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("value").create();
      case 28:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.FoldChange").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("Fold Change", "").create();
      case 29:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.FoldchangeProperties").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("phi").create();
      case 30:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.GAPerformance").interface_().parents("jetbrains.mps.lang.core.structure.INamedConcept").create();
      case 31:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Genelist").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelectionOption").alias("Genelist", "").create();
      case 32:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.GeneticAlgorithm").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("Genetic Algorithm", "").create();
      case 33:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.GeneticAlgorithmProperties").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("wrapperPopulationSize", "wrapperNumberIterations", "internalCVRepeats", "internalCVFolds", "ratio").children(new String[]{"performance"}, new boolean[]{false}).create();
      case 34:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Input").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("fileName", "numberOfSamples", "numberOfFeatures").children(new String[]{"sample", "displayRow"}, new boolean[]{true, true}).alias("input", "File containing input (table of ID's and genes)").create();
      case 35:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Integer").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("value").create();
      case 36:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.KStar").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.Classification").alias("K Star", "").create();
      case 37:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Logistic").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.Classification").alias("Logistic", "").create();
      case 38:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.LogitBoost").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.Classification").alias("Logistic Boost", "").create();
      case 39:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.MCCPerformance").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.GAPerformance").alias("MCC", "").create();
      case 40:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.MinMax").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("Min/Max", "").create();
      case 41:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.MinMaxProperties").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("observations").create();
      case 42:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.ModelToGenerate").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("featureSelectionFold", "sequenceFile", "allClassifierParameters", "otherOptions").create();
      case 43:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.NaiveBayes").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.Classification").alias("Naive Bayes", "").create();
      case 44:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.OtherFiles").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("pathways", "geneToProbes", "survival").create();
      case 45:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.PCAAggregation").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.PathwayAggregationMethod").alias("PCA", "").create();
      case 46:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Pathway").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelectionOption").alias("Pathway", "").create();
      case 47:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.PathwayAggregationMethod").interface_().parents("jetbrains.mps.lang.core.structure.INamedConcept").create();
      case 48:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.PathwayProperties").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").children(new String[]{"aggregationMethod"}, new boolean[]{false}).create();
      case 49:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Permutation").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("Permutation", "").create();
      case 50:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.PermutationProperties").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("alpha").create();
      case 51:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Platform").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("fileName").alias("platform", "File containing platform").create();
      case 52:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Project").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "jetbrains.mps.lang.core.structure.INamedConcept").properties("terminalCommand", "percentComplete", "terminalCommand2").children(new String[]{"properties", "approach", "endpoint", "dataset"}, new boolean[]{false, false, true, true}).alias("project", "An entire project which can contain multiple datasets ").create();
      case 53:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Properties").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("outputLocation", "bdvalLocation", "antLocation", "threads", "memory", "tagDescription").children(new String[]{"computerType"}, new boolean[]{false}).create();
      case 54:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.RandomForest").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.Classification").alias("Random Forest", "").create();
      case 55:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.SVM").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.Classification").alias("SVM", "").create();
      case 56:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.SVMGlobal").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("SVM Global", "").create();
      case 57:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.SVMIterative").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("SVM Iterative", "").create();
      case 58:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.SVMIterativeProperties").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("r").create();
      case 59:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.SVMProperties").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("probabilisticSVM").create();
      case 60:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Sample").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "jetbrains.mps.lang.core.structure.INamedConcept").properties("displayId").references("category").alias("sample", "A sample: must have an id and optionally has an endpoint").create();
      case 61:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.ServerComputer").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.ComputerType").alias("Server", "").create();
      case 62:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.TTestProperties").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("alpha").create();
      case 63:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Task").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").references("endpoint").children(new String[]{"categoryReference"}, new boolean[]{true}).create();
      case 64:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.Ttest").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("T-Test", "").create();
      case 65:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.TuneC").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.ClassificationOption").alias("Tune C", "").create();
      case 66:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.TuneCProperties").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").children(new String[]{"cValue"}, new boolean[]{true}).create();
      case 67:
        return new ConceptDescriptorBuilder("org.campagnelab.bdval.structure.WholeChip").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "org.campagnelab.bdval.structure.FeatureSelection").alias("Whole Chip", "").create();
      default:
        return StructureAspectInterpreted.getInstance().getDescriptor(conceptFqName);
    }
  }

  private static String[] stringSwitchCases_1htk8d_a0a0b = new String[]{"org.campagnelab.bdval.structure.AUCPerformance", "org.campagnelab.bdval.structure.Approach", "org.campagnelab.bdval.structure.AverageAggregation", "org.campagnelab.bdval.structure.CIDs", "org.campagnelab.bdval.structure.CategoryReference", "org.campagnelab.bdval.structure.Classification", "org.campagnelab.bdval.structure.ClassificationCombo", "org.campagnelab.bdval.structure.ClassificationInfo", "org.campagnelab.bdval.structure.ClassificationOption", "org.campagnelab.bdval.structure.ClassificationProperties", "org.campagnelab.bdval.structure.ComputerType", "org.campagnelab.bdval.structure.CoxReg", "org.campagnelab.bdval.structure.CoxRegProperties", "org.campagnelab.bdval.structure.DataSet", "org.campagnelab.bdval.structure.DesktopComputer", "org.campagnelab.bdval.structure.DisplayRow", "org.campagnelab.bdval.structure.DisplayValue", "org.campagnelab.bdval.structure.Endpoint", "org.campagnelab.bdval.structure.EndpointCategory", "org.campagnelab.bdval.structure.FeatureSelection", "org.campagnelab.bdval.structure.FeatureSelectionCombo", "org.campagnelab.bdval.structure.FeatureSelectionFold", "org.campagnelab.bdval.structure.FeatureSelectionFoldFalse", "org.campagnelab.bdval.structure.FeatureSelectionFoldTrue", "org.campagnelab.bdval.structure.FeatureSelectionInfo", "org.campagnelab.bdval.structure.FeatureSelectionOption", "org.campagnelab.bdval.structure.FeatureSelectionProperties", "org.campagnelab.bdval.structure.Float", "org.campagnelab.bdval.structure.FoldChange", "org.campagnelab.bdval.structure.FoldchangeProperties", "org.campagnelab.bdval.structure.GAPerformance", "org.campagnelab.bdval.structure.Genelist", "org.campagnelab.bdval.structure.GeneticAlgorithm", "org.campagnelab.bdval.structure.GeneticAlgorithmProperties", "org.campagnelab.bdval.structure.Input", "org.campagnelab.bdval.structure.Integer", "org.campagnelab.bdval.structure.KStar", "org.campagnelab.bdval.structure.Logistic", "org.campagnelab.bdval.structure.LogitBoost", "org.campagnelab.bdval.structure.MCCPerformance", "org.campagnelab.bdval.structure.MinMax", "org.campagnelab.bdval.structure.MinMaxProperties", "org.campagnelab.bdval.structure.ModelToGenerate", "org.campagnelab.bdval.structure.NaiveBayes", "org.campagnelab.bdval.structure.OtherFiles", "org.campagnelab.bdval.structure.PCAAggregation", "org.campagnelab.bdval.structure.Pathway", "org.campagnelab.bdval.structure.PathwayAggregationMethod", "org.campagnelab.bdval.structure.PathwayProperties", "org.campagnelab.bdval.structure.Permutation", "org.campagnelab.bdval.structure.PermutationProperties", "org.campagnelab.bdval.structure.Platform", "org.campagnelab.bdval.structure.Project", "org.campagnelab.bdval.structure.Properties", "org.campagnelab.bdval.structure.RandomForest", "org.campagnelab.bdval.structure.SVM", "org.campagnelab.bdval.structure.SVMGlobal", "org.campagnelab.bdval.structure.SVMIterative", "org.campagnelab.bdval.structure.SVMIterativeProperties", "org.campagnelab.bdval.structure.SVMProperties", "org.campagnelab.bdval.structure.Sample", "org.campagnelab.bdval.structure.ServerComputer", "org.campagnelab.bdval.structure.TTestProperties", "org.campagnelab.bdval.structure.Task", "org.campagnelab.bdval.structure.Ttest", "org.campagnelab.bdval.structure.TuneC", "org.campagnelab.bdval.structure.TuneCProperties", "org.campagnelab.bdval.structure.WholeChip"};
}
