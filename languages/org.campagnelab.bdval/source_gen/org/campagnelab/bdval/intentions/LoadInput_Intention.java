package org.campagnelab.bdval.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.IntentionFactory;
import java.util.Collection;
import jetbrains.mps.intentions.IntentionExecutable;
import jetbrains.mps.intentions.IntentionType;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;
import java.util.Collections;
import org.campagnelab.bdval.behavior.Input_Behavior;
import jetbrains.mps.intentions.IntentionDescriptor;

public class LoadInput_Intention implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;

  public LoadInput_Intention() {
  }

  public String getConcept() {
    return "org.campagnelab.bdval.structure.Input";
  }

  public String getPresentation() {
    return "LoadInput";
  }

  public String getPersistentStateKey() {
    return "org.campagnelab.bdval.intentions.LoadInput_Intention";
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
    return isNotEmptyString(SPropertyOperations.getString(node, "inputFileName"));
  }

  public SNodeReference getIntentionNodeReference() {
    return new SNodePointer("r:f3ea1e25-aab8-445d-9fb9-090b3b3258bf(org.campagnelab.bdval.intentions)", "4345048909865090959");
  }

  public boolean isSurroundWith() {
    return false;
  }

  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new LoadInput_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }

  public class IntentionImplementation implements IntentionExecutable {
    public IntentionImplementation() {
    }

    public String getDescription(final SNode node, final EditorContext editorContext) {
      return "Load Input File";
    }

    public void execute(final SNode node, final EditorContext editorContext) {
      Input_Behavior.call_load_7052920786130144602(node);
    }

    public IntentionDescriptor getDescriptor() {
      return LoadInput_Intention.this;
    }
  }

  private static boolean isNotEmptyString(String str) {
    return str != null && str.length() > 0;
  }
}
