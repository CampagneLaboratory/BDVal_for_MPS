package org.campagnelab.bdval.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cellProviders.CellProviderWithRole;
import jetbrains.mps.lang.editor.cellProviders.RefNodeCellProvider;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.nodeEditor.EditorManager;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;

public class FeatureSelectionParameters_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_bmq4bq_a(editorContext, node);
  }

  private EditorCell createCollection_bmq4bq_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_bmq4bq_a");
    editorCell.setBig(true);
    if (renderingCondition_bmq4bq_a0a(node, editorContext)) {
      editorCell.addEditorCell(this.createRefNode_bmq4bq_a0(editorContext, node));
    }
    if (renderingCondition_bmq4bq_a1a(node, editorContext)) {
      editorCell.addEditorCell(this.createRefNode_bmq4bq_b0(editorContext, node));
    }
    if (renderingCondition_bmq4bq_a2a(node, editorContext)) {
      editorCell.addEditorCell(this.createRefNode_bmq4bq_c0(editorContext, node));
    }
    if (renderingCondition_bmq4bq_a3a(node, editorContext)) {
      editorCell.addEditorCell(this.createRefNode_bmq4bq_d0(editorContext, node));
    }
    if (renderingCondition_bmq4bq_a4a(node, editorContext)) {
      editorCell.addEditorCell(this.createRefNode_bmq4bq_e0(editorContext, node));
    }
    if (renderingCondition_bmq4bq_a5a(node, editorContext)) {
      editorCell.addEditorCell(this.createRefNode_bmq4bq_f0(editorContext, node));
    }
    if (renderingCondition_bmq4bq_a6a(node, editorContext)) {
      editorCell.addEditorCell(this.createRefNode_bmq4bq_g0(editorContext, node));
    }
    if (renderingCondition_bmq4bq_a7a(node, editorContext)) {
      editorCell.addEditorCell(this.createRefNode_bmq4bq_h0(editorContext, node));
    }
    if (renderingCondition_bmq4bq_a8a(node, editorContext)) {
      editorCell.addEditorCell(this.createRefNode_bmq4bq_i0(editorContext, node));
    }
    return editorCell;
  }

  private EditorCell createRefNode_bmq4bq_a0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefNodeCellProvider(node, editorContext);
    provider.setRole("svmIterative");
    provider.setNoTargetText("press enter to expand");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    if (editorCell.getRole() == null) {
      editorCell.setRole("svmIterative");
    }
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, true);
    editorCell.getStyle().putAll(style);
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      IOperationContext opContext = editorContext.getOperationContext();
      EditorManager manager = EditorManager.getInstanceFromContext(opContext);
      return manager.createNodeRoleAttributeCell(editorContext, attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }

  private static boolean renderingCondition_bmq4bq_a0a(SNode node, EditorContext editorContext) {
    return ListSequence.fromList(SLinkOperations.getTargets(SNodeOperations.cast(SNodeOperations.getParent(node), "org.campagnelab.bdval.structure.FeatureSelectionInfo"), "strategy", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode combo) {
        return (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(combo, "step1", true), "name")) && SNodeOperations.isInstanceOf(SLinkOperations.getTarget(combo, "step1", true), "org.campagnelab.bdval.structure.SVMIterative")) || (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(combo, "step2", true), "name")) && SNodeOperations.isInstanceOf(SLinkOperations.getTarget(combo, "step2", true), "org.campagnelab.bdval.structure.SVMIterative"));
      }
    });
  }

  private EditorCell createRefNode_bmq4bq_b0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefNodeCellProvider(node, editorContext);
    provider.setRole("ttest");
    provider.setNoTargetText("press enter to expand");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    if (editorCell.getRole() == null) {
      editorCell.setRole("ttest");
    }
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, true);
    editorCell.getStyle().putAll(style);
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      IOperationContext opContext = editorContext.getOperationContext();
      EditorManager manager = EditorManager.getInstanceFromContext(opContext);
      return manager.createNodeRoleAttributeCell(editorContext, attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }

  private static boolean renderingCondition_bmq4bq_a1a(SNode node, EditorContext editorContext) {
    return ListSequence.fromList(SLinkOperations.getTargets(SNodeOperations.cast(SNodeOperations.getParent(node), "org.campagnelab.bdval.structure.FeatureSelectionInfo"), "strategy", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode combo) {
        return (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(combo, "step1", true), "name")) && SNodeOperations.isInstanceOf(SLinkOperations.getTarget(combo, "step1", true), "org.campagnelab.bdval.structure.Ttest")) || (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(combo, "step2", true), "name")) && SNodeOperations.isInstanceOf(SLinkOperations.getTarget(combo, "step2", true), "org.campagnelab.bdval.structure.Ttest"));
      }
    });
  }

  private EditorCell createRefNode_bmq4bq_c0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefNodeCellProvider(node, editorContext);
    provider.setRole("geneticAlgorithm");
    provider.setNoTargetText("press enter to expand");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    if (editorCell.getRole() == null) {
      editorCell.setRole("geneticAlgorithm");
    }
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, true);
    editorCell.getStyle().putAll(style);
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      IOperationContext opContext = editorContext.getOperationContext();
      EditorManager manager = EditorManager.getInstanceFromContext(opContext);
      return manager.createNodeRoleAttributeCell(editorContext, attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }

  private static boolean renderingCondition_bmq4bq_a2a(SNode node, EditorContext editorContext) {
    return ListSequence.fromList(SLinkOperations.getTargets(SNodeOperations.cast(SNodeOperations.getParent(node), "org.campagnelab.bdval.structure.FeatureSelectionInfo"), "strategy", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode combo) {
        return (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(combo, "step1", true), "name")) && SNodeOperations.isInstanceOf(SLinkOperations.getTarget(combo, "step1", true), "org.campagnelab.bdval.structure.GeneticAlgorithm")) || (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(combo, "step2", true), "name")) && SNodeOperations.isInstanceOf(SLinkOperations.getTarget(combo, "step2", true), "org.campagnelab.bdval.structure.GeneticAlgorithm"));
      }
    });
  }

  private EditorCell createRefNode_bmq4bq_d0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefNodeCellProvider(node, editorContext);
    provider.setRole("foldchange");
    provider.setNoTargetText("press enter to expand");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    if (editorCell.getRole() == null) {
      editorCell.setRole("foldchange");
    }
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, true);
    editorCell.getStyle().putAll(style);
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      IOperationContext opContext = editorContext.getOperationContext();
      EditorManager manager = EditorManager.getInstanceFromContext(opContext);
      return manager.createNodeRoleAttributeCell(editorContext, attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }

  private static boolean renderingCondition_bmq4bq_a3a(SNode node, EditorContext editorContext) {
    return ListSequence.fromList(SLinkOperations.getTargets(SNodeOperations.cast(SNodeOperations.getParent(node), "org.campagnelab.bdval.structure.FeatureSelectionInfo"), "strategy", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode combo) {
        return (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(combo, "step1", true), "name")) && SNodeOperations.isInstanceOf(SLinkOperations.getTarget(combo, "step1", true), "org.campagnelab.bdval.structure.FoldChange")) || (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(combo, "step2", true), "name")) && SNodeOperations.isInstanceOf(SLinkOperations.getTarget(combo, "step2", true), "org.campagnelab.bdval.structure.FoldChange"));
      }
    });
  }

  private EditorCell createRefNode_bmq4bq_e0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefNodeCellProvider(node, editorContext);
    provider.setRole("permutation");
    provider.setNoTargetText("press enter to expand");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    if (editorCell.getRole() == null) {
      editorCell.setRole("permutation");
    }
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, true);
    editorCell.getStyle().putAll(style);
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      IOperationContext opContext = editorContext.getOperationContext();
      EditorManager manager = EditorManager.getInstanceFromContext(opContext);
      return manager.createNodeRoleAttributeCell(editorContext, attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }

  private static boolean renderingCondition_bmq4bq_a4a(SNode node, EditorContext editorContext) {
    return ListSequence.fromList(SLinkOperations.getTargets(SNodeOperations.cast(SNodeOperations.getParent(node), "org.campagnelab.bdval.structure.FeatureSelectionInfo"), "strategy", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode combo) {
        return (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(combo, "step1", true), "name")) && SNodeOperations.isInstanceOf(SLinkOperations.getTarget(combo, "step1", true), "org.campagnelab.bdval.structure.Permutation")) || (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(combo, "step2", true), "name")) && SNodeOperations.isInstanceOf(SLinkOperations.getTarget(combo, "step2", true), "org.campagnelab.bdval.structure.Permutation"));
      }
    });
  }

  private EditorCell createRefNode_bmq4bq_f0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefNodeCellProvider(node, editorContext);
    provider.setRole("minMax");
    provider.setNoTargetText("press enter to expand");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    if (editorCell.getRole() == null) {
      editorCell.setRole("minMax");
    }
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, true);
    editorCell.getStyle().putAll(style);
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      IOperationContext opContext = editorContext.getOperationContext();
      EditorManager manager = EditorManager.getInstanceFromContext(opContext);
      return manager.createNodeRoleAttributeCell(editorContext, attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }

  private static boolean renderingCondition_bmq4bq_a5a(SNode node, EditorContext editorContext) {
    return ListSequence.fromList(SLinkOperations.getTargets(SNodeOperations.cast(SNodeOperations.getParent(node), "org.campagnelab.bdval.structure.FeatureSelectionInfo"), "strategy", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode combo) {
        return (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(combo, "step1", true), "name")) && SNodeOperations.isInstanceOf(SLinkOperations.getTarget(combo, "step1", true), "org.campagnelab.bdval.structure.MinMax")) || (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(combo, "step2", true), "name")) && SNodeOperations.isInstanceOf(SLinkOperations.getTarget(combo, "step2", true), "org.campagnelab.bdval.structure.MinMax"));
      }
    });
  }

  private EditorCell createRefNode_bmq4bq_g0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefNodeCellProvider(node, editorContext);
    provider.setRole("coxReg");
    provider.setNoTargetText("press enter to expand");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    if (editorCell.getRole() == null) {
      editorCell.setRole("coxReg");
    }
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, true);
    editorCell.getStyle().putAll(style);
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      IOperationContext opContext = editorContext.getOperationContext();
      EditorManager manager = EditorManager.getInstanceFromContext(opContext);
      return manager.createNodeRoleAttributeCell(editorContext, attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }

  private static boolean renderingCondition_bmq4bq_a6a(SNode node, EditorContext editorContext) {
    return ListSequence.fromList(SLinkOperations.getTargets(SNodeOperations.cast(SNodeOperations.getParent(node), "org.campagnelab.bdval.structure.FeatureSelectionInfo"), "strategy", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode combo) {
        return (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(combo, "step1", true), "name")) && SNodeOperations.isInstanceOf(SLinkOperations.getTarget(combo, "step1", true), "org.campagnelab.bdval.structure.CoxReg")) || (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(combo, "step2", true), "name")) && SNodeOperations.isInstanceOf(SLinkOperations.getTarget(combo, "step2", true), "org.campagnelab.bdval.structure.CoxReg"));
      }
    });
  }

  private EditorCell createRefNode_bmq4bq_h0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefNodeCellProvider(node, editorContext);
    provider.setRole("kendallTau");
    provider.setNoTargetText("press enter to expand");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    if (editorCell.getRole() == null) {
      editorCell.setRole("kendallTau");
    }
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, true);
    editorCell.getStyle().putAll(style);
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      IOperationContext opContext = editorContext.getOperationContext();
      EditorManager manager = EditorManager.getInstanceFromContext(opContext);
      return manager.createNodeRoleAttributeCell(editorContext, attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }

  private static boolean renderingCondition_bmq4bq_a7a(SNode node, EditorContext editorContext) {
    return ListSequence.fromList(SLinkOperations.getTargets(SNodeOperations.cast(SNodeOperations.getParent(node), "org.campagnelab.bdval.structure.FeatureSelectionInfo"), "strategy", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode combo) {
        return (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(combo, "step1", true), "name")) && SNodeOperations.isInstanceOf(SLinkOperations.getTarget(combo, "step1", true), "org.campagnelab.bdval.structure.KendallTau")) || (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(combo, "step2", true), "name")) && SNodeOperations.isInstanceOf(SLinkOperations.getTarget(combo, "step2", true), "org.campagnelab.bdval.structure.KendallTau"));
      }
    });
  }

  private EditorCell createRefNode_bmq4bq_i0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefNodeCellProvider(node, editorContext);
    provider.setRole("pathways");
    provider.setNoTargetText("press enter to expand");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    if (editorCell.getRole() == null) {
      editorCell.setRole("pathways");
    }
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, true);
    editorCell.getStyle().putAll(style);
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      IOperationContext opContext = editorContext.getOperationContext();
      EditorManager manager = EditorManager.getInstanceFromContext(opContext);
      return manager.createNodeRoleAttributeCell(editorContext, attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }

  private static boolean renderingCondition_bmq4bq_a8a(SNode node, EditorContext editorContext) {
    return ListSequence.fromList(SLinkOperations.getTargets(SNodeOperations.cast(SNodeOperations.getParent(node), "org.campagnelab.bdval.structure.FeatureSelectionInfo"), "strategy", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode combo) {
        return (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(combo, "step1", true), "name")) && SNodeOperations.isInstanceOf(SLinkOperations.getTarget(combo, "step1", true), "org.campagnelab.bdval.structure.Pathway")) || (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(combo, "step2", true), "name")) && SNodeOperations.isInstanceOf(SLinkOperations.getTarget(combo, "step2", true), "org.campagnelab.bdval.structure.Pathway"));
      }
    });
  }

  private static boolean isNotEmptyString(String str) {
    return str != null && str.length() > 0;
  }
}