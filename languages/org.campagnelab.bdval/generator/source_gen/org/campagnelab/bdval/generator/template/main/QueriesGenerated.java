package org.campagnelab.bdval.generator.template.main;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.template.PropertyMacroContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import org.jetbrains.mps.openapi.model.SNode;
import org.campagnelab.bdval.behavior.DataSet_Behavior;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodesContext;
import jetbrains.mps.generator.template.MappingScriptContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations;
import org.campagnelab.bdval.behavior.Project_Behavior;
import org.campagnelab.bdval.behavior.Approach_Behavior;

@Generated
public class QueriesGenerated {
  public final boolean NEEDS_OPCONTEXT = false;

  public static Object propertyMacro_GetPropertyValue_2125124408384843456(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), "name");
  }

  public static Object propertyMacro_GetPropertyValue_2125124408386290223(final PropertyMacroContext _context) {
    return "${ant.file." + SPropertyOperations.getString(_context.getNode(), "name").replaceAll("\\s", "") + "}";
  }

  public static Object propertyMacro_GetPropertyValue_2125124408386345809(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(SLinkOperations.getTarget(_context.getNode(), "properties", true), "bdvalLocation") + "/buildsupport/build.xml";
  }

  public static Object propertyMacro_GetPropertyValue_1847053361490323918(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(SLinkOperations.getTarget(_context.getNode(), "properties", true), "tagDescription");
  }

  public static Object propertyMacro_GetPropertyValue_4027829922712528219(final PropertyMacroContext _context) {
    return String.valueOf(SPropertyOperations.getBoolean(SLinkOperations.getTarget(_context.getNode(), "approach", true), "enableFlooring"));
  }

  public static Object propertyMacro_GetPropertyValue_4027829922712548839(final PropertyMacroContext _context) {
    return String.valueOf(SPropertyOperations.getBoolean(SLinkOperations.getTarget(_context.getNode(), "approach", true), "evaluateStatistics"));
  }

  public static Object propertyMacro_GetPropertyValue_2125124408386422321(final PropertyMacroContext _context) {
    return String.valueOf(SPropertyOperations.getInteger(SLinkOperations.getTarget(_context.getNode(), "approach", true), "externalRepeats"));
  }

  public static Object propertyMacro_GetPropertyValue_2125124408386469559(final PropertyMacroContext _context) {
    return String.valueOf(SPropertyOperations.getInteger(SLinkOperations.getTarget(_context.getNode(), "approach", true), "externalFolds"));
  }

  public static Object propertyMacro_GetPropertyValue_2125124408386508182(final PropertyMacroContext _context) {
    final Wrappers._T<String> numFeatures = new Wrappers._T<String>("");
    ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(SLinkOperations.getTarget(_context.getNode(), "approach", true), "featureSelectionInfo", true), "numberOfFeatures", true)).visitAll(new IVisitor<SNode>() {
      public void visit(SNode number) {
        numFeatures.value = numFeatures.value + "," + SPropertyOperations.getInteger(number, "value");
      }
    });
    return numFeatures.value.substring(1);
  }

  public static Object propertyMacro_GetPropertyValue_2125124408386578716(final PropertyMacroContext _context) {
    return String.valueOf(SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(_context.getNode(), "approach", true), "featureSelectionInfo", true), "maxIntermediateFeatures"));
  }

  public static Object propertyMacro_GetPropertyValue_1870354875263047230(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(SLinkOperations.getTarget(SLinkOperations.getTarget(_context.getNode(), "approach", true), "featureSelectionInfo", true), "featureSelectionProperties", true), "ttest", true), "cutoff");
  }

  public static Object propertyMacro_GetPropertyValue_2125124408386655251(final PropertyMacroContext _context) {
    return "do." + DataSet_Behavior.call_getName_290469645480322571(_context.getNode());
  }

  public static Object propertyMacro_GetPropertyValue_2125124408386672505(final PropertyMacroContext _context) {
    return String.valueOf(SPropertyOperations.getBoolean(_context.getNode(), "normalTarget"));
  }

  public static Object propertyMacro_GetPropertyValue_2125124408386691000(final PropertyMacroContext _context) {
    final Wrappers._T<String> allDatasets = new Wrappers._T<String>("");
    ListSequence.fromList(SLinkOperations.getTargets(_context.getNode(), "dataset", true)).visitAll(new IVisitor<SNode>() {
      public void visit(SNode dataset) {
        allDatasets.value = allDatasets.value + " " + DataSet_Behavior.call_getName_290469645480322571(dataset);
      }
    });
    return allDatasets.value;
  }

  public static Object propertyMacro_GetPropertyValue_2125124408386645805(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(SLinkOperations.getTarget(_context.getNode(), "properties", true), "bdvalLocation") + "/data/bdval.xml";
  }

  public static Object propertyMacro_GetPropertyValue_1870354875263664529(final PropertyMacroContext _context) {
    return String.valueOf(SPropertyOperations.getBoolean(_context.getNode(), "featureSelectionFold"));
  }

  public static Object propertyMacro_GetPropertyValue_1870354875263664539(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), "sequenceFile");
  }

  public static Object propertyMacro_GetPropertyValue_1870354875263664556(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), "allClassifierParameters");
  }

  public static Object propertyMacro_GetPropertyValue_1870354875263664565(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), "otherOptions");
  }

  public static Object propertyMacro_GetPropertyValue_4671749543985197235(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), "name").replaceAll("\\s", "");
  }

  public static Iterable<SNode> sourceNodesQuery_2125124408386653548(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getTargets(_context.getNode(), "dataset", true);
  }

  public static Iterable<SNode> sourceNodesQuery_1870354875263664572(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getTargets(SLinkOperations.getTarget(_context.getNode(), "approach", true), "modelToGenerate", true);
  }

  public static void mappingScript_CodeBlock_4027829922698953951(final MappingScriptContext _context) {
    ListSequence.fromList(SModelOperations.getNodes(_context.getModel(), "org.campagnelab.bdval.structure.Project")).visitAll(new IVisitor<SNode>() {
      public void visit(SNode project) {
        if (Project_Behavior.call_checkProjectFolder_3976565827571671486(project)) {
          ListSequence.fromList(SLinkOperations.getTargets(project, "dataset", true)).visitAll(new IVisitor<SNode>() {
            public void visit(SNode dataset) {
              DataSet_Behavior.call_generateFiles_6032947574604950587(dataset);
            }
          });
          Project_Behavior.call_createFiles_290469645456423260(project);
          Approach_Behavior.call_createSequenceFiles_1870354875253436007(SLinkOperations.getTarget(project, "approach", true));
        }
      }
    });
  }
}
