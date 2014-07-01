package org.campagnelab.bdval.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.bdval.DAVMode;
import edu.mssm.crover.tables.Table;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import java.util.List;
import java.util.ArrayList;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;

public class Input_Behavior {
  public static void init(SNode thisNode) {
  }

  public static void call_load_7052920786130144602(SNode thisNode) {
    SPropertyOperations.set(thisNode, "numberOfFeatures", null);
    SPropertyOperations.set(thisNode, "numberOfSamples", null);
    ListSequence.fromList(SLinkOperations.getTargets(thisNode, "sample", true)).clear();
    ListSequence.fromList(SLinkOperations.getTargets(thisNode, "displayRow", true)).clear();
    ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(SNodeOperations.cast(SNodeOperations.getParent(thisNode), "org.campagnelab.bdval.structure.DataSet"), "cids", true), "mismatches", true)).clear();
    try {
      final DAVMode davMode = new DAVMode();
      Table inputTable = davMode.getReadInputFile(SPropertyOperations.getString(thisNode, "fileName"));
      SPropertyOperations.set(thisNode, "numberOfFeatures", "" + (inputTable.getRowNumber() - 1));
      int cols = inputTable.getColumnNumber();
      Input_Behavior.call_getInputIds_7052920786130389579(thisNode, inputTable, cols);
      Input_Behavior.call_getInputDisplay_3367122381600071702(thisNode, inputTable, cols);
    } catch (Exception e) {
      throw new IllegalArgumentException("Illegal Input File");
    }
  }

  public static void call_getInputIds_7052920786130389579(final SNode thisNode, Table inputTable, int cols) {
    int counter = 1;
    while (counter < cols) {
      String idString = inputTable.getIdentifier(counter);
      SNode sampleNode = SConceptOperations.createNewNode("org.campagnelab.bdval.structure.Sample", null);
      SPropertyOperations.set(sampleNode, "name", idString);
      ListSequence.fromList(SLinkOperations.getTargets(thisNode, "sample", true)).addElement(sampleNode);
      counter++;
    }
    final int length = Input_Behavior.call_getMaxIdLength_3367122381624659193(thisNode);
    ListSequence.fromList(SLinkOperations.getTargets(thisNode, "sample", true)).visitAll(new IVisitor<SNode>() {
      public void visit(SNode sample) {
        SPropertyOperations.set(sample, "displayId", Input_Behavior.call_reformatString_3367122381603806186(thisNode, SPropertyOperations.getString(sample, "name"), length));
      }
    });
    SPropertyOperations.set(thisNode, "numberOfSamples", "" + (counter - 1));
  }

  public static void call_getInputDisplay_3367122381600071702(SNode thisNode, Table inputTable, int cols) {
    List<Integer> length = ListSequence.fromList(new ArrayList<Integer>());
    String output;
    int rows = inputTable.getRowNumber();
    int rowMax = 10;
    if (rows < rowMax) {
      rowMax = rows;
    }
    int colWidth;
    int colMax = 0;
    int characters = 0;
    Table.RowIterator rowIterator = inputTable.firstRow();
    rowIterator.next();
    // Gets the first row 
    int colCounter = 0;
    SNode rowNode = SConceptOperations.createNewNode("org.campagnelab.bdval.structure.DisplayRow", null);
    // Gets the first spot 
    try {
      SNode valNode = SConceptOperations.createNewNode("org.campagnelab.bdval.structure.DisplayValue", null);
      output = inputTable.getIdentifier(colMax);
      colWidth = Math.max(inputTable.elementToString(colMax, rowIterator).length(), output.length()) + 2;
      characters = characters + colWidth;
      ListSequence.fromList(length).addElement(colWidth);
      SPropertyOperations.set(valNode, "value", Input_Behavior.call_reformatString_3367122381603806186(thisNode, output, ListSequence.fromList(length).getElement(colMax)));
      ListSequence.fromList(SLinkOperations.getTargets(rowNode, "displayValue", true)).addElement(valNode);
      colMax++;
    } catch (Exception e) {
      throw new Error();
    }
    while (characters < 104 && colMax < cols) {
      try {
        SNode valNode = SConceptOperations.createNewNode("org.campagnelab.bdval.structure.DisplayValue", null);
        output = inputTable.getIdentifier(colMax);
        colWidth = Math.max(output.length() + 2, 13);
        characters = characters + colWidth;
        ListSequence.fromList(length).addElement(colWidth);
        SPropertyOperations.set(valNode, "value", Input_Behavior.call_reformatString_3367122381603806186(thisNode, output, ListSequence.fromList(length).getElement(colMax)));
        ListSequence.fromList(SLinkOperations.getTargets(rowNode, "displayValue", true)).addElement(valNode);
      } catch (Exception e) {
        throw new Error();
      }
      colMax++;
    }
    ListSequence.fromList(SLinkOperations.getTargets(thisNode, "displayRow", true)).addElement(rowNode);
    // Gets the following rows 
    int rowCounter = 1;
    while (rowCounter < rowMax) {
      rowNode = SConceptOperations.createNewNode("org.campagnelab.bdval.structure.DisplayRow", null);
      colCounter = 0;
      while (colCounter < colMax) {
        try {
          SNode valNode = SConceptOperations.createNewNode("org.campagnelab.bdval.structure.DisplayValue", null);
          SPropertyOperations.set(valNode, "value", Input_Behavior.call_reformatString_3367122381603806186(thisNode, inputTable.elementToString(colCounter, rowIterator), ListSequence.fromList(length).getElement(colCounter)));
          ListSequence.fromList(SLinkOperations.getTargets(rowNode, "displayValue", true)).addElement(valNode);
        } catch (Exception e) {
          throw new Error();
        }
        colCounter++;
      }
      ListSequence.fromList(SLinkOperations.getTargets(thisNode, "displayRow", true)).addElement(rowNode);
      rowIterator.next();
      rowCounter++;
    }
  }

  public static String call_reformatString_3367122381603806186(SNode thisNode, String originalString, int setLength) {
    int stringLength = originalString.length();
    int difference = stringLength - setLength;
    if (difference < 0) {
      return Input_Behavior.call_reformatString_3367122381603806186(thisNode, originalString.concat(" "), setLength);
    } else {
      return originalString.substring(0, setLength - 1);
    }
  }

  public static int call_getMaxIdLength_3367122381624659193(SNode thisNode) {
    final Wrappers._int stringLength = new Wrappers._int(0);
    final Wrappers._int idLength = new Wrappers._int();
    ListSequence.fromList(SLinkOperations.getTargets(thisNode, "sample", true)).visitAll(new IVisitor<SNode>() {
      public void visit(SNode sample) {
        idLength.value = SPropertyOperations.getString(sample, "name").length();
        if (idLength.value > stringLength.value) {
          stringLength.value = idLength.value;
        }
      }
    });
    return stringLength.value + 2;
  }
}
