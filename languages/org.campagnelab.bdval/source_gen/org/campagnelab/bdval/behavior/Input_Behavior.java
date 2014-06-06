package org.campagnelab.bdval.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import org.bdval.DAVMode;
import edu.mssm.crover.tables.Table;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;

public class Input_Behavior {
  public static void init(SNode thisNode) {
  }

  public static void call_load_7052920786130144602(SNode thisNode) {
    ListSequence.fromList(SLinkOperations.getTargets(thisNode, "displayRow", true)).removeSequence(ListSequence.fromList(SLinkOperations.getTargets(thisNode, "displayRow", true)));
    ListSequence.fromList(SLinkOperations.getTargets(thisNode, "sampleId", true)).removeSequence(ListSequence.fromList(SLinkOperations.getTargets(thisNode, "sampleId", true)));
    SPropertyOperations.set(thisNode, "numberOfSamples", null);
    try {
      final DAVMode davMode = new DAVMode();
      Table inputTable = davMode.getReadInputFile(SPropertyOperations.getString(thisNode, "inputFileName"));
      int cols = inputTable.getColumnNumber();
      SPropertyOperations.set(thisNode, "numberOfSamples", "" + (cols - 1));
      Input_Behavior.call_getInputIds_7052920786130389579(thisNode, inputTable, cols);
      Input_Behavior.call_getInputDisplay_3367122381600071702(thisNode, inputTable, cols);
    } catch (Exception e) {
      throw new IllegalArgumentException("Input load failed");
    }
  }

  public static void call_getInputIds_7052920786130389579(SNode thisNode, Table inputTable, int cols) {
    int counter = 1;
    while (counter < cols) {
      String idString = inputTable.getIdentifier(counter);
      SNode idNode = SConceptOperations.createNewNode("org.campagnelab.bdval.structure.SampleId", null);
      SPropertyOperations.set(idNode, "name", idString);
      ListSequence.fromList(SLinkOperations.getTargets(thisNode, "sampleId", true)).addElement(idNode);
      counter++;
    }
  }

  public static void call_getInputDisplay_3367122381600071702(SNode thisNode, Table inputTable, int cols) {
    int stringLength = 13;
    int rows = inputTable.getRowNumber();
    int colMax = 8;
    int rowMax = 10;
    if (cols < colMax) {
      colMax = cols;
    }
    if (rows < rowMax) {
      rowMax = rows;
    }
    // Gets the first row 
    int colCounter = 0;
    SNode rowNode = SConceptOperations.createNewNode("org.campagnelab.bdval.structure.DisplayRow", null);
    while (colCounter < colMax) {
      try {
        SNode valNode = SConceptOperations.createNewNode("org.campagnelab.bdval.structure.DisplayValue", null);
        SPropertyOperations.set(valNode, "value", Input_Behavior.call_reformatString_3367122381603806186(thisNode, inputTable.getIdentifier(colCounter), stringLength));
        ListSequence.fromList(SLinkOperations.getTargets(rowNode, "value", true)).addElement(valNode);
      } catch (Exception e) {
        throw new IllegalArgumentException();
      }
      colCounter++;
    }
    ListSequence.fromList(SLinkOperations.getTargets(thisNode, "displayRow", true)).addElement(rowNode);
    // Gets the following rows 
    Table.RowIterator rowIterator = inputTable.firstRow();
    rowIterator.next();
    int rowCounter = 1;
    while (rowCounter < rowMax) {
      rowNode = SConceptOperations.createNewNode("org.campagnelab.bdval.structure.DisplayRow", null);
      colCounter = 0;
      while (colCounter < colMax) {
        try {
          SNode valNode = SConceptOperations.createNewNode("org.campagnelab.bdval.structure.DisplayValue", null);
          SPropertyOperations.set(valNode, "value", Input_Behavior.call_reformatString_3367122381603806186(thisNode, inputTable.elementToString(colCounter, rowIterator), stringLength));
          ListSequence.fromList(SLinkOperations.getTargets(rowNode, "value", true)).addElement(valNode);
        } catch (Exception e) {
          throw new IllegalArgumentException();
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
    String newString;
    if (difference < 0) {
      return Input_Behavior.call_reformatString_3367122381603806186(thisNode, originalString.concat(" "), setLength);
    } else {
      return originalString.substring(0, setLength - 1);
    }
  }
}
