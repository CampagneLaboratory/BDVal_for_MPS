package org.campagnelab.bdval.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;

public class PathwaysCoxregSVMGlobal_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createConstant_c3s1jc_a(editorContext, node);
  }

  private EditorCell createConstant_c3s1jc_a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "Pathways-Cox Regression-SVM Global");
    editorCell.setCellId("Constant_c3s1jc_a");
    editorCell.setBig(true);
    editorCell.setDefaultText("");
    return editorCell;
  }
}