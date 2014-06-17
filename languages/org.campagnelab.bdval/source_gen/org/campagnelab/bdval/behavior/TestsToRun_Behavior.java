package org.campagnelab.bdval.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;

public class TestsToRun_Behavior {
  public static void init(SNode thisNode) {
  }

  public static void call_load_290469645485060636(SNode thisNode) {
    SPropertyOperations.set(thisNode, "baseline", null);
    SPropertyOperations.set(thisNode, "baselineTuneC", null);
    SPropertyOperations.set(thisNode, "foldchangeGeneticAlgorithm", null);
    SPropertyOperations.set(thisNode, "foldchangeSvmGlobal", null);
    SPropertyOperations.set(thisNode, "foldchangeSvmIterative", null);
    SPropertyOperations.set(thisNode, "fullGeneticAlgorithm", null);
    SPropertyOperations.set(thisNode, "genelistGeneticAlgorithm", null);
    SPropertyOperations.set(thisNode, "genelistSvmGlobal", null);
    SPropertyOperations.set(thisNode, "genelistSvmGlobalTuneC", null);
    SPropertyOperations.set(thisNode, "kStar", null);
    SPropertyOperations.set(thisNode, "logistic", null);
    SPropertyOperations.set(thisNode, "logitBoost", null);
    SPropertyOperations.set(thisNode, "minMaxSvmGlobal", null);
    SPropertyOperations.set(thisNode, "naiveBayes", null);
    SPropertyOperations.set(thisNode, "pathwaysBaseline", null);
    SPropertyOperations.set(thisNode, "pathwaysBuildPathwayComponents", null);
    SPropertyOperations.set(thisNode, "pathwaysTtestSvmGlobal", null);
    SPropertyOperations.set(thisNode, "pathwaysTuneC", null);
    SPropertyOperations.set(thisNode, "randomForest", null);
    SPropertyOperations.set(thisNode, "svmIterative", null);
    SPropertyOperations.set(thisNode, "ttestGeneticAlgorithm", null);
    SPropertyOperations.set(thisNode, "ttestSvmGlobal", null);
    SPropertyOperations.set(thisNode, "ttestSvmIterative", null);
    SPropertyOperations.set(thisNode, "useFeatureSelectionFoldFalse", null);
    SPropertyOperations.set(thisNode, "useFeatureSelectionFoldTrue", null);
    SPropertyOperations.set(thisNode, "wholeChip", null);
    if (ListSequence.fromList(SLinkOperations.getTargets(thisNode, "condition", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode node) {
        return SPropertyOperations.getString(node, "name").matches("Feature Selection Fold-true");
      }
    })) {
      SPropertyOperations.set(thisNode, "useFeatureSelectionFoldTrue", "" + (true));
    }
    if (ListSequence.fromList(SLinkOperations.getTargets(thisNode, "condition", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode node) {
        return SPropertyOperations.getString(node, "name").matches("Feature Selection Fold-false");
      }
    })) {
      SPropertyOperations.set(thisNode, "useFeatureSelectionFoldFalse", "" + (true));
    }
    if (ListSequence.fromList(SLinkOperations.getTargets(thisNode, "condition", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode node) {
        return SPropertyOperations.getString(node, "name").matches("Baseline");
      }
    })) {
      SPropertyOperations.set(thisNode, "baseline", "" + (true));
    }
    if (ListSequence.fromList(SLinkOperations.getTargets(thisNode, "condition", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode node) {
        return SPropertyOperations.getString(node, "name").matches("Baseline Tune C");
      }
    })) {
      SPropertyOperations.set(thisNode, "baselineTuneC", "" + (true));
    }
    if (ListSequence.fromList(SLinkOperations.getTargets(thisNode, "condition", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode node) {
        return SPropertyOperations.getString(node, "name").matches("Naive Bayes");
      }
    })) {
      SPropertyOperations.set(thisNode, "naiveBayes", "" + (true));
    }
    if (ListSequence.fromList(SLinkOperations.getTargets(thisNode, "condition", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode node) {
        return SPropertyOperations.getString(node, "name").matches("Logit Boost");
      }
    })) {
      SPropertyOperations.set(thisNode, "logitBoost", "" + (true));
    }
    if (ListSequence.fromList(SLinkOperations.getTargets(thisNode, "condition", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode node) {
        return SPropertyOperations.getString(node, "name").matches("Logistic");
      }
    })) {
      SPropertyOperations.set(thisNode, "logistic", "" + (true));
    }
    if (ListSequence.fromList(SLinkOperations.getTargets(thisNode, "condition", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode node) {
        return SPropertyOperations.getString(node, "name").matches("Random Forest");
      }
    })) {
      SPropertyOperations.set(thisNode, "randomForest", "" + (true));
    }
    if (ListSequence.fromList(SLinkOperations.getTargets(thisNode, "condition", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode node) {
        return SPropertyOperations.getString(node, "name").matches("K Star");
      }
    })) {
      SPropertyOperations.set(thisNode, "kStar", "" + (true));
    }
    if (ListSequence.fromList(SLinkOperations.getTargets(thisNode, "condition", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode node) {
        return SPropertyOperations.getString(node, "name").matches("Whole Chip");
      }
    })) {
      SPropertyOperations.set(thisNode, "wholeChip", "" + (true));
    }
    if (ListSequence.fromList(SLinkOperations.getTargets(thisNode, "condition", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode node) {
        return SPropertyOperations.getString(node, "name").matches("Foldchange Genetic Algorithm");
      }
    })) {
      SPropertyOperations.set(thisNode, "foldchangeGeneticAlgorithm", "" + (true));
    }
    if (ListSequence.fromList(SLinkOperations.getTargets(thisNode, "condition", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode node) {
        return SPropertyOperations.getString(node, "name").matches("Foldchange SVM Global");
      }
    })) {
      SPropertyOperations.set(thisNode, "foldchangeSvmGlobal", "" + (true));
    }
    if (ListSequence.fromList(SLinkOperations.getTargets(thisNode, "condition", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode node) {
        return SPropertyOperations.getString(node, "name").matches("Foldchange SVM Iterative");
      }
    })) {
      SPropertyOperations.set(thisNode, "foldchangeSvmIterative", "" + (true));
    }
    if (ListSequence.fromList(SLinkOperations.getTargets(thisNode, "condition", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode node) {
        return SPropertyOperations.getString(node, "name").matches("Full Genetic Algorithm");
      }
    })) {
      SPropertyOperations.set(thisNode, "fullGeneticAlgorithm", "" + (true));
    }
    if (ListSequence.fromList(SLinkOperations.getTargets(thisNode, "condition", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode node) {
        return SPropertyOperations.getString(node, "name").matches("Genelist Genetic Algorithm");
      }
    })) {
      SPropertyOperations.set(thisNode, "genelistGeneticAlgorithm", "" + (true));
    }
    if (ListSequence.fromList(SLinkOperations.getTargets(thisNode, "condition", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode node) {
        return SPropertyOperations.getString(node, "name").matches("Genelist SVM Global");
      }
    })) {
      SPropertyOperations.set(thisNode, "genelistSvmGlobal", "" + (true));
    }
    if (ListSequence.fromList(SLinkOperations.getTargets(thisNode, "condition", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode node) {
        return SPropertyOperations.getString(node, "name").matches("Genelist SVM Global Tune C");
      }
    })) {
      SPropertyOperations.set(thisNode, "genelistSvmGlobalTuneC", "" + (true));
    }
    if (ListSequence.fromList(SLinkOperations.getTargets(thisNode, "condition", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode node) {
        return SPropertyOperations.getString(node, "name").matches("Min/Max SVM Global");
      }
    })) {
      SPropertyOperations.set(thisNode, "minMaxSvmGlobal", "" + (true));
    }
    if (ListSequence.fromList(SLinkOperations.getTargets(thisNode, "condition", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode node) {
        return SPropertyOperations.getString(node, "name").matches("Pathways Build Pathway Components");
      }
    })) {
      SPropertyOperations.set(thisNode, "pathwaysBuildPathwayComponents", "" + (true));
    }
    if (ListSequence.fromList(SLinkOperations.getTargets(thisNode, "condition", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode node) {
        return SPropertyOperations.getString(node, "name").matches("Pathways T-test SVM Global");
      }
    })) {
      SPropertyOperations.set(thisNode, "pathwaysTtestSvmGlobal", "" + (true));
    }
    if (ListSequence.fromList(SLinkOperations.getTargets(thisNode, "condition", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode node) {
        return SPropertyOperations.getString(node, "name").matches("Pathways Tune C");
      }
    })) {
      SPropertyOperations.set(thisNode, "pathwaysTuneC", "" + (true));
    }
    if (ListSequence.fromList(SLinkOperations.getTargets(thisNode, "condition", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode node) {
        return SPropertyOperations.getString(node, "name").matches("Pathways Baseline");
      }
    })) {
      SPropertyOperations.set(thisNode, "pathwaysBaseline", "" + (true));
    }
    if (ListSequence.fromList(SLinkOperations.getTargets(thisNode, "condition", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode node) {
        return SPropertyOperations.getString(node, "name").matches("SVM Iterative");
      }
    })) {
      SPropertyOperations.set(thisNode, "svmIterative", "" + (true));
    }
    if (ListSequence.fromList(SLinkOperations.getTargets(thisNode, "condition", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode node) {
        return SPropertyOperations.getString(node, "name").matches("T-test Genetic Algorithm");
      }
    })) {
      SPropertyOperations.set(thisNode, "ttestGeneticAlgorithm", "" + (true));
    }
    if (ListSequence.fromList(SLinkOperations.getTargets(thisNode, "condition", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode node) {
        return SPropertyOperations.getString(node, "name").matches("T-test SVM Global");
      }
    })) {
      SPropertyOperations.set(thisNode, "ttestSvmIterative", "" + (true));
    }
  }
}
