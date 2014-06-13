package org.campagnelab.bdval.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.IntentionFactory;
import java.util.Collection;
import jetbrains.mps.intentions.IntentionExecutable;
import jetbrains.mps.intentions.IntentionType;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;
import java.util.Collections;
import org.campagnelab.bdval.behavior.CIDs_Behavior;
import jetbrains.mps.intentions.IntentionDescriptor;

public class LoadCIDs_Intention implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;

  public LoadCIDs_Intention() {
  }

  public String getConcept() {
    return "org.campagnelab.bdval.structure.CIDs";
  }

  public String getPresentation() {
    return "LoadCIDs";
  }

  public String getPersistentStateKey() {
    return "org.campagnelab.bdval.intentions.LoadCIDs_Intention";
  }

  public String getLanguageFqName() {
    return "org.campagnelab.bdval";
  }

  public IntentionType getType() {
    return IntentionType.NORMAL;
  }

  public boolean isAvailableInChildNodes() {
    return false;
  }

  public boolean isApplicable(final SNode node, final EditorContext editorContext) {
    if (!(isApplicableToNode(node, editorContext))) {
      return false;
    }
    return true;
  }

  private boolean isApplicableToNode(final SNode node, final EditorContext editorContext) {
    return ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(SNodeOperations.cast(SNodeOperations.getParent(node), "org.campagnelab.bdval.structure.DataSet"), "input", true), "sample", true)).isNotEmpty() && isNotEmptyString(SPropertyOperations.getString(node, "fileName"));
  }

  public SNodeReference getIntentionNodeReference() {
    return new SNodePointer("r:f3ea1e25-aab8-445d-9fb9-090b3b3258bf(org.campagnelab.bdval.intentions)", "4345048909866543029");
  }

  public boolean isSurroundWith() {
    return false;
  }

  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new LoadCIDs_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }

  public class IntentionImplementation implements IntentionExecutable {
    public IntentionImplementation() {
    }

    public String getDescription(final SNode node, final EditorContext editorContext) {
      return "Load CIDs File";
    }

    public void execute(final SNode node, final EditorContext editorContext) {
      CIDs_Behavior.call_load_4345048909863010217(node);

    }

    public IntentionDescriptor getDescriptor() {
      return LoadCIDs_Intention.this;
    }
  }

  private static boolean isNotEmptyString(String str) {
    return str != null && str.length() > 0;
  }
}
