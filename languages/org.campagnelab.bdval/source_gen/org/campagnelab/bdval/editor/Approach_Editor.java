package org.campagnelab.bdval.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.nodeEditor.cellProviders.CellProviderWithRole;
import jetbrains.mps.lang.editor.cellProviders.PropertyCellProvider;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.nodeEditor.EditorManager;
import jetbrains.mps.lang.editor.cellProviders.RefNodeCellProvider;
import jetbrains.mps.openapi.editor.style.StyleRegistry;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.nodeEditor.cells.EditorCell_Property;
import jetbrains.mps.nodeEditor.cells.ModelAccessor;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.util.EqualUtil;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.cells.EmptyCellAction;

public class Approach_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_6do0s2_a(editorContext, node);
  }

  private EditorCell createCollection_6do0s2_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_6do0s2_a");
    editorCell.setBig(true);
    editorCell.addEditorCell(this.createConstant_6do0s2_a0(editorContext, node));
    editorCell.addEditorCell(this.createProperty_6do0s2_b0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_6do0s2_c0(editorContext, node));
    editorCell.addEditorCell(this.createProperty_6do0s2_d0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_6do0s2_e0(editorContext, node));
    editorCell.addEditorCell(this.createProperty_6do0s2_f0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_6do0s2_g0(editorContext, node));
    editorCell.addEditorCell(this.createProperty_6do0s2_h0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_6do0s2_i0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_6do0s2_j0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_6do0s2_k0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_6do0s2_l0(editorContext, node));
    editorCell.addEditorCell(this.createReadOnlyModelAccessor_6do0s2_m0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_6do0s2_n0(editorContext, node));
    editorCell.addEditorCell(this.createReadOnlyModelAccessor_6do0s2_o0(editorContext, node));
    return editorCell;
  }

  private EditorCell createConstant_6do0s2_a0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "Enable Flooring:");
    editorCell.setCellId("Constant_6do0s2_a0");
    editorCell.setDefaultText("");
    return editorCell;
  }

  private EditorCell createProperty_6do0s2_b0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("enableFlooring");
    provider.setNoTargetText("select value");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("property_enableFlooring");
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

  private EditorCell createConstant_6do0s2_c0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "Evaluate Statistics After Splits:");
    editorCell.setCellId("Constant_6do0s2_c0");
    editorCell.setDefaultText("");
    return editorCell;
  }

  private EditorCell createProperty_6do0s2_d0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("evaluateStatistics");
    provider.setNoTargetText("select value");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("property_evaluateStatistics");
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

  private EditorCell createConstant_6do0s2_e0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "External CV Repeats:");
    editorCell.setCellId("Constant_6do0s2_e0");
    editorCell.setDefaultText("");
    return editorCell;
  }

  private EditorCell createProperty_6do0s2_f0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("externalRepeats");
    provider.setNoTargetText("enter value");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("property_externalRepeats");
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

  private EditorCell createConstant_6do0s2_g0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "External CV Folds:");
    editorCell.setCellId("Constant_6do0s2_g0");
    editorCell.setDefaultText("");
    return editorCell;
  }

  private EditorCell createProperty_6do0s2_h0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("externalFolds");
    provider.setNoTargetText("enter value");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("property_externalFolds");
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

  private EditorCell createRefNode_6do0s2_i0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefNodeCellProvider(node, editorContext);
    provider.setRole("featureSelectionInfo");
    provider.setNoTargetText("press enter to expand");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    if (editorCell.getRole() == null) {
      editorCell.setRole("featureSelectionInfo");
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

  private EditorCell createRefNode_6do0s2_j0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefNodeCellProvider(node, editorContext);
    provider.setRole("classificationInfo");
    provider.setNoTargetText("press enter to expand");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    if (editorCell.getRole() == null) {
      editorCell.setRole("classificationInfo");
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

  private EditorCell createConstant_6do0s2_k0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "");
    editorCell.setCellId("Constant_6do0s2_k0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, true);
    style.set(StyleAttributes.FONT_SIZE, 5);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }

  private EditorCell createConstant_6do0s2_l0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "Number of Models:");
    editorCell.setCellId("Constant_6do0s2_l0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.TEXT_COLOR, StyleRegistry.getInstance().getSimpleColor(MPSColors.darkGray));
    style.set(StyleAttributes.READ_ONLY, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }

  private EditorCell createReadOnlyModelAccessor_6do0s2_m0(final EditorContext editorContext, final SNode node) {
    EditorCell_Property editorCell = EditorCell_Property.create(editorContext, new ModelAccessor() {
      public String getText() {
        final Wrappers._int classificationsNum = new Wrappers._int(0);
        ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(node, "classificationInfo", true), "classification", true)).visitAll(new IVisitor<SNode>() {
          public void visit(SNode classification) {
            if (isNotEmptyString(SPropertyOperations.getString(classification, "name")) && SPropertyOperations.getString(classification, "name").matches("SVMTuneC")) {
              classificationsNum.value = classificationsNum.value + ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(SLinkOperations.getTarget(SLinkOperations.getTarget(node, "classificationInfo", true), "classificationProperties", true), "svmTuneCProperties", true), "cValue", true)).count();
            } else {
              classificationsNum.value++;
            }
          }
        });
        final int foldNum = ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(node, "featureSelectionInfo", true), "featureSelectionFold", true)).count();
        final Wrappers._int featureSelectionNum = new Wrappers._int(0);
        ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(node, "featureSelectionInfo", true), "featureSelectionCombo", true)).visitAll(new IVisitor<SNode>() {
          public void visit(SNode featureSelectionCombo) {
            if (isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(featureSelectionCombo, "featureSelection1", true), "name")) && SPropertyOperations.getString(SLinkOperations.getTarget(featureSelectionCombo, "featureSelection1", true), "name").matches("wholeChip")) {
              featureSelectionNum.value++;
            } else {
              featureSelectionNum.value = featureSelectionNum.value + foldNum;
            }
          }
        });

        return String.valueOf(featureSelectionNum.value * classificationsNum.value * ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(node, "featureSelectionInfo", true), "numberOfFeatures", true)).count() * SPropertyOperations.getInteger(node, "externalFolds") * SPropertyOperations.getInteger(node, "externalRepeats"));
      }

      public void setText(String s) {
      }

      public boolean isValidText(String s) {
        return EqualUtil.equals(s, getText());
      }
    }, node);
    editorCell.setAction(CellActionType.DELETE, EmptyCellAction.getInstance());
    editorCell.setAction(CellActionType.BACKSPACE, EmptyCellAction.getInstance());
    editorCell.setCellId("ReadOnlyModelAccessor_6do0s2_m0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.TEXT_COLOR, StyleRegistry.getInstance().getSimpleColor(MPSColors.darkGray));
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, true);
    style.set(StyleAttributes.READ_ONLY, true);
    editorCell.getStyle().putAll(style);
    return editorCell;
  }

  private EditorCell createConstant_6do0s2_n0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "Number of C Values:");
    editorCell.setCellId("Constant_6do0s2_n0");
    editorCell.setDefaultText("");
    return editorCell;
  }

  private EditorCell createReadOnlyModelAccessor_6do0s2_o0(final EditorContext editorContext, final SNode node) {
    EditorCell_Property editorCell = EditorCell_Property.create(editorContext, new ModelAccessor() {
      public String getText() {
        final Wrappers._int counter = new Wrappers._int(0);
        ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(SLinkOperations.getTarget(SLinkOperations.getTarget(node, "classificationInfo", true), "classificationProperties", true), "svmTuneCProperties", true), "cValue", true)).visitAll(new IVisitor<SNode>() {
          public void visit(SNode it) {
            counter.value++;
          }
        });
        return String.valueOf(counter.value);

      }

      public void setText(String s) {
      }

      public boolean isValidText(String s) {
        return EqualUtil.equals(s, getText());
      }
    }, node);
    editorCell.setAction(CellActionType.DELETE, EmptyCellAction.getInstance());
    editorCell.setAction(CellActionType.BACKSPACE, EmptyCellAction.getInstance());
    editorCell.setCellId("ReadOnlyModelAccessor_6do0s2_o0");
    return editorCell;
  }

  private static boolean isNotEmptyString(String str) {
    return str != null && str.length() > 0;
  }
}
