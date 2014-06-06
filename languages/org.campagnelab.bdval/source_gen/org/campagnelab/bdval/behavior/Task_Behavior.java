package org.campagnelab.bdval.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import java.io.FileReader;
import java.io.File;
import java.io.BufferedReader;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;

public class Task_Behavior {
  public static void init(SNode thisNode) {
  }

  public static void call_load_4345048909866934596(SNode thisNode) {
    SLinkOperations.getTargets(thisNode, "endpoint", true).removeAll(SLinkOperations.getTargets(thisNode, "endpoint", true));
    SPropertyOperations.set(thisNode, "numberOfEndptMismatches", null);
    SPropertyOperations.set(thisNode, "endpointCountMatch", null);
    try {
      FileReader reader = new FileReader(new File(SPropertyOperations.getString(thisNode, "taskFileName")));
      BufferedReader datasetReader = new BufferedReader(reader);
      String line = datasetReader.readLine();
      if (datasetReader.readLine() != null) {
        throw new IllegalArgumentException();
      }
      String[] lineArray = line.split("\t");
      int cols = lineArray.length;
      if ((cols % 2 == 0) || (cols < 3)) {
        throw new IllegalArgumentException();
      }
      Task_Behavior.call_getTaskEndpts_3367122381606179295(thisNode, lineArray, cols);
      Task_Behavior.call_compareEndpts_4345048909867210476(thisNode);
    } catch (Exception e) {
      throw new IllegalArgumentException("Task load failed");
    }
  }

  public static void call_getTaskEndpts_3367122381606179295(SNode thisNode, String[] lineArray, int cols) {
    int max = (cols - 1) / 2;
    int counter = 1;
    final Wrappers._int matchCounter = new Wrappers._int();
    boolean compareEndpts = true;
    while (counter <= max) {
      String endptString = lineArray[counter];
      final SNode endptNode = SConceptOperations.createNewNode("org.campagnelab.bdval.structure.Endpoint", null);
      SPropertyOperations.set(endptNode, "name", endptString);
      ListSequence.fromList(SLinkOperations.getTargets(thisNode, "endpoint", true)).addElement(endptNode);
      matchCounter.value = 0;
      ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(SNodeOperations.cast(SNodeOperations.getParent(thisNode), "org.campagnelab.bdval.structure.DataSet"), "cids", true), "endpoint", true)).visitAll(new IVisitor<SNode>() {
        public void visit(SNode cidsEndpt) {
          if (SPropertyOperations.getString(endptNode, "name") == SPropertyOperations.getString(cidsEndpt, "name")) {
            matchCounter.value++;
          }
        }
      });
      compareEndpts = (Integer.parseInt(lineArray[max + counter]) == matchCounter.value) && compareEndpts;
      counter++;
    }
    SPropertyOperations.set(thisNode, "endpointCountMatch", "" + (compareEndpts));
  }

  public static void call_compareEndpts_4345048909867210476(SNode thisNode) {
    SNode cids = SLinkOperations.getTarget(SNodeOperations.cast(SNodeOperations.getParent(thisNode), "org.campagnelab.bdval.structure.DataSet"), "cids", true);
    final Iterable<SNode> taskEndpts = ListSequence.fromList(SLinkOperations.getTargets(thisNode, "endpoint", true)).toListSequence().distinct();
    Iterable<SNode> cidsEndpts = ListSequence.fromList(SLinkOperations.getTargets(cids, "endpoint", true)).toListSequence().distinct();
    final Wrappers._int counter = new Wrappers._int(0);
    Sequence.fromIterable(cidsEndpts).visitAll(new IVisitor<SNode>() {
      public void visit(final SNode cidEndpt) {
        if (!(Sequence.fromIterable(taskEndpts).any(new IWhereFilter<SNode>() {
          public boolean accept(SNode taskEndpt) {
            return SPropertyOperations.getString(taskEndpt, "name") == SPropertyOperations.getString(cidEndpt, "name");
          }
        }))) {
          counter.value++;
        }
      }
    });
    SPropertyOperations.set(thisNode, "numberOfEndptMismatches", "" + (counter.value));
  }
}
