package org.campagnelab.bdval.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.cellProviders.CellProviderWithRole;
import jetbrains.mps.lang.editor.cellProviders.PropertyCellProvider;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.nodeEditor.EditorManager;
import jetbrains.mps.lang.editor.cellProviders.RefCellCellProvider;
import jetbrains.mps.nodeEditor.InlineCellProvider;
import jetbrains.mps.lang.editor.cellProviders.RefNodeCellProvider;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.openapi.editor.style.StyleRegistry;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.nodeEditor.cells.EditorCell_Property;
import jetbrains.mps.nodeEditor.cells.ModelAccessor;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import jetbrains.mps.util.EqualUtil;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.cells.EmptyCellAction;
import jetbrains.mps.nodeEditor.cellProviders.AbstractCellListHandler;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Vertical;
import jetbrains.mps.lang.editor.cellProviders.RefNodeListHandler;
import jetbrains.mps.smodel.action.NodeFactoryManager;
import jetbrains.mps.nodeEditor.cellActions.CellAction_DeleteNode;
import jetbrains.mps.nodeEditor.cellMenu.DefaultReferenceSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;

public class DataSet_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_5gxpkq_a(editorContext, node);
  }

  private EditorCell createCollection_5gxpkq_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_5gxpkq_a");
    editorCell.setBig(true);
    editorCell.addEditorCell(this.createConstant_5gxpkq_a0(editorContext, node));
    editorCell.addEditorCell(this.createProperty_5gxpkq_b0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_5gxpkq_c0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_5gxpkq_d0(editorContext, node));
    editorCell.addEditorCell(this.createProperty_5gxpkq_e0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_5gxpkq_f0(editorContext, node));
    editorCell.addEditorCell(this.createProperty_5gxpkq_g0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_5gxpkq_h0(editorContext, node));
    editorCell.addEditorCell(this.createRefCell_5gxpkq_i0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_5gxpkq_j0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_5gxpkq_k0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_5gxpkq_l0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_5gxpkq_m0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_5gxpkq_n0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_5gxpkq_o0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_5gxpkq_p0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_5gxpkq_q0(editorContext, node));
    if (renderingCondition_5gxpkq_a71a(node, editorContext)) {
      editorCell.addEditorCell(this.createRefNode_5gxpkq_r0(editorContext, node));
    }
    editorCell.addEditorCell(this.createConstant_5gxpkq_s0(editorContext, node));
    if (renderingCondition_5gxpkq_a91a(node, editorContext)) {
      editorCell.addEditorCell(this.createConstant_5gxpkq_t0(editorContext, node));
    }
    if (renderingCondition_5gxpkq_a02a(node, editorContext)) {
      editorCell.addEditorCell(this.createReadOnlyModelAccessor_5gxpkq_u0(editorContext, node));
    }
    if (renderingCondition_5gxpkq_a12a(node, editorContext)) {
      editorCell.addEditorCell(this.createConstant_5gxpkq_v0(editorContext, node));
    }
    if (renderingCondition_5gxpkq_a22a(node, editorContext)) {
      editorCell.addEditorCell(this.createRefCell_5gxpkq_w0(editorContext, node));
    }
    editorCell.addEditorCell(this.createConstant_5gxpkq_x0(editorContext, node));
    return editorCell;
  }

  private EditorCell createConstant_5gxpkq_a0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "Data Set: ");
    editorCell.setCellId("Constant_5gxpkq_a0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.FONT_SIZE, 14);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }

  private EditorCell createProperty_5gxpkq_b0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("name");
    provider.setNoTargetText("insert data set name");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("property_name");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, true);
    style.set(StyleAttributes.FONT_SIZE, 14);
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

  private EditorCell createConstant_5gxpkq_c0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "");
    editorCell.setCellId("Constant_5gxpkq_c0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }

  private EditorCell createConstant_5gxpkq_d0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "Normal Target:");
    editorCell.setCellId("Constant_5gxpkq_d0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_INDENT, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }

  private EditorCell createProperty_5gxpkq_e0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("normalTarget");
    provider.setNoTargetText("<no normalTarget>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("property_normalTarget");
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

  private EditorCell createConstant_5gxpkq_f0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "Test Set:");
    editorCell.setCellId("Constant_5gxpkq_f0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_INDENT, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }

  private EditorCell createProperty_5gxpkq_g0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("testSet");
    provider.setNoTargetText("<no testSet>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("property_testSet");
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

  private EditorCell createConstant_5gxpkq_h0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "Optional Floor for the Signal Value on the Platform:");
    editorCell.setCellId("Constant_5gxpkq_h0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_INDENT, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }

  private EditorCell createRefCell_5gxpkq_i0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefCellCellProvider(node, editorContext);
    provider.setRole("thresholdFloor");
    provider.setNoTargetText("<no thresholdFloor>");
    EditorCell editorCell;
    provider.setAuxiliaryCellProvider(new DataSet_Editor._Inline_5gxpkq_a8a());
    editorCell = provider.createEditorCell(editorContext);
    if (editorCell.getRole() == null) {
      editorCell.setReferenceCell(true);
      editorCell.setRole("thresholdFloor");
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

  public static class _Inline_5gxpkq_a8a extends InlineCellProvider {
    public _Inline_5gxpkq_a8a() {
      super();
    }

    public EditorCell createEditorCell(EditorContext editorContext) {
      return this.createEditorCell(editorContext, this.getSNode());
    }

    public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
      return this.createProperty_5gxpkq_a0i0(editorContext, node);
    }

    private EditorCell createProperty_5gxpkq_a0i0(EditorContext editorContext, SNode node) {
      CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
      provider.setRole("value");
      provider.setNoTargetText("<no value>");
      provider.setReadOnly(true);
      EditorCell editorCell;
      editorCell = provider.createEditorCell(editorContext);
      editorCell.setCellId("property_value");
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
  }

  private EditorCell createRefNode_5gxpkq_j0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefNodeCellProvider(node, editorContext);
    provider.setRole("otherFiles");
    provider.setNoTargetText("<no otherFiles>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    if (editorCell.getRole() == null) {
      editorCell.setRole("otherFiles");
    }
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_INDENT, true);
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

  private EditorCell createConstant_5gxpkq_k0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "");
    editorCell.setCellId("Constant_5gxpkq_k0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }

  private EditorCell createRefNode_5gxpkq_l0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefNodeCellProvider(node, editorContext);
    provider.setRole("task");
    provider.setNoTargetText("<no task>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    if (editorCell.getRole() == null) {
      editorCell.setRole("task");
    }
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, true);
    style.set(StyleAttributes.INDENT_LAYOUT_INDENT, true);
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

  private EditorCell createConstant_5gxpkq_m0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "");
    editorCell.setCellId("Constant_5gxpkq_m0");
    editorCell.setDefaultText("");
    return editorCell;
  }

  private EditorCell createRefNode_5gxpkq_n0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefNodeCellProvider(node, editorContext);
    provider.setRole("platform");
    provider.setNoTargetText("<no platform>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    if (editorCell.getRole() == null) {
      editorCell.setRole("platform");
    }
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_INDENT, true);
    style.set(StyleAttributes.EDITABLE, false);
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, true);
    style.set(StyleAttributes.INDENT_LAYOUT_ON_NEW_LINE, true);
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

  private EditorCell createConstant_5gxpkq_o0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "");
    editorCell.setCellId("Constant_5gxpkq_o0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }

  private EditorCell createRefNode_5gxpkq_p0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefNodeCellProvider(node, editorContext);
    provider.setRole("input");
    provider.setNoTargetText("<no input>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    if (editorCell.getRole() == null) {
      editorCell.setRole("input");
    }
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_INDENT, true);
    style.set(StyleAttributes.INDENT_LAYOUT_ON_NEW_LINE, true);
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, true);
    style.set(StyleAttributes.EDITABLE, false);
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

  private EditorCell createConstant_5gxpkq_q0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "");
    editorCell.setCellId("Constant_5gxpkq_q0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }

  private EditorCell createRefNode_5gxpkq_r0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefNodeCellProvider(node, editorContext);
    provider.setRole("cids");
    provider.setNoTargetText("<no cids>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    if (editorCell.getRole() == null) {
      editorCell.setRole("cids");
    }
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_INDENT, true);
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, true);
    style.set(StyleAttributes.EDITABLE, false);
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

  private static boolean renderingCondition_5gxpkq_a71a(SNode node, EditorContext editorContext) {
    return ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(node, "input", true), "sample", true)).isNotEmpty();
  }

  private EditorCell createConstant_5gxpkq_s0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "");
    editorCell.setCellId("Constant_5gxpkq_s0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }

  private EditorCell createConstant_5gxpkq_t0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "Number of Known Conditions:");
    editorCell.setCellId("Constant_5gxpkq_t0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_INDENT, true);
    style.set(StyleAttributes.TEXT_COLOR, StyleRegistry.getInstance().getSimpleColor(MPSColors.darkGray));
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }

  private static boolean renderingCondition_5gxpkq_a91a(SNode node, EditorContext editorContext) {
    return ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(node, "input", true), "sample", true)).isNotEmpty();
  }

  private EditorCell createReadOnlyModelAccessor_5gxpkq_u0(final EditorContext editorContext, final SNode node) {
    EditorCell_Property editorCell = EditorCell_Property.create(editorContext, new ModelAccessor() {
      public String getText() {
        final Wrappers._int counter = new Wrappers._int(0);
        ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(node, "input", true), "sample", true)).visitAll(new IVisitor<SNode>() {
          public void visit(SNode sample) {
            if ((SLinkOperations.getTarget(SLinkOperations.getTarget(sample, "category", false), "endpointCategory", false) != null)) {
              counter.value++;
            }
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
    editorCell.setCellId("ReadOnlyModelAccessor_5gxpkq_u0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, true);
    editorCell.getStyle().putAll(style);
    return editorCell;
  }

  private static boolean renderingCondition_5gxpkq_a02a(SNode node, EditorContext editorContext) {
    return ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(node, "input", true), "sample", true)).isNotEmpty();
  }

  private EditorCell createConstant_5gxpkq_v0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "Sample Label:");
    editorCell.setCellId("Constant_5gxpkq_v0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, true);
    style.set(StyleAttributes.READ_ONLY, true);
    style.set(StyleAttributes.INDENT_LAYOUT_INDENT, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }

  private static boolean renderingCondition_5gxpkq_a12a(SNode node, EditorContext editorContext) {
    return ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(node, "input", true), "sample", true)).isNotEmpty();
  }

  private EditorCell createRefCell_5gxpkq_w0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefCellCellProvider(node, editorContext);
    provider.setRole("input");
    provider.setNoTargetText("<no input>");
    EditorCell editorCell;
    provider.setAuxiliaryCellProvider(new DataSet_Editor._Inline_5gxpkq_a22a());
    editorCell = provider.createEditorCell(editorContext);
    if (editorCell.getRole() == null) {
      editorCell.setReferenceCell(true);
      editorCell.setRole("input");
    }
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_INDENT, true);
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

  public static class _Inline_5gxpkq_a22a extends InlineCellProvider {
    public _Inline_5gxpkq_a22a() {
      super();
    }

    public EditorCell createEditorCell(EditorContext editorContext) {
      return this.createEditorCell(editorContext, this.getSNode());
    }

    public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
      return this.createCollection_5gxpkq_a0w0(editorContext, node);
    }

    private EditorCell createCollection_5gxpkq_a0w0(EditorContext editorContext, SNode node) {
      EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
      editorCell.setCellId("Collection_5gxpkq_a0w0");
      editorCell.addEditorCell(this.createRefNodeList_5gxpkq_a0a22a(editorContext, node));
      return editorCell;
    }

    private EditorCell createRefNodeList_5gxpkq_a0a22a(EditorContext editorContext, SNode node) {
      AbstractCellListHandler handler = new DataSet_Editor._Inline_5gxpkq_a22a.sampleListHandler_5gxpkq_a0a22a(node, "sample", editorContext);
      EditorCell_Collection editorCell = handler.createCells(editorContext, new CellLayout_Vertical(), false);
      editorCell.setCellId("refNodeList_sample");
      editorCell.setRole(handler.getElementRole());
      return editorCell;
    }

    private static class sampleListHandler_5gxpkq_a0a22a extends RefNodeListHandler {
      public sampleListHandler_5gxpkq_a0a22a(SNode ownerNode, String childRole, EditorContext context) {
        super(ownerNode, childRole, context, false);
      }

      public SNode createNodeToInsert(EditorContext editorContext) {
        SNode listOwner = super.getOwner();
        return NodeFactoryManager.createNode(listOwner, editorContext, super.getElementRole());
      }

      public EditorCell createNodeCell(EditorContext editorContext, SNode elementNode) {
        EditorCell elementCell = super.createNodeCell(editorContext, elementNode);
        this.installElementCellActions(this.getOwner(), elementNode, elementCell, editorContext);
        return elementCell;
      }

      public EditorCell createEmptyCell(EditorContext editorContext) {
        EditorCell emptyCell = null;
        emptyCell = super.createEmptyCell(editorContext);
        this.installElementCellActions(super.getOwner(), null, emptyCell, editorContext);
        return emptyCell;
      }

      public void installElementCellActions(SNode listOwner, SNode elementNode, EditorCell elementCell, EditorContext editorContext) {
        if (elementCell.getUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET) == null) {
          elementCell.putUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET, AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET);
          if (elementNode != null) {
            elementCell.setAction(CellActionType.DELETE, new CellAction_DeleteNode(elementNode));
          }
          if (elementCell.getSubstituteInfo() == null || elementCell.getSubstituteInfo() instanceof DefaultReferenceSubstituteInfo) {
            elementCell.setSubstituteInfo(new DefaultChildSubstituteInfo(listOwner, elementNode, super.getLinkDeclaration(), editorContext));
          }
        }
      }
    }
  }

  private static boolean renderingCondition_5gxpkq_a22a(SNode node, EditorContext editorContext) {
    return ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(node, "input", true), "sample", true)).isNotEmpty();
  }

  private EditorCell createConstant_5gxpkq_x0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "");
    editorCell.setCellId("Constant_5gxpkq_x0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, true);
    style.set(StyleAttributes.FONT_SIZE, 20);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
}
