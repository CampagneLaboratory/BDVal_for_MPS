package org.campagnelab.bdval.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;

public class GeneticAlgorithm_Behavior {
  public static void init(SNode thisNode) {
    SPropertyOperations.set(thisNode, "name", "geneticAlgorithm");
    SPropertyOperations.set(thisNode, "defs", "");
    SPropertyOperations.set(thisNode, "addoptions", "addoption required:population-size:GA population size\n" + "addoption required:number-of-steps:GA max number of iterations\n" + "addoption required:maximize:the performance measure to maximize\n" + "addoption required:folds:Number of cross validation folds\n" + "addoption required:cv-repeats:Number of cross validation repeats\n" + "addoption required:ratio:The ratio of new number of feature to original number of features (GA)\n");
    SPropertyOperations.set(thisNode, "sequenceCommand", " ga-wrapper");
    SPropertyOperations.set(thisNode, "sequenceInfo", " --optimal-parameters-out %dataset-name%-%split-id%-%label%-optimal-parameters.txt" + " --population-size %population-size%" + " --number-of-steps %number-of-steps%" + " --folds %folds%" + " --cv-repeats %cv-repeats%" + " --maximize %maximize%" + " --ratio %ratio%");
    SPropertyOperations.set(thisNode, "sequenceNumFeatures", " --num-features");
    SPropertyOperations.set(thisNode, "otherOptions", " --ratio ${ga-ratio} --number-of-steps ${ga-wrapper-number-of-iterations} --cv-repeats ${internal-CV-repeats}" + " --population-size ${ga-wrapper-population-size} --folds ${internal-CV-folds}" + " --maximize ${performance-measure-maximized-by-GA}");
  }
}
