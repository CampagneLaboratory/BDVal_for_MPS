package org.campagnelab.bdval.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import java.io.File;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.filefilter.FileFileFilter;
import org.apache.commons.io.filefilter.TrueFileFilter;

public class Status_Behavior {
  public static void init(SNode thisNode) {
  }

  public static String call_GetResults_8962624141212303655(SNode thisNode, String test) {
    return test + " EDITED";
  }

  public static void call_getResults_8962624141213118054(SNode thisNode, File[] files) {
    ListSequence.fromList(SLinkOperations.getTargets(thisNode, "result", true)).clear();
    for (File file : files) {
      SNode result;
      result = SConceptOperations.createNewNode("org.campagnelab.bdval.structure.Result", null);
      SPropertyOperations.set(result, "name", file.getName());
      SPropertyOperations.set(result, "numberModels", "" + (FileUtils.listFiles(new File(file.getAbsolutePath() + "/models/"), FileFileFilter.FILE, TrueFileFilter.INSTANCE).size()));
      ListSequence.fromList(SLinkOperations.getTargets(thisNode, "result", true)).addElement(result);
    }
  }
}