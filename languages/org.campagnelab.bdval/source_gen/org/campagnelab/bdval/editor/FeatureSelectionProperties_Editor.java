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

public class FeatureSelectionProperties_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_pbpsc1_a(editorContext, node);
  }

  private EditorCell createCollection_pbpsc1_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_pbpsc1_a");
    editorCell.setBig(true);
    if (renderingCondition_pbpsc1_a0a(node, editorContext)) {
      editorCell.addEditorCell(this.createRefNode_pbpsc1_a0(editorContext, node));
    }
    if (renderingCondition_pbpsc1_a1a(node, editorContext)) {
      editorCell.addEditorCell(this.createRefNode_pbpsc1_b0(editorContext, node));
    }
    if (renderingCondition_pbpsc1_a2a(node, editorContext)) {
      editorCell.addEditorCell(this.createRefNode_pbpsc1_c0(editorContext, node));
    }
    if (renderingCondition_pbpsc1_a3a(node, editorContext)) {
      editorCell.addEditorCell(this.createRefNode_pbpsc1_d0(editorContext, node));
    }
    if (renderingCondition_pbpsc1_a4a(node, editorContext)) {
      editorCell.addEditorCell(this.createRefNode_pbpsc1_e0(editorContext, node));
    }
    if (renderingCondition_pbpsc1_a5a(node, editorContext)) {
      editorCell.addEditorCell(this.createRefNode_pbpsc1_f0(editorContext, node));
    }
    if (renderingCondition_pbpsc1_a6a(node, editorContext)) {
      editorCell.addEditorCell(this.createRefNode_pbpsc1_g0(editorContext, node));
    }
    return editorCell;
  }

  private EditorCell createRefNode_pbpsc1_a0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefNodeCellProvider(node, editorContext);
    provider.setRole("svmIterative");
    provider.setNoTargetText("<no svmIterative>");
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

  private static boolean renderingCondition_pbpsc1_a0a(SNode node, EditorContext editorContext) {
    return ListSequence.fromList(SLinkOperations.getTargets(SNodeOperations.cast(SNodeOperations.getParent(node), "org.campagnelab.bdval.structure.FeatureSelectionInfo"), "featureSelectionCombo", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode combo) {
        return (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(combo, "featureSelection1", true), "name")) && SPropertyOperations.getString(SLinkOperations.getTarget(combo, "featureSelection1", true), "name").matches("svmIterative")) || ((SLinkOperations.getTarget(combo, "featureSelection2", true) != null) && SPropertyOperations.getString(SLinkOperations.getTarget(combo, "featureSelection2", true), "name").matches("svmIterative"));
      }
    });
  }

  private EditorCell createRefNode_pbpsc1_b0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefNodeCellProvider(node, editorContext);
    provider.setRole("ttest");
    provider.setNoTargetText("<no ttest>");
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

  private static boolean renderingCondition_pbpsc1_a1a(SNode node, EditorContext editorContext) {
    return ListSequence.fromList(SLinkOperations.getTargets(SNodeOperations.cast(SNodeOperations.getParent(node), "org.campagnelab.bdval.structure.FeatureSelectionInfo"), "featureSelectionCombo", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode combo) {
        return (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(combo, "featureSelection1", true), "name")) && SPropertyOperations.getString(SLinkOperations.getTarget(combo, "featureSelection1", true), "name").matches("ttest")) || ((SLinkOperations.getTarget(combo, "featureSelection2", true) != null) && SPropertyOperations.getString(SLinkOperations.getTarget(combo, "featureSelection2", true), "name").matches("ttest"));
      }
    });
  }

  private EditorCell createRefNode_pbpsc1_c0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefNodeCellProvider(node, editorContext);
    provider.setRole("minMax");
    provider.setNoTargetText("<no minMax>");
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

  private static boolean renderingCondition_pbpsc1_a2a(SNode node, EditorContext editorContext) {
    return ListSequence.fromList(SLinkOperations.getTargets(SNodeOperations.cast(SNodeOperations.getParent(node), "org.campagnelab.bdval.structure.FeatureSelectionInfo"), "featureSelectionCombo", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode combo) {
        return (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(combo, "featureSelection1", true), "name")) && SPropertyOperations.getString(SLinkOperations.getTarget(combo, "featureSelection1", true), "name").matches("minMax")) || ((SLinkOperations.getTarget(combo, "featureSelection2", true) != null) && SPropertyOperations.getString(SLinkOperations.getTarget(combo, "featureSelection2", true), "name").matches("minMax"));
      }
    });
  }

  private EditorCell createRefNode_pbpsc1_d0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefNodeCellProvider(node, editorContext);
    provider.setRole("geneticAlgorithm");
    provider.setNoTargetText("<no geneticAlgorithm>");
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

  private static boolean renderingCondition_pbpsc1_a3a(SNode node, EditorContext editorContext) {
    return ListSequence.fromList(SLinkOperations.getTargets(SNodeOperations.cast(SNodeOperations.getParent(node), "org.campagnelab.bdval.structure.FeatureSelectionInfo"), "featureSelectionCombo", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode combo) {
        return (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(combo, "featureSelection1", true), "name")) && SPropertyOperations.getString(SLinkOperations.getTarget(combo, "featureSelection1", true), "name").matches("geneticAlgorithm")) || ((SLinkOperations.getTarget(combo, "featureSelection2", true) != null) && SPropertyOperations.getString(SLinkOperations.getTarget(combo, "featureSelection2", true), "name").matches("geneticAlgorithm"));
      }
    });
  }

  private EditorCell createRefNode_pbpsc1_e0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefNodeCellProvider(node, editorContext);
    provider.setRole("permutation");
    provider.setNoTargetText("<no permutation>");
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

  private static boolean renderingCondition_pbpsc1_a4a(SNode node, EditorContext editorContext) {
    return ListSequence.fromList(SLinkOperations.getTargets(SNodeOperations.cast(SNodeOperations.getParent(node), "org.campagnelab.bdval.structure.FeatureSelectionInfo"), "featureSelectionCombo", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode combo) {
        return (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(combo, "featureSelection1", true), "name")) && SPropertyOperations.getString(SLinkOperations.getTarget(combo, "featureSelection1", true), "name").matches("permutation")) || ((SLinkOperations.getTarget(combo, "featureSelection2", true) != null) && SPropertyOperations.getString(SLinkOperations.getTarget(combo, "featureSelection2", true), "name").matches("permutation"));
      }
    });
  }

  private EditorCell createRefNode_pbpsc1_f0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefNodeCellProvider(node, editorContext);
    provider.setRole("foldchange");
    provider.setNoTargetText("<no foldchange>");
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

  private static boolean renderingCondition_pbpsc1_a5a(SNode node, EditorContext editorContext) {
    return ListSequence.fromList(SLinkOperations.getTargets(SNodeOperations.cast(SNodeOperations.getParent(node), "org.campagnelab.bdval.structure.FeatureSelectionInfo"), "featureSelectionCombo", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode combo) {
        return (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(combo, "featureSelection1", true), "name")) && SPropertyOperations.getString(SLinkOperations.getTarget(combo, "featureSelection1", true), "name").matches("foldchange")) || ((SLinkOperations.getTarget(combo, "featureSelection2", true) != null) && SPropertyOperations.getString(SLinkOperations.getTarget(combo, "featureSelection2", true), "name").matches("foldchange"));
      }
    });
  }

  private EditorCell createRefNode_pbpsc1_g0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefNodeCellProvider(node, editorContext);
    provider.setRole("pathways");
    provider.setNoTargetText("<no pathways>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    if (editorCell.getRole() == null) {
      editorCell.setRole("pathways");
    }
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

  private static boolean renderingCondition_pbpsc1_a6a(SNode node, EditorContext editorContext) {
    return ListSequence.fromList(SLinkOperations.getTargets(SNodeOperations.cast(SNodeOperations.getParent(node), "org.campagnelab.bdval.structure.FeatureSelectionInfo"), "featureSelectionCombo", true)).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode combo) {
        return (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(combo, "featureSelection1", true), "name")) && SPropertyOperations.getString(SLinkOperations.getTarget(combo, "featureSelection1", true), "name").matches("pathways")) || ((SLinkOperations.getTarget(combo, "featureSelection2", true) != null) && SPropertyOperations.getString(SLinkOperations.getTarget(combo, "featureSelection2", true), "name").matches("pathways"));
      }
    });
  }

  private static boolean isNotEmptyString(String str) {
    return str != null && str.length() > 0;
  }
}
