package org.campagnelab.bdval.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.IntentionFactory;
import java.util.Collection;
import jetbrains.mps.intentions.IntentionExecutable;
import jetbrains.mps.intentions.IntentionType;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;
import java.util.Collections;
import org.campagnelab.bdval.behavior.DataSet_Behavior;
import jetbrains.mps.intentions.IntentionDescriptor;

public class GenerateFiles_Intention implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;

  public GenerateFiles_Intention() {
  }

  public String getConcept() {
    return "org.campagnelab.bdval.structure.DataSet";
  }

  public String getPresentation() {
    return "GenerateFiles";
  }

  public String getPersistentStateKey() {
    return "org.campagnelab.bdval.intentions.GenerateFiles_Intention";
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
    return (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(node, "platform", true), "platformFileName"))) && (ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(node, "input", true), "sampleId", true)).isNotEmpty()) && (ListSequence.fromList(SLinkOperations.getTargets(node, "endpoint", true)).isNotEmpty()) && (ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(node, "input", true), "sampleId", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode sampleId) {
        return isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(sampleId, "endpoint", true), "name"));
      }
    })) && (isNotEmptyString(SPropertyOperations.getString(SNodeOperations.cast(SNodeOperations.getParent(node), "org.campagnelab.bdval.structure.Project"), "name")));
  }

  public SNodeReference getIntentionNodeReference() {
    return new SNodePointer("r:f3ea1e25-aab8-445d-9fb9-090b3b3258bf(org.campagnelab.bdval.intentions)", "6032947574604642068");
  }

  public boolean isSurroundWith() {
    return false;
  }

  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new GenerateFiles_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }

  public class IntentionImplementation implements IntentionExecutable {
    public IntentionImplementation() {
    }

    public String getDescription(final SNode node, final EditorContext editorContext) {
      return "Generate BDVal Files";
    }

    public void execute(final SNode node, final EditorContext editorContext) {
      // <node> 
      DataSet_Behavior.call_generateFiles_6032947574604950587(node);
    }

    public IntentionDescriptor getDescriptor() {
      return GenerateFiles_Intention.this;
    }
  }

  private static boolean isNotEmptyString(String str) {
    return str != null && str.length() > 0;
  }
}