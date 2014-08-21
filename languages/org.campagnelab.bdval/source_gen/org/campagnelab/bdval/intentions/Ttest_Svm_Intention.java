package org.campagnelab.bdval.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.IntentionFactory;
import java.util.Collection;
import jetbrains.mps.intentions.IntentionExecutable;
import jetbrains.mps.intentions.IntentionType;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;
import java.util.Collections;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.intentions.IntentionDescriptor;

public class Ttest_Svm_Intention implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;

  public Ttest_Svm_Intention() {
  }

  public String getConcept() {
    return "org.campagnelab.bdval.structure.Approach";
  }

  public String getPresentation() {
    return "Ttest-Svm";
  }

  public String getPersistentStateKey() {
    return "org.campagnelab.bdval.intentions.Ttest_Svm_Intention";
  }

  public String getLanguageFqName() {
    return "org.campagnelab.bdval";
  }

  public IntentionType getType() {
    return IntentionType.NORMAL;
  }

  public boolean isAvailableInChildNodes() {
    return true;
  }

  public boolean isApplicable(final SNode node, final EditorContext editorContext) {
    return true;
  }

  public SNodeReference getIntentionNodeReference() {
    return new SNodePointer("r:f3ea1e25-aab8-445d-9fb9-090b3b3258bf(org.campagnelab.bdval.intentions)", "2063368849529562002");
  }

  public boolean isSurroundWith() {
    return false;
  }

  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new Ttest_Svm_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }

  public class IntentionImplementation implements IntentionExecutable {
    public IntentionImplementation() {
    }

    public String getDescription(final SNode node, final EditorContext editorContext) {
      return "Sample Approach: T-Test, SVM";
    }

    public void execute(final SNode node, final EditorContext editorContext) {
      SPropertyOperations.set(node, "externalRepeats", null);
      SPropertyOperations.set(node, "externalFolds", null);
      ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(node, "featureSelectionInfo", true), "numberOfFeatures", true)).clear();
      ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(node, "featureSelectionInfo", true), "featureSelectionFold", true)).clear();
      ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(node, "featureSelectionInfo", true), "featureSelectionCombo", true)).clear();
      ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(node, "classificationInfo", true), "classification", true)).clear();

      SPropertyOperations.set(node, "externalRepeats", "" + (5));
      SPropertyOperations.set(node, "externalFolds", "" + (5));
      SPropertyOperations.set(SLinkOperations.addNewChild(SLinkOperations.getTarget(node, "featureSelectionInfo", true), "numberOfFeatures", "org.campagnelab.bdval.structure.Integer"), "value", "" + (20));
      SPropertyOperations.set(SLinkOperations.addNewChild(SLinkOperations.getTarget(node, "featureSelectionInfo", true), "numberOfFeatures", "org.campagnelab.bdval.structure.Integer"), "value", "" + (50));
      SLinkOperations.addNewChild(SLinkOperations.getTarget(node, "featureSelectionInfo", true), "featureSelectionFold", "org.campagnelab.bdval.structure.FeatureSelectionFoldTrue");
      SLinkOperations.addNewChild(SLinkOperations.getTarget(node, "featureSelectionInfo", true), "featureSelectionFold", "org.campagnelab.bdval.structure.FeatureSelectionFoldFalse");
      SLinkOperations.setNewChild(SLinkOperations.addNewChild(SLinkOperations.getTarget(node, "featureSelectionInfo", true), "featureSelectionCombo", "org.campagnelab.bdval.structure.FeatureSelectionCombo"), "featureSelection1", "org.campagnelab.bdval.structure.Ttest");
      SLinkOperations.addNewChild(SLinkOperations.getTarget(node, "classificationInfo", true), "classification", "org.campagnelab.bdval.structure.SVM");
    }

    public IntentionDescriptor getDescriptor() {
      return Ttest_Svm_Intention.this;
    }
  }
}
