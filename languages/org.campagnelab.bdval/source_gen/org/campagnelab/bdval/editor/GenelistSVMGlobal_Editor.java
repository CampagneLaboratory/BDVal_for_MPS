package org.campagnelab.bdval.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;

public class GenelistSVMGlobal_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createConstant_p6py7d_a(editorContext, node);
  }

  private EditorCell createConstant_p6py7d_a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "Genelist-SVM Global");
    editorCell.setCellId("Constant_p6py7d_a");
    editorCell.setBig(true);
    editorCell.setDefaultText("");
    return editorCell;
  }
}
