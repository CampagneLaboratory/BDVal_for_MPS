<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:91a4ef63-e30e-4b86-bcdc-748a33d96fa7(org.campagnelab.bdval.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="-1" />
    <use id="5ec1cd3d-0a50-4049-a8fa-ae768d7baa25" name="org.campagnelab.mps.XChart" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="gbgq" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.execution.util(MPS.IDEA/com.intellij.execution.util@java_stub)" />
    <import index="4fqr" ref="r:fa713d69-08ea-4732-b1f2-cb07f9e103ef(jetbrains.mps.execution.util.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1082978499127" name="jetbrains.mps.lang.structure.structure.ConstrainedDataTypeDeclaration" flags="ng" index="Az7Fb">
        <property id="1083066089218" name="constraint" index="FLfZY" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="67x0xp6fMLS">
    <property role="TrG5h" value="Input" />
    <property role="34LRSv" value="input" />
    <property role="R4oN_" value="File containing input (table of ID's and genes)" />
    <property role="3GE5qa" value="dataset" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1E7UGCp8Bfm" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="file" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1E7UGCp0R2t" resolve="File" />
    </node>
    <node concept="1TJgyj" id="67x0xp6jqPe" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="sample" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="67x0xp6iM8y" resolve="Sample" />
    </node>
    <node concept="1TJgyj" id="67x0xp6jYXR" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="displayRow" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="67x0xp6iVjH" resolve="DisplayRow" />
    </node>
    <node concept="1TJgyi" id="67x0xp6jYXU" role="1TKVEl">
      <property role="TrG5h" value="numberOfSamples" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="7dyeNdhfBrD" role="1TKVEl">
      <property role="TrG5h" value="numberOfFeatures" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="67x0xp6glH2">
    <property role="TrG5h" value="DataSet" />
    <property role="34LRSv" value="dataset" />
    <property role="R4oN_" value="A set containing a platform file, input file, and the conditions for investigation" />
    <property role="3GE5qa" value="dataset" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="g7X9E3GxRU" role="1TKVEl">
      <property role="TrG5h" value="run" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="67x0xp6glHo" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="input" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="67x0xp6fMLS" resolve="Input" />
    </node>
    <node concept="1TJgyj" id="69ees3rLBNe" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="task" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="69ees3rLBNq" resolve="Task" />
    </node>
    <node concept="1TJgyj" id="67x0xp6goEZ" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="cids" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="67x0xp6glHc" resolve="CIDs" />
    </node>
    <node concept="1TJgyj" id="4kZc_K5DcgM" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="otherFiles" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4kZc_K5CRF8" resolve="OtherFiles" />
    </node>
    <node concept="PrWs8" id="67x0xp6gn4u" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="67x0xp6glH7">
    <property role="TrG5h" value="Platform" />
    <property role="34LRSv" value="platform" />
    <property role="R4oN_" value="File containing platform" />
    <property role="3GE5qa" value="" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3pvWWvhB_oY" role="1TKVEl">
      <property role="TrG5h" value="floor" />
      <ref role="AX2Wp" node="4kZc_K3A45b" resolve="float" />
    </node>
    <node concept="1TJgyj" id="1E7UGCp8Au5" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="file" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1E7UGCp0R2t" resolve="File" />
    </node>
    <node concept="1TJgyj" id="3pvWWvhHPUm" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="arrayParameter" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="3pvWWvhHNjq" resolve="ArrayParameter" />
    </node>
  </node>
  <node concept="1TIwiD" id="67x0xp6glHc">
    <property role="TrG5h" value="CIDs" />
    <property role="34LRSv" value="cids" />
    <property role="R4oN_" value="File containing phenotypes and Ids in columns" />
    <property role="3GE5qa" value="dataset" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5eTltFGOB45" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="mismatches" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="67x0xp6iM8y" resolve="Sample" />
    </node>
    <node concept="1TJgyj" id="7LxCMIuuxZy" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="file" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1E7UGCp0R2t" resolve="File" />
    </node>
  </node>
  <node concept="1TIwiD" id="67x0xp6iM8y">
    <property role="TrG5h" value="Sample" />
    <property role="34LRSv" value="sample" />
    <property role="R4oN_" value="A sample: must have an id and optionally has an endpoint" />
    <property role="3GE5qa" value="dataset" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="69ees3rLOXZ" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="category" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="69ees3rMbdi" resolve="CategoryReference" />
    </node>
    <node concept="PrWs8" id="3LcHJp$bVVJ" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="67x0xp6iVjH">
    <property role="TrG5h" value="DisplayRow" />
    <property role="R4oN_" value="Stores the values of a row of the input to be displayed" />
    <property role="34LRSv" value="displayRow" />
    <property role="3GE5qa" value="dataset" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3LcHJpzZgd1" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="displayValue" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="3LcHJpzZgd3" resolve="DisplayValue" />
    </node>
  </node>
  <node concept="1TIwiD" id="3LcHJpzZgd3">
    <property role="TrG5h" value="DisplayValue" />
    <property role="3GE5qa" value="dataset" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3LcHJpzZi0v" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="3LcHJp$66v$">
    <property role="TrG5h" value="Endpoint" />
    <property role="34LRSv" value="endpoint" />
    <property role="R4oN_" value="A characteristic of interest under investigation ex. diseased" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="69ees3rKdch" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="categories" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="69ees3rKdce" resolve="EndpointCategory" />
    </node>
    <node concept="PrWs8" id="3LcHJp$dV3K" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="2UUqZtvS4$K">
    <property role="TrG5h" value="Project" />
    <property role="34LRSv" value="project" />
    <property role="R4oN_" value="An entire project which can contain multiple datasets " />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6On4RMWaM4r" role="1TKVEl">
      <property role="TrG5h" value="projectFolder" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="4t8BCwH0y9n" role="1TKVEl">
      <property role="TrG5h" value="proceed" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="69ees3tIP8T" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="properties" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="69ees3tIP72" resolve="Properties" />
    </node>
    <node concept="1TJgyj" id="7LxCMIvKV7C" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="status" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7LxCMIvKV6p" resolve="Status" />
    </node>
    <node concept="1TJgyj" id="6q92Kfr5RCt" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="approach" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="6q92Kfr5RCI" resolve="ModelingApproaches" />
    </node>
    <node concept="1TJgyj" id="69ees3rL_dv" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="endpoint" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="3LcHJp$66v$" resolve="Endpoint" />
    </node>
    <node concept="1TJgyj" id="7LxCMIvpr4i" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="platform" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="67x0xp6glH7" resolve="Platform" />
    </node>
    <node concept="1TJgyj" id="2UUqZtvS4_j" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="dataset" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="67x0xp6glH2" resolve="DataSet" />
    </node>
    <node concept="PrWs8" id="2UUqZtvS4_h" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="Y5ZQ3knP$t" role="PzmwI">
      <ref role="PrY4T" to="4fqr:431DWIovi3l" resolve="IMainClass" />
    </node>
  </node>
  <node concept="1TIwiD" id="69ees3rKdce">
    <property role="TrG5h" value="EndpointCategory" />
    <property role="34LRSv" value="endpointCategory" />
    <property role="R4oN_" value="The condition of the sample for a specific endpoint" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="69ees3rKdcf" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="69ees3rLBNq">
    <property role="TrG5h" value="Task" />
    <property role="3GE5qa" value="dataset" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="69ees3rMbdl" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="categoryReference" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="69ees3rMbdi" resolve="CategoryReference" />
    </node>
    <node concept="1TJgyj" id="69ees3rM0Ol" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="endpoint" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3LcHJp$66v$" resolve="Endpoint" />
    </node>
  </node>
  <node concept="1TIwiD" id="69ees3rMbdi">
    <property role="TrG5h" value="CategoryReference" />
    <property role="3GE5qa" value="dataset" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="69ees3rMbdj" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="endpointCategory" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="69ees3rKdce" resolve="EndpointCategory" />
    </node>
  </node>
  <node concept="1TIwiD" id="69ees3tIP72">
    <property role="TrG5h" value="Properties" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1E7UGCp8Qtp" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="outputDirectory" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1E7UGCp8PB_" resolve="Directory" />
    </node>
    <node concept="1TJgyj" id="1E7UGCp8Qts" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="bdvalDirectory" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1E7UGCp8PB_" resolve="Directory" />
    </node>
    <node concept="1TJgyj" id="1E7UGCp8Qtw" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="antDirectory" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1E7UGCp8PB_" resolve="Directory" />
    </node>
    <node concept="1TJgyj" id="43loRlfv4aI" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="computerType" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="43loRlfv4d2" resolve="ComputerType" />
    </node>
    <node concept="1TJgyi" id="69ees3tIP7S" role="1TKVEl">
      <property role="TrG5h" value="threads" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="69ees3tIP7V" role="1TKVEl">
      <property role="TrG5h" value="memory" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="2BpIVDBYfrR" role="1TKVEl">
      <property role="TrG5h" value="directoryName" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="1Ay3jW4Oxqg" role="1TKVEl">
      <property role="TrG5h" value="tagDescription" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="g7X9E3yIB2">
    <property role="TrG5h" value="Integer" />
    <property role="3GE5qa" value="tools" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="g7X9E3yIB3" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="6q92Kfr5JrG">
    <property role="TrG5h" value="NaiveBayes" />
    <property role="34LRSv" value="Naive Bayes" />
    <property role="3GE5qa" value="classificationApproaches.classifications" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6q92KfrfJqQ" role="PzmwI">
      <ref role="PrY4T" node="6q92KfrfJms" resolve="ClassificationApproach" />
    </node>
  </node>
  <node concept="1TIwiD" id="6q92Kfr5Jty">
    <property role="TrG5h" value="LogitBoost" />
    <property role="34LRSv" value="Logistic Boost" />
    <property role="3GE5qa" value="classificationApproaches.classifications" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6q92KfrfJoM" role="PzmwI">
      <ref role="PrY4T" node="6q92KfrfJms" resolve="ClassificationApproach" />
    </node>
  </node>
  <node concept="1TIwiD" id="6q92Kfr5Jtz">
    <property role="TrG5h" value="Logistic" />
    <property role="34LRSv" value="Logistic" />
    <property role="3GE5qa" value="classificationApproaches.classifications" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6q92KfrfJoK" role="PzmwI">
      <ref role="PrY4T" node="6q92KfrfJms" resolve="ClassificationApproach" />
    </node>
  </node>
  <node concept="1TIwiD" id="6q92Kfr5Jt$">
    <property role="TrG5h" value="RandomForest" />
    <property role="34LRSv" value="Random Forest" />
    <property role="3GE5qa" value="classificationApproaches.classifications" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6q92KfrfJtb" role="PzmwI">
      <ref role="PrY4T" node="6q92KfrfJms" resolve="ClassificationApproach" />
    </node>
  </node>
  <node concept="1TIwiD" id="6q92Kfr5Jt_">
    <property role="TrG5h" value="KStar" />
    <property role="34LRSv" value="K Star" />
    <property role="3GE5qa" value="classificationApproaches.classifications" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6q92KfrfJoI" role="PzmwI">
      <ref role="PrY4T" node="6q92KfrfJms" resolve="ClassificationApproach" />
    </node>
  </node>
  <node concept="1TIwiD" id="6q92Kfr5JtA">
    <property role="TrG5h" value="SVM" />
    <property role="34LRSv" value="SVM" />
    <property role="3GE5qa" value="classificationApproaches.classifications" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6q92KfrfJoc" role="PzmwI">
      <ref role="PrY4T" node="6q92KfrfJms" resolve="ClassificationApproach" />
    </node>
  </node>
  <node concept="1TIwiD" id="6q92Kfr5RCI">
    <property role="TrG5h" value="ModelingApproaches" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3v_Iv_IXVD$" role="1TKVEl">
      <property role="TrG5h" value="evaluateStatistics" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="g7X9E3yI_h" role="1TKVEl">
      <property role="TrG5h" value="externalRepeats" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="g7X9E3yI_x" role="1TKVEl">
      <property role="TrG5h" value="externalFolds" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyj" id="7dyeNdhdJ3E" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="featureSelectionInfo" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1BOPt_Rb6Ug" resolve="FeatureSelectionChoices" />
    </node>
    <node concept="1TJgyj" id="4kZc_K5UTAw" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="classificationInfo" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4kZc_K5UCJa" resolve="ClassificationChoices" />
    </node>
    <node concept="1TJgyj" id="1BOPt_RyrwO" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="modelToGenerate" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="1BOPt_Ryrmp" resolve="ModelToGenerate" />
    </node>
  </node>
  <node concept="PlHQZ" id="6q92KfrfJms">
    <property role="TrG5h" value="ClassificationApproach" />
    <property role="3GE5qa" value="classificationApproaches.classifications" />
    <node concept="1TJgyi" id="uZt_l2mUH$" role="1TKVEl">
      <property role="TrG5h" value="classname" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3a_GB3Tdy1w" role="1TKVEl">
      <property role="TrG5h" value="wekaClass" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="1BOPt_RzAT5" role="1TKVEl">
      <property role="TrG5h" value="parameters" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3a_GB3TdxU3" role="1TKVEl">
      <property role="TrG5h" value="otherOption" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3a_GB3Tij2a" role="1TKVEl">
      <property role="TrG5h" value="addoption" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="1PXXmfp2hJf" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="PlHQZ" id="43loRlfqFNp">
    <property role="TrG5h" value="PathwayAggregationMethod" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelectionParameters.pathwaysProperties" />
    <node concept="PrWs8" id="4kZc_K5lmNz" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="43loRlfqNVF">
    <property role="TrG5h" value="PCAAggregation" />
    <property role="34LRSv" value="PCA" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelectionParameters.pathwaysProperties" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="43loRlfqNVG" role="PzmwI">
      <ref role="PrY4T" node="43loRlfqFNp" resolve="PathwayAggregationMethod" />
    </node>
  </node>
  <node concept="1TIwiD" id="43loRlfqQxb">
    <property role="TrG5h" value="AverageAggregation" />
    <property role="34LRSv" value="average" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelectionParameters.pathwaysProperties" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="43loRlf$PPf" role="PzmwI">
      <ref role="PrY4T" node="43loRlfqFNp" resolve="PathwayAggregationMethod" />
    </node>
  </node>
  <node concept="PlHQZ" id="43loRlfv4d2">
    <property role="TrG5h" value="ComputerType" />
    <property role="3GE5qa" value="computer" />
    <node concept="PrWs8" id="43loRlhkqZo" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="43loRlfv4d5">
    <property role="TrG5h" value="DesktopComputer" />
    <property role="34LRSv" value="Desktop" />
    <property role="3GE5qa" value="computer" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="43loRlf$PPj" role="PzmwI">
      <ref role="PrY4T" node="43loRlfv4d2" resolve="ComputerType" />
    </node>
  </node>
  <node concept="1TIwiD" id="43loRlfv4e5">
    <property role="TrG5h" value="ServerComputer" />
    <property role="34LRSv" value="Server" />
    <property role="3GE5qa" value="computer" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="43loRlf$PPh" role="PzmwI">
      <ref role="PrY4T" node="43loRlfv4d2" resolve="ComputerType" />
    </node>
  </node>
  <node concept="1TIwiD" id="43loRlgjfN9">
    <property role="TrG5h" value="SVMIterativeParameter" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelectionParameters" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3a_GB3Ux7Rv" role="1TKVEl">
      <property role="TrG5h" value="ratio" />
      <ref role="AX2Wp" node="4kZc_K3A45b" resolve="float" />
    </node>
  </node>
  <node concept="1TIwiD" id="43loRlhqPGM">
    <property role="TrG5h" value="TTestParameters" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelectionParameters" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="43loRlhqPSh" role="1TKVEl">
      <property role="TrG5h" value="alpha" />
      <ref role="AX2Wp" node="4kZc_K3A45b" resolve="float" />
    </node>
  </node>
  <node concept="1TIwiD" id="3v_Iv_HVlIQ">
    <property role="TrG5h" value="FoldchangeParameters" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelectionParameters" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3v_Iv_HVlIT" role="1TKVEl">
      <property role="TrG5h" value="phi" />
      <ref role="AX2Wp" node="4kZc_K3A45b" resolve="float" />
    </node>
  </node>
  <node concept="1TIwiD" id="3v_Iv_HVvwz">
    <property role="TrG5h" value="GeneticAlgorithmParameters" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelectionParameters.geneticAlgorithmProperties" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3v_Iv_HVxhp" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="performance" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="3v_Iv_HVw8K" resolve="GAPerformance" />
    </node>
    <node concept="1TJgyi" id="3v_Iv_HVvwA" role="1TKVEl">
      <property role="TrG5h" value="wrapperPopulationSize" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="3v_Iv_HVvwD" role="1TKVEl">
      <property role="TrG5h" value="wrapperNumberIterations" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="3v_Iv_HVvwH" role="1TKVEl">
      <property role="TrG5h" value="internalCVRepeats" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="3v_Iv_HVvwT" role="1TKVEl">
      <property role="TrG5h" value="internalCVFolds" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="4kZc_K3yPmD" role="1TKVEl">
      <property role="TrG5h" value="ratio" />
      <ref role="AX2Wp" node="4kZc_K3A45b" resolve="float" />
    </node>
  </node>
  <node concept="PlHQZ" id="3v_Iv_HVw8K">
    <property role="TrG5h" value="GAPerformance" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelectionParameters.geneticAlgorithmProperties" />
    <node concept="PrWs8" id="3v_Iv_HVw8L" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3v_Iv_HVw9B">
    <property role="TrG5h" value="MCCPerformance" />
    <property role="34LRSv" value="MCC" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelectionParameters.geneticAlgorithmProperties" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3v_Iv_HVwav" role="PzmwI">
      <ref role="PrY4T" node="3v_Iv_HVw8K" resolve="GAPerformance" />
    </node>
  </node>
  <node concept="1TIwiD" id="3v_Iv_HVwas">
    <property role="TrG5h" value="AUCPerformance" />
    <property role="34LRSv" value="AUC" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelectionParameters.geneticAlgorithmProperties" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3v_Iv_HVwat" role="PzmwI">
      <ref role="PrY4T" node="3v_Iv_HVw8K" resolve="GAPerformance" />
    </node>
  </node>
  <node concept="1TIwiD" id="43loRlgjfMu">
    <property role="TrG5h" value="FeatureSelectionParameters" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelectionParameters" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="43loRlhqPGJ" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="ttest" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="43loRlhqPGM" resolve="TTestParameters" />
    </node>
    <node concept="1TJgyj" id="3a_GB3UQIv6" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="svmIterative" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="43loRlgjfN9" resolve="SVMIterativeParameter" />
    </node>
    <node concept="1TJgyj" id="4kZc_K3vcfA" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="minMax" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="4kZc_K3v7dm" resolve="MinMaxParameters" />
    </node>
    <node concept="1TJgyj" id="3v_Iv_HVlIM" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="foldchange" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="3v_Iv_HVlIQ" resolve="FoldchangeParameters" />
    </node>
    <node concept="1TJgyj" id="3v_Iv_HVvvE" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="geneticAlgorithm" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="3v_Iv_HVvwz" resolve="GeneticAlgorithmParameters" />
    </node>
    <node concept="1TJgyj" id="3v_Iv_IQMHe" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="pathways" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="5Eg1s3pAxtA" resolve="PathwayParameters" />
    </node>
    <node concept="1TJgyj" id="4kZc_K4Ucr3" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="permutation" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="4kZc_K4Sob7" resolve="PermutationParameters" />
    </node>
    <node concept="1TJgyj" id="79vlTg1Vl02" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="kendallTau" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="79vlTg1VjN6" resolve="KendallTauParameters" />
    </node>
    <node concept="1TJgyj" id="4kZc_K5BElT" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="coxReg" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="4kZc_K5BDmb" resolve="CoxRegParameters" />
    </node>
    <node concept="1TJgyj" id="7LxCMItG0vu" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="savedGenelist" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="79vlTg0MuPb" resolve="SavedGenelist" />
    </node>
  </node>
  <node concept="1TIwiD" id="6q92Kfr5Sux">
    <property role="TrG5h" value="FeatureSelectionFoldFalse" />
    <property role="34LRSv" value="false" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelectionFold" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7dyeNdhbNKR" role="PzmwI">
      <ref role="PrY4T" node="7dyeNdhbNdi" resolve="FeatureSelectionFold" />
    </node>
  </node>
  <node concept="1TIwiD" id="6q92Kfr5HDs">
    <property role="TrG5h" value="FeatureSelectionFoldTrue" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelectionFold" />
    <property role="34LRSv" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7dyeNdhbNKT" role="PzmwI">
      <ref role="PrY4T" node="7dyeNdhbNdi" resolve="FeatureSelectionFold" />
    </node>
  </node>
  <node concept="PlHQZ" id="7dyeNdhbNdi">
    <property role="TrG5h" value="FeatureSelectionFold" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelectionFold" />
    <node concept="1TJgyi" id="1BOPt_Rsj$u" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="16TvQL4fK1C" role="1TKVEl">
      <property role="TrG5h" value="splitType1" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="16TvQL4fLyz" role="1TKVEl">
      <property role="TrG5h" value="splitType2" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="7dyeNdhbNdj" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="5Eg1s3pAxtA">
    <property role="TrG5h" value="PathwayParameters" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelectionParameters.pathwaysProperties" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5Eg1s3pAxtB" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="aggregationMethod" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="43loRlfqFNp" resolve="PathwayAggregationMethod" />
    </node>
  </node>
  <node concept="1TIwiD" id="1BOPt_RaTtC">
    <property role="TrG5h" value="Ttest" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelections" />
    <property role="34LRSv" value="T-Test" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1BOPt_Rb6pK" role="PzmwI">
      <ref role="PrY4T" node="1BOPt_RaYip" resolve="FeatureSelection" />
    </node>
  </node>
  <node concept="PlHQZ" id="1BOPt_RaYip">
    <property role="TrG5h" value="FeatureSelection" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelections" />
    <node concept="1TJgyi" id="5ybh7Sb9tiv" role="1TKVEl">
      <property role="TrG5h" value="defs" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3a_GB3Uary1" role="1TKVEl">
      <property role="TrG5h" value="addoptions" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3a_GB3TM6f9" role="1TKVEl">
      <property role="TrG5h" value="otherOptions" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="1BOPt_Rb6pI" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="1BOPt_Rb6Ug">
    <property role="TrG5h" value="FeatureSelectionChoices" />
    <property role="3GE5qa" value="featureSelectionStrategies" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1BOPt_RbsxY" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="numberOfFeatures" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="g7X9E3yIB2" resolve="Integer" />
    </node>
    <node concept="1TJgyj" id="1BOPt_Rbsy3" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="featureSelectionFold" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="7dyeNdhbNdi" resolve="FeatureSelectionFold" />
    </node>
    <node concept="1TJgyj" id="1BOPt_Rbsy0" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="strategy" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="1BOPt_Rjk71" resolve="FeatureSelectionStrategy" />
    </node>
    <node concept="1TJgyj" id="1BOPt_RWcQ4" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="43loRlgjfMu" resolve="FeatureSelectionParameters" />
    </node>
    <node concept="1TJgyi" id="1BOPt_RbsxW" role="1TKVEl">
      <property role="TrG5h" value="maxIntermediateFeatures" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="1BOPt_Rjk71">
    <property role="TrG5h" value="FeatureSelectionStrategy" />
    <property role="3GE5qa" value="featureSelectionStrategies" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3a_GB3TVZok" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="step1" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1BOPt_RaYip" resolve="FeatureSelection" />
    </node>
    <node concept="1TJgyj" id="3a_GB3TVZom" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="step2" />
      <ref role="20lvS9" node="1BOPt_RaYip" resolve="FeatureSelection" />
    </node>
    <node concept="1TJgyj" id="4kZc_K51kLk" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="option" />
      <ref role="20lvS9" node="4kZc_K50WlR" resolve="FeatureSelectionOption" />
    </node>
  </node>
  <node concept="1TIwiD" id="1BOPt_Ryrmp">
    <property role="TrG5h" value="ModelToGenerate" />
    <property role="3GE5qa" value="dataset" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="1BOPt_RyrtA" role="1TKVEl">
      <property role="TrG5h" value="featureSelectionFold" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="1BOPt_RyrtC" role="1TKVEl">
      <property role="TrG5h" value="sequenceFile" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="1BOPt_RyrtF" role="1TKVEl">
      <property role="TrG5h" value="allClassifierParameters" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="1BOPt_RyrwJ" role="1TKVEl">
      <property role="TrG5h" value="otherOptions" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="1E7UGCqhjPW" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3a_GB3THyq_">
    <property role="TrG5h" value="SVMGlobal" />
    <property role="34LRSv" value="SVM Global" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelections" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3a_GB3TLXDL" role="PzmwI">
      <ref role="PrY4T" node="1BOPt_RaYip" resolve="FeatureSelection" />
    </node>
  </node>
  <node concept="1TIwiD" id="3a_GB3UphX2">
    <property role="TrG5h" value="SVMIterative" />
    <property role="34LRSv" value="SVM Iterative" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelections" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3a_GB3UwV$L" role="PzmwI">
      <ref role="PrY4T" node="1BOPt_RaYip" resolve="FeatureSelection" />
    </node>
  </node>
  <node concept="1TIwiD" id="3a_GB3UJx6V">
    <property role="TrG5h" value="FoldChange" />
    <property role="34LRSv" value="Fold Change" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelections" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3a_GB3UJxb3" role="PzmwI">
      <ref role="PrY4T" node="1BOPt_RaYip" resolve="FeatureSelection" />
    </node>
  </node>
  <node concept="1TIwiD" id="4kZc_K3uP5f">
    <property role="TrG5h" value="MinMax" />
    <property role="34LRSv" value="Min/Max" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelections" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4kZc_K3uP5g" role="PzmwI">
      <ref role="PrY4T" node="1BOPt_RaYip" resolve="FeatureSelection" />
    </node>
  </node>
  <node concept="1TIwiD" id="4kZc_K3v7dm">
    <property role="TrG5h" value="MinMaxParameters" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelectionParameters" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="4ykIhbG896v" role="1TKVEl">
      <property role="TrG5h" value="observations" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="4kZc_K3xsu9">
    <property role="TrG5h" value="GeneticAlgorithm" />
    <property role="34LRSv" value="Genetic Algorithm" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelections" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4kZc_K3xsx_" role="PzmwI">
      <ref role="PrY4T" node="1BOPt_RaYip" resolve="FeatureSelection" />
    </node>
  </node>
  <node concept="Az7Fb" id="4kZc_K3A45b">
    <property role="TrG5h" value="float" />
    <property role="FLfZY" value="\\d+(\\.\\d+)?" />
    <property role="3GE5qa" value="tools" />
  </node>
  <node concept="1TIwiD" id="4kZc_K4S4Xg">
    <property role="TrG5h" value="Permutation" />
    <property role="34LRSv" value="Permutation" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelections" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4kZc_K4S5jf" role="PzmwI">
      <ref role="PrY4T" node="1BOPt_RaYip" resolve="FeatureSelection" />
    </node>
  </node>
  <node concept="1TIwiD" id="4kZc_K4Sob7">
    <property role="TrG5h" value="PermutationParameters" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelectionParameters" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="4kZc_K4Sob8" role="1TKVEl">
      <property role="TrG5h" value="alpha" />
      <ref role="AX2Wp" node="4kZc_K3A45b" resolve="float" />
    </node>
  </node>
  <node concept="PlHQZ" id="4kZc_K50WlR">
    <property role="TrG5h" value="FeatureSelectionOption" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelectionOptions" />
    <node concept="1TJgyi" id="4kZc_K50WoE" role="1TKVEl">
      <property role="TrG5h" value="def" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="4kZc_K50WoG" role="1TKVEl">
      <property role="TrG5h" value="addoptions" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="4kZc_K5a326" role="1TKVEl">
      <property role="TrG5h" value="otherOptions" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="4kZc_K5ShnD" role="1TKVEl">
      <property role="TrG5h" value="extraClassifierParameters" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="4kZc_K50WoC" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="4kZc_K50WoN">
    <property role="TrG5h" value="Genelist" />
    <property role="34LRSv" value="Genelist" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelections" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="Y5ZQ3n9bk5" role="PzmwI">
      <ref role="PrY4T" node="1BOPt_RaYip" resolve="FeatureSelection" />
    </node>
  </node>
  <node concept="1TIwiD" id="4kZc_K518eo">
    <property role="TrG5h" value="Pathway" />
    <property role="34LRSv" value="Pathway" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelectionOptions" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4kZc_K518ep" role="PzmwI">
      <ref role="PrY4T" node="4kZc_K50WlR" resolve="FeatureSelectionOption" />
    </node>
  </node>
  <node concept="1TIwiD" id="4kZc_K5uSoz">
    <property role="TrG5h" value="CoxReg" />
    <property role="34LRSv" value="Cox Regression" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelections" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4kZc_K5uSsn" role="PzmwI">
      <ref role="PrY4T" node="1BOPt_RaYip" resolve="FeatureSelection" />
    </node>
  </node>
  <node concept="1TIwiD" id="4kZc_K5BDmb">
    <property role="TrG5h" value="CoxRegParameters" />
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelectionParameters" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="4kZc_K5BDrA" role="1TKVEl">
      <property role="TrG5h" value="alpha" />
      <ref role="AX2Wp" node="4kZc_K3A45b" resolve="float" />
    </node>
  </node>
  <node concept="1TIwiD" id="4kZc_K5CRF8">
    <property role="TrG5h" value="OtherFiles" />
    <property role="3GE5qa" value="dataset" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1E7UGCp8Dt4" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="pathwaysFile" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1E7UGCp0R2t" resolve="File" />
    </node>
    <node concept="1TJgyj" id="1E7UGCp8Dt6" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="geneToProbesFile" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1E7UGCp0R2t" resolve="File" />
    </node>
    <node concept="1TJgyj" id="1E7UGCp8Dt9" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="survivalFile" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1E7UGCp0R2t" resolve="File" />
    </node>
    <node concept="1TJgyj" id="79vlTg0Z5Xp" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="genelistFiles" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="79vlTg0Z5Xu" resolve="GenelistRef" />
    </node>
  </node>
  <node concept="1TIwiD" id="4kZc_K5UCJa">
    <property role="3GE5qa" value="classificationApproaches" />
    <property role="TrG5h" value="ClassificationChoices" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4kZc_KaSIsY" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="classification" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="6q92KfrfJms" resolve="ClassificationApproach" />
    </node>
    <node concept="1TJgyj" id="4kZc_K5UHas" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="classificationProperties" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4kZc_K5UCJd" resolve="ClassificationParameters" />
    </node>
  </node>
  <node concept="1TIwiD" id="4kZc_K5UCJd">
    <property role="TrG5h" value="ClassificationParameters" />
    <property role="3GE5qa" value="classificationApproaches.classificationProperties" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4kZc_K5UDPk" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="svmProperties" />
      <ref role="20lvS9" node="4kZc_K5UCJe" resolve="SVMParameters" />
    </node>
    <node concept="1TJgyj" id="4kZc_K600g6" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="svmTuneCProperties" />
      <ref role="20lvS9" node="4kZc_K5Vo6f" resolve="SVMTuneCParameters" />
    </node>
  </node>
  <node concept="1TIwiD" id="4kZc_K5UCJe">
    <property role="TrG5h" value="SVMParameters" />
    <property role="3GE5qa" value="classificationApproaches.classificationProperties" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="4kZc_K5UCJf" role="1TKVEl">
      <property role="TrG5h" value="probabilisticSVM" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="4kZc_K5Vo6f">
    <property role="TrG5h" value="SVMTuneCParameters" />
    <property role="3GE5qa" value="classificationApproaches.classificationProperties" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4kZc_K5Vo6g" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="cValue" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="6On4RMSYp25" resolve="Float" />
    </node>
  </node>
  <node concept="1TIwiD" id="4kZc_K6uiut">
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelections" />
    <property role="TrG5h" value="WholeChip" />
    <property role="34LRSv" value="Whole Chip" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4kZc_K6uiuu" role="PzmwI">
      <ref role="PrY4T" node="1BOPt_RaYip" resolve="FeatureSelection" />
    </node>
  </node>
  <node concept="1TIwiD" id="4kZc_KaSAzB">
    <property role="3GE5qa" value="classificationApproaches.classifications" />
    <property role="TrG5h" value="SVMTuneC" />
    <property role="34LRSv" value="SVM Tune C" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4kZc_KaSAAZ" role="PzmwI">
      <ref role="PrY4T" node="6q92KfrfJms" resolve="ClassificationApproach" />
    </node>
  </node>
  <node concept="1TIwiD" id="6On4RMSYp25">
    <property role="TrG5h" value="Float" />
    <property role="3GE5qa" value="tools" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6On4RMSYp26" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" node="4kZc_K3A45b" resolve="float" />
    </node>
  </node>
  <node concept="1TIwiD" id="1E7UGCp0R2t">
    <property role="TrG5h" value="File" />
    <property role="3GE5qa" value="tools" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="1E7UGCp0R5I" role="1TKVEl">
      <property role="TrG5h" value="fileLocation" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="1E7UGCp8PB_">
    <property role="TrG5h" value="Directory" />
    <property role="3GE5qa" value="tools" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="1E7UGCp8PBA" role="1TKVEl">
      <property role="TrG5h" value="directoryLocation" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="79vlTg0MuPb">
    <property role="TrG5h" value="SavedGenelist" />
    <property role="R5$K2" value="true" />
    <property role="R5$K7" value="false" />
    <property role="3GE5qa" value="featureSelectionStrategies" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="79vlTg0MuV0" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="file" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1E7UGCp0R2t" resolve="File" />
    </node>
    <node concept="PrWs8" id="79vlTg0MuV2" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="79vlTg0Z5Xu">
    <property role="TrG5h" value="GenelistRef" />
    <property role="3GE5qa" value="featureSelectionStrategies" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="79vlTg0Z5XU" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="savedGenelist" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="79vlTg0MuPb" resolve="SavedGenelist" />
    </node>
  </node>
  <node concept="1TIwiD" id="79vlTg1UU6z">
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelections" />
    <property role="TrG5h" value="KendallTau" />
    <property role="34LRSv" value="Kendall Tau" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="79vlTg1UU6$" role="PzmwI">
      <ref role="PrY4T" node="1BOPt_RaYip" resolve="FeatureSelection" />
    </node>
  </node>
  <node concept="1TIwiD" id="79vlTg1VjN6">
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelectionParameters" />
    <property role="TrG5h" value="KendallTauParameters" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="79vlTg1VjT0" role="1TKVEl">
      <property role="TrG5h" value="ratio" />
      <ref role="AX2Wp" node="4kZc_K3A45b" resolve="float" />
    </node>
  </node>
  <node concept="1TIwiD" id="3pvWWvhHNgr">
    <property role="TrG5h" value="TwoColorArray" />
    <property role="34LRSv" value="Two Color Array" />
    <property role="3GE5qa" value="dataset.arrayParameters" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3pvWWvhHPVo" role="PzmwI">
      <ref role="PrY4T" node="3pvWWvhHNjq" resolve="ArrayParameter" />
    </node>
  </node>
  <node concept="PlHQZ" id="3pvWWvhHNjq">
    <property role="TrG5h" value="ArrayParameter" />
    <property role="3GE5qa" value="dataset.arrayParameters" />
    <node concept="1TJgyi" id="3pvWWvhHPXy" role="1TKVEl">
      <property role="TrG5h" value="command" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="3pvWWvhHRb4">
    <property role="TrG5h" value="LoggedArray" />
    <property role="34LRSv" value="Logged Array" />
    <property role="3GE5qa" value="dataset.arrayParameters" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3pvWWvhHRcw" role="PzmwI">
      <ref role="PrY4T" node="3pvWWvhHNjq" resolve="ArrayParameter" />
    </node>
  </node>
  <node concept="1TIwiD" id="3pvWWvhHSbh">
    <property role="TrG5h" value="SingleColorArray" />
    <property role="34LRSv" value="Single Color Array" />
    <property role="3GE5qa" value="dataset.arrayParameters" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3pvWWvhHSch" role="PzmwI">
      <ref role="PrY4T" node="3pvWWvhHNjq" resolve="ArrayParameter" />
    </node>
  </node>
  <node concept="1TIwiD" id="7LxCMIvKV6p">
    <property role="TrG5h" value="Status" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7LxCMIvKVjR" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="result" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="7LxCMIvKV8b" resolve="Result" />
    </node>
  </node>
  <node concept="1TIwiD" id="7LxCMIvKV8b">
    <property role="TrG5h" value="Result" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="1MyzK_luQfA" role="1TKVEl">
      <property role="TrG5h" value="directory" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="5ybh7Sc3MGc" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="MCC" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="5ybh7Sc0xDo" resolve="FloatRange" />
    </node>
    <node concept="1TJgyj" id="5ybh7Sc3MHE" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="AUC" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="5ybh7Sc0xDo" resolve="FloatRange" />
    </node>
    <node concept="1TJgyj" id="5ybh7Sc3MHQ" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="RMSE" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="5ybh7Sc0xDo" resolve="FloatRange" />
    </node>
    <node concept="1TJgyj" id="5ybh7Sc3MIa" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="accuracy" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="5ybh7Sc0xDo" resolve="FloatRange" />
    </node>
    <node concept="1TJgyj" id="5ybh7Sc3MIo" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="sensitivity" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="5ybh7Sc0xDo" resolve="FloatRange" />
    </node>
    <node concept="1TJgyj" id="5ybh7Sc3MK6" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="specificity" />
      <ref role="20lvS9" node="5ybh7Sc0xDo" resolve="FloatRange" />
    </node>
    <node concept="1TJgyi" id="7LxCMIw61Sc" role="1TKVEl">
      <property role="TrG5h" value="numberModels" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="5ybh7ScBOs9" role="1TKVEl">
      <property role="TrG5h" value="maqciiFile" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="4jYB9sxSg0y" role="1TKVEl">
      <property role="TrG5h" value="numberFinalModels" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="4jYB9sxSg4y" role="1TKVEl">
      <property role="TrG5h" value="finalModels" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="PrWs8" id="7LxCMIw5VN8" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="5ybh7Sc0xDo">
    <property role="TrG5h" value="FloatRange" />
    <property role="3GE5qa" value="tools" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5ybh7Sc0xDI" role="1TKVEl">
      <property role="TrG5h" value="min" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="5ybh7Sc0xDY" role="1TKVEl">
      <property role="TrG5h" value="max" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
</model>

