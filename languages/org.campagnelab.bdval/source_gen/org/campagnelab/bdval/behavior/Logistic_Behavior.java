package org.campagnelab.bdval.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;

public class Logistic_Behavior {
  public static void init(SNode thisNode) {
    SPropertyOperations.set(thisNode, "name", "logistic");
    SPropertyOperations.set(thisNode, "classname", "edu.cornell.med.icb.learning.weka.WekaClassifier");
    SPropertyOperations.set(thisNode, "wekaClass", "weka.classifiers.functions.Logistic");
    SPropertyOperations.set(thisNode, "parameters", "wekaClass=" + SPropertyOperations.getString(thisNode, "wekaClass"));
    SPropertyOperations.set(thisNode, "otherOption", " --weka-class " + SPropertyOperations.getString(thisNode, "wekaClass"));
    SPropertyOperations.set(thisNode, "addoption", "addoption required:weka-class:Classname of the weka classifier\n");

  }
}
