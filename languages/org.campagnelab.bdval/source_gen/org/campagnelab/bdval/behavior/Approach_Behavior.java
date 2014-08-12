package org.campagnelab.bdval.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import java.io.File;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.internal.collections.runtime.ITranslator2;
import java.io.FileWriter;
import java.io.PrintWriter;
import org.apache.log4j.Level;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import org.apache.commons.lang.WordUtils;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

public class Approach_Behavior {
  public static void init(SNode thisNode) {
    SPropertyOperations.set(thisNode, "externalRepeats", "" + (1));
    SPropertyOperations.set(thisNode, "externalFolds", "" + (5));
  }

  public static void call_generateSequenceFiles_1870354875253436007(final SNode thisNode) {
    ListSequence.fromList(SLinkOperations.getTargets(thisNode, "modelToGenerate", true)).clear();
    String directoryName = SPropertyOperations.getString(SNodeOperations.cast(SNodeOperations.getParent(thisNode), "org.campagnelab.bdval.structure.Project"), "projectFolder");
    final String sequenceFolder = directoryName + "sequences/";
    new File(sequenceFolder).mkdir();

    final Wrappers._boolean twoFS = new Wrappers._boolean();
    final Wrappers._boolean geneticAlgorithm = new Wrappers._boolean();
    final Wrappers._boolean wholeChip = new Wrappers._boolean();
    final Wrappers._boolean genelist = new Wrappers._boolean();

    final Wrappers._T<String> approachMethod = new Wrappers._T<String>();
    final Wrappers._T<String> fsLine = new Wrappers._T<String>();
    final Wrappers._T<String> genelistDef = new Wrappers._T<String>("");

    final Wrappers._T<String> otherOptions = new Wrappers._T<String>();
    final Wrappers._T<String> addoptions = new Wrappers._T<String>();
    final Wrappers._T<String> defs = new Wrappers._T<String>("");


    ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(thisNode, "featureSelectionInfo", true), "featureSelectionFold", true)).visitAll(new IVisitor<SNode>() {
      public void visit(final SNode featureSelectionFold) {
        ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(thisNode, "classificationInfo", true), "classification", true)).visitAll(new IVisitor<SNode>() {
          public void visit(final SNode classification) {
            ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(thisNode, "featureSelectionInfo", true), "featureSelectionCombo", true)).visitAll(new IVisitor<SNode>() {
              public void visit(SNode featureCombo) {

                twoFS.value = (SLinkOperations.getTarget(featureCombo, "featureSelection2", true) != null);

                // Updates based on first feature selection strategy 
                SNode featureSelection1 = SLinkOperations.getTarget(featureCombo, "featureSelection1", true);
                geneticAlgorithm.value = SNodeOperations.isInstanceOf(featureSelection1, "org.campagnelab.bdval.structure.GeneticAlgorithm");
                wholeChip.value = SNodeOperations.isInstanceOf(featureSelection1, "org.campagnelab.bdval.structure.WholeChip");
                genelist.value = SNodeOperations.isInstanceOf(featureSelection1, "org.campagnelab.bdval.structure.Genelist");
                approachMethod.value = SPropertyOperations.getString(featureSelection1, "name");
                fsLine.value = Approach_Behavior.call_getFSLine_3649519271357483092(thisNode, wholeChip.value, genelist.value, SPropertyOperations.getString(featureSelection1, "sequenceCommand"), SPropertyOperations.getString(featureSelection1, "sequenceInfo"), SPropertyOperations.getString(featureSelection1, "sequenceNumFeatures"), true, twoFS.value, SPropertyOperations.getBoolean(featureSelectionFold, "value"));
                addoptions.value = SPropertyOperations.getString(featureSelection1, "addoptions");
                otherOptions.value = SPropertyOperations.getString(featureSelection1, "otherOptions");

                // Updates based on second feature selection strategy if one was selected 
                if (twoFS.value) {
                  SNode featureSelection2 = SLinkOperations.getTarget(featureCombo, "featureSelection2", true);
                  approachMethod.value = approachMethod.value + "+" + SPropertyOperations.getString(featureSelection2, "name");
                  geneticAlgorithm.value = geneticAlgorithm.value || SNodeOperations.isInstanceOf(featureSelection2, "org.campagnelab.bdval.structure.GeneticAlgorithm");
                  fsLine.value = fsLine.value + Approach_Behavior.call_getFSLine_3649519271357483092(thisNode, wholeChip.value, genelist.value, SPropertyOperations.getString(featureSelection2, "sequenceCommand"), SPropertyOperations.getString(featureSelection2, "sequenceInfo"), SPropertyOperations.getString(featureSelection2, "sequenceNumFeatures"), false, twoFS.value, SPropertyOperations.getBoolean(featureSelectionFold, "value"));
                  addoptions.value = addoptions.value + SPropertyOperations.getString(featureSelection2, "addoptions");
                  otherOptions.value = otherOptions.value + " " + SPropertyOperations.getString(featureSelection2, "otherOptions");
                  if (!(wholeChip.value) && !(genelist.value)) {
                    addoptions.value = addoptions.value + "addoption required:max-intermediate-features:Maximum number of intermediate features to consider\n";
                    otherOptions.value = otherOptions.value + " --max-intermediate-features ${max-intermediate-features}";
                  }
                }

                // Updates based on feature selection option if one was selected 
                if ((SLinkOperations.getTarget(featureCombo, "featureSelectionOption", true) != null)) {
                  SNode option = SLinkOperations.getTarget(featureCombo, "featureSelectionOption", true);
                  approachMethod.value = approachMethod.value + "-" + SPropertyOperations.getString(option, "name");
                  defs.value = defs.value + SPropertyOperations.getString(option, "def");
                  addoptions.value = addoptions.value + SPropertyOperations.getString(option, "addoptions");
                  otherOptions.value = otherOptions.value + SPropertyOperations.getString(option, "otherOptions");
                }

                approachMethod.value = approachMethod.value + "-" + SPropertyOperations.getString(classification, "name") + "-fs=" + String.valueOf(SPropertyOperations.getBoolean(featureSelectionFold, "value"));

                // Creates modelToGenerate node(s) 
                if (genelist.value) {
                  ListSequence.fromList(SLinkOperations.getTargets(SNodeOperations.cast(SNodeOperations.getParent(thisNode), "org.campagnelab.bdval.structure.Project"), "dataset", true)).where(new IWhereFilter<SNode>() {
                    public boolean accept(SNode it) {
                      return (SLinkOperations.getTarget(it, "otherFiles", true) != null);
                    }
                  }).select(new ISelector<SNode, SNode>() {
                    public SNode select(SNode it) {
                      return SLinkOperations.getTarget(it, "otherFiles", true);
                    }
                  }).translate(new ITranslator2<SNode, SNode>() {
                    public Iterable<SNode> translate(SNode it) {
                      return SLinkOperations.getTargets(it, "genelistFiles", true);
                    }
                  }).visitAll(new IVisitor<SNode>() {
                    public void visit(final SNode genelistNode) {
                      genelistDef.value = "-%which-gene-list%";
                      if (SPropertyOperations.getString(classification, "name").matches("SVMTuneC")) {
                        ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(SLinkOperations.getTarget(SLinkOperations.getTarget(thisNode, "classificationInfo", true), "classificationProperties", true), "svmTuneCProperties", true), "cValue", true)).visitAll(new IVisitor<SNode>() {
                          public void visit(SNode cValue) {
                            Approach_Behavior.call_generateModel_8241402136296602911(thisNode, approachMethod.value, SPropertyOperations.getString(cValue, "value"), SPropertyOperations.getBoolean(featureSelectionFold, "value"), SPropertyOperations.getString(classification, "classname"), SPropertyOperations.getString(classification, "parameters"), otherOptions.value + SPropertyOperations.getString(classification, "otherOption") + " --which-gene-list ${" + SPropertyOperations.getString(SLinkOperations.getTarget(genelistNode, "savedGenelist", false), "name") + "}");
                          }
                        });
                      } else {
                        Approach_Behavior.call_generateModel_8241402136296602911(thisNode, approachMethod.value, "", SPropertyOperations.getBoolean(featureSelectionFold, "value"), SPropertyOperations.getString(classification, "classname"), SPropertyOperations.getString(classification, "parameters"), otherOptions.value + SPropertyOperations.getString(classification, "otherOption") + " --which-gene-list ${" + SPropertyOperations.getString(SLinkOperations.getTarget(genelistNode, "savedGenelist", false), "name") + "}");
                      }
                    }
                  });
                } else {
                  if (SPropertyOperations.getString(classification, "name").matches("SVMTuneC")) {
                    ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(SLinkOperations.getTarget(SLinkOperations.getTarget(thisNode, "classificationInfo", true), "classificationProperties", true), "svmTuneCProperties", true), "cValue", true)).visitAll(new IVisitor<SNode>() {
                      public void visit(SNode cValue) {
                        Approach_Behavior.call_generateModel_8241402136296602911(thisNode, approachMethod.value, SPropertyOperations.getString(cValue, "value"), SPropertyOperations.getBoolean(featureSelectionFold, "value"), SPropertyOperations.getString(classification, "classname"), SPropertyOperations.getString(classification, "parameters"), otherOptions.value + SPropertyOperations.getString(classification, "otherOption"));
                      }
                    });
                  } else {
                    Approach_Behavior.call_generateModel_8241402136296602911(thisNode, approachMethod.value, "", SPropertyOperations.getBoolean(featureSelectionFold, "value"), SPropertyOperations.getString(classification, "classname"), SPropertyOperations.getString(classification, "parameters"), otherOptions.value + SPropertyOperations.getString(classification, "otherOption"));
                  }
                }

                // Writes sequence file 
                try {
                  String sequenceFileName = sequenceFolder + "generated-" + approachMethod.value + ".sequence";
                  FileWriter file = new FileWriter(sequenceFileName);
                  PrintWriter writer = new PrintWriter(file);
                  writer.print("def label=" + approachMethod.value + genelistDef.value + "-%model-id%\n");
                  writer.print("def predictions-filename=%dataset-name%-%label%-prediction-table.txt\n");
                  writer.print("def survivial=%survival%\n");
                  writer.print(defs.value);
                  writer.print("#\n");
                  writer.print("addoption required:other-options:Other DAVMode options can be provided here\n");
                  writer.print("addoption required:split-id:id of split being processed\n");
                  writer.print("addoption required:num-features:Number of features in the generated model\n");
                  writer.print(addoptions.value);
                  writer.print(SPropertyOperations.getString(classification, "addoption"));
                  writer.print("#\n");
                  writer.print("#\n");
                  writer.print(fsLine.value);
                  writer.print(Approach_Behavior.call_getModelLine_1870354875254016704(thisNode, wholeChip.value, geneticAlgorithm.value, (genelist.value && !(twoFS.value)), SPropertyOperations.getString(classification, "name")));
                  writer.print(Approach_Behavior.call_getPredictLine_1870354875254442471(thisNode, SPropertyOperations.getString(classification, "name")));
                  writer.close();
                  file.close();
                } catch (Exception e) {
                  if (LOG.isEnabledFor(Level.ERROR)) {
                    LOG.error("Error printing sequence files", e);
                  }
                }
              }
            });
          }
        });
      }
    });
  }

  public static void call_generateModel_8241402136296602911(SNode thisNode, String approachMethod, String cValue, boolean fsFold, String className, String classParams, String otherOptions) {
    SNode genModel = SConceptOperations.createNewNode("org.campagnelab.bdval.structure.ModelToGenerate", null);
    SPropertyOperations.set(genModel, "name", WordUtils.capitalize(approachMethod.replaceAll("\\+", " \\+ ").replaceAll("-", ", ")));
    SPropertyOperations.set(genModel, "featureSelectionFold", "" + (fsFold));
    SPropertyOperations.set(genModel, "sequenceFile", "generated-" + approachMethod + ".sequence");
    SPropertyOperations.set(genModel, "allClassifierParameters", " --classifier " + className + " --classifier-parameters " + classParams);
    SPropertyOperations.set(genModel, "otherOptions", otherOptions);
    if ((cValue != null && cValue.length() > 0)) {
      SPropertyOperations.set(genModel, "name", SPropertyOperations.getString(genModel, "name") + " (c=" + cValue + ")");
      SPropertyOperations.set(genModel, "allClassifierParameters", SPropertyOperations.getString(genModel, "allClassifierParameters") + ",C=" + cValue);
    }
    ListSequence.fromList(SLinkOperations.getTargets(thisNode, "modelToGenerate", true)).addElement(genModel);
  }

  public static String call_getFSLine_3649519271357483092(SNode thisNode, boolean wholeChip, boolean genelist, String sequenceCommand, String sequenceInfo, String sequenceNumFeatures, boolean first, boolean twoFS, boolean fsFold) {
    if ((wholeChip || genelist) && first) {
      return "";
    } else {
      return "-m" + sequenceCommand + " --overwrite-output true -o" + Approach_Behavior.call_getOutputFileName_3649519271357483143(thisNode, first, twoFS) + " --output-gene-list --gene-list" + Approach_Behavior.call_getGeneList_4989762282933334050(thisNode, genelist, first, twoFS) + " --gene-features-dir %gene-features-dir%" + sequenceInfo + sequenceNumFeatures + Approach_Behavior.call_getNumFeatures_3649519271357483162(thisNode, first, twoFS) + " %other-options%" + " --split-type" + Approach_Behavior.call_getSplitType_3649519271357483198(thisNode, first, fsFold) + "\n";
    }
  }

  public static String call_getModelLine_1870354875254016704(SNode thisNode, boolean wholeChip, boolean geneticAlgorithm, boolean genelistModify, String classifier) {
    String genelistString = " %label%|%dataset-name%-%split-id%-%label%-features.txt";
    String gaString = "";
    if (wholeChip) {
      genelistString = " full";
    }
    if (geneticAlgorithm) {
      gaString = " --use-parameters %dataset-name%-%split-id%-%label%-optimal-parameters.txt";
    }
    if (genelistModify) {
      genelistString = " %gene-list-file%";
    }
    return "-m write-model --overwrite-output true --gene-list" + genelistString + gaString + " %other-options% --split-type training --model-prefix " + classifier + "_%dataset-name%-%split-id%-%label%\n";
  }

  public static String call_getPredictLine_1870354875254442471(SNode thisNode, String classifier) {
    return "-m predict --overwrite-output false --model " + classifier + "_%dataset-name%-%split-id%-%label%.model -o %predictions-filename% %other-options%" + " --split-type test --true-labels %conditions%";
  }

  public static String call_getOutputFileName_3649519271357483143(SNode thisNode, boolean first, boolean twoFS) {
    if (first && twoFS) {
      return " %dataset-name%-%split-id%-%label%-intermediate-features.txt";
    } else {
      return " %dataset-name%-%split-id%-%label%-features.txt";
    }
  }

  public static String call_getGeneList_4989762282933334050(SNode thisNode, boolean geneList, boolean first, boolean twoFS) {
    if (geneList) {
      return " %gene-list-file%";
    } else if (!(first) && twoFS) {
      return " %label%|%dataset-name%-%split-id%-%label%-intermediate-features.txt";
    } else {
      return " full";
    }

  }

  public static String call_getNumFeatures_3649519271357483162(SNode thisNode, boolean first, boolean twoFS) {
    if (first && twoFS) {
      return " %max-intermediate-features%";
    } else {
      return " %num-features%";
    }

  }

  public static String call_getSplitType_3649519271357483198(SNode thisNode, boolean first, boolean fsFold) {
    if (first && fsFold) {
      return " feature-selection";
    } else {
      return " training";
    }
  }

  protected static Logger LOG = LogManager.getLogger(Approach_Behavior.class);
}
