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
import java.io.File;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;
import java.util.Collections;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.intentions.IntentionDescriptor;

public class ProstateExample_Intention implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;

  public ProstateExample_Intention() {
  }

  public String getConcept() {
    return "org.campagnelab.bdval.structure.Project";
  }

  public String getPresentation() {
    return "ProstateExample";
  }

  public String getPersistentStateKey() {
    return "org.campagnelab.bdval.intentions.ProstateExample_Intention";
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
    return isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(node, "properties", true), "bdvalDirectory", true), "directoryLocation")) && new File(SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(node, "properties", true), "bdvalDirectory", true), "directoryLocation")).isDirectory();
  }

  public SNodeReference getIntentionNodeReference() {
    return new SNodePointer("r:f3ea1e25-aab8-445d-9fb9-090b3b3258bf(org.campagnelab.bdval.intentions)", "4971583211590069774");
  }

  public boolean isSurroundWith() {
    return false;
  }

  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new ProstateExample_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }

  public class IntentionImplementation implements IntentionExecutable {
    public IntentionImplementation() {
    }

    public String getDescription(final SNode node, final EditorContext editorContext) {
      return "Set Prostate Example File Locations";
    }

    public void execute(final SNode node, final EditorContext editorContext) {
      String zipLocation = SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(node, "properties", true), "bdvalDirectory", true), "directoryLocation");
      String separator = File.separator;
      SPropertyOperations.set(SLinkOperations.getTarget(SLinkOperations.getTarget(node, "platform", true), "file", true), "fileLocation", zipLocation + "/data/Prostate/GSE8402/platforms/GPL5474_family.soft.gz");
      SPropertyOperations.set(SLinkOperations.getTarget(SLinkOperations.getTarget(ListSequence.fromList(SLinkOperations.getTargets(node, "dataset", true)).first(), "input", true), "file", true), "fileLocation", zipLocation + "/data/Prostate/GSE8402/norm-data/GSE8402_family.soft.gz");
      SPropertyOperations.set(SLinkOperations.getTarget(SLinkOperations.getTarget(ListSequence.fromList(SLinkOperations.getTargets(node, "dataset", true)).first(), "cids", true), "file", true), "fileLocation", zipLocation + "/data/Prostate/GSE8402/cids/GSE8402-FusionYesNo-TrainingSplit.cids");
    }

    public IntentionDescriptor getDescriptor() {
      return ProstateExample_Intention.this;
    }
  }

  private static boolean isNotEmptyString(String str) {
    return str != null && str.length() > 0;
  }
}
