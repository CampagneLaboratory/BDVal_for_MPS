<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:91a4ef63-e30e-4b86-bcdc-748a33d96fa7(org.campagnelab.bdval.structure)" version="69">
  <persistence version="8" />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" />
  <import index="tpce" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="w348" modelUID="r:91a4ef63-e30e-4b86-bcdc-748a33d96fa7(org.campagnelab.bdval.structure)" version="69" implicit="yes" />
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7052920786129988728" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Input" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="input" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="File containing input (table of ID's and genes)" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="3367122381610860816" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="fileName" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7052920786130939214" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="sample" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7052920786130772514" resolveInfo="Sample" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7052920786131087223" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="displayRow" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7052920786130810093" resolveInfo="DisplayRow" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7052920786131087226" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="numberOfSamples" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="8314272953671775977" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="numberOfFeatures" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7052920786130131778" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="DataSet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="dataset" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="A set containing a platform file, input file, and the conditions for investigation" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="290469645460315642" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="normalTarget" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="290469645460316012" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="testSet" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4989762283045701399" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="thresholdFloor" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7052920786130131802" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="platform" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7052920786130131783" resolveInfo="Platform" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7052920786130131800" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="input" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7052920786129988728" resolveInfo="Input" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7083662764384091342" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="task" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7083662764384091354" resolveInfo="Task" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7052920786130143935" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="cids" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7052920786130131788" resolveInfo="CIDs" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4989762282962863154" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="otherFiles" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4989762282962778824" resolveInfo="OtherFiles" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7052920786130137374" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7052920786130131783" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Platform" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="platform" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="File containing platform" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="3367122381610860831" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="fileName" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7052920786130131788" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="CIDs" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="cids" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="File containing phenotypes and Ids in columns" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="3367122381610860821" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="fileName" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="6032947574603936005" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="mismatches" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7052920786130772514" resolveInfo="Sample" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7052920786130772514" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Sample" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="sample" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="A sample: must have an id and optionally has an endpoint" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7083662764400065823" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="displayId" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7083662764384145279" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="category" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7083662764384236370" resolveInfo="CategoryReference" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4345048909864746735" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7052920786130810093" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="DisplayRow" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Stores the values of a row of the input to be displayed" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="displayRow" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4345048909861421889" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="displayValue" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4345048909861421891" resolveInfo="DisplayValue" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4345048909861421891" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="DisplayValue" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4345048909861429279" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="value" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4345048909863217124" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Endpoint" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="endpoint" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="A characteristic of interest under investigation ex. diseased" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7083662764383720209" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="categories" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7083662764383720206" resolveInfo="EndpointCategory" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4345048909865267440" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3367122381622495536" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Project" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="project" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="An entire project which can contain multiple datasets " />
    <property name="rootable" nameId="tpce.1096454100552" value="true" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7083662764416913977" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="properties" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7083662764416913858" resolveInfo="Properties" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7388448774866565661" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="approach" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7388448774866565678" resolveInfo="Approach" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7083662764384080735" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="endpoint" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4345048909863217124" resolveInfo="Endpoint" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="3367122381622495571" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="dataset" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7052920786130131778" resolveInfo="DataSet" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="3367122381622495569" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7083662764383720206" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="EndpointCategory" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="endpointCategory" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="The condition of the sample for a specific endpoint" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7083662764383720207" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7083662764384091354" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Task" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7083662764384236373" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="categoryReference" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7083662764384236370" resolveInfo="CategoryReference" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7083662764384193813" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="endpoint" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4345048909863217124" resolveInfo="Endpoint" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7083662764384236370" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="CategoryReference" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7083662764384236371" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="endpointCategory" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7083662764383720206" resolveInfo="EndpointCategory" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7083662764416913858" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Properties" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4671749543962624686" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="computerType" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4671749543962624834" resolveInfo="ComputerType" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7083662764433578750" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="outputLocation" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7083662764418599580" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="bdvalLocation" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4013254535750850394" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="antLocation" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7083662764416913912" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="threads" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7083662764416913915" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="memory" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1847053361490302608" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="tagDescription" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="290469645457746370" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Integer" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="290469645457746371" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="value" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532076" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="NaiveBayes" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Naive Bayes" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="classificationInfo.classifications" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153462" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153180" resolveInfo="Classification" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532194" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="LogitBoost" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Logistic Boost" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="classificationInfo.classifications" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153330" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153180" resolveInfo="Classification" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532195" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Logistic" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Logistic" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="classificationInfo.classifications" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153328" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153180" resolveInfo="Classification" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532196" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="RandomForest" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Random Forest" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="classificationInfo.classifications" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153611" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153180" resolveInfo="Classification" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532197" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="KStar" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="K Star" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="classificationInfo.classifications" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153326" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153180" resolveInfo="Classification" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532198" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="SVM" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="SVM" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="classificationInfo.classifications" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153292" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153180" resolveInfo="Classification" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866565678" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Approach" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4027829922712500841" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="enableFlooring" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4027829922712500836" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="evaluateStatistics" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="290469645457746257" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="externalRepeats" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="290469645457746273" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="externalFolds" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="8314272953671282922" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="featureSelectionInfo" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1870354875249618576" resolveInfo="FeatureSelectionInfo" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4989762282967505312" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="classificationInfo" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4989762282967436234" resolveInfo="ClassificationInfo" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1870354875255732276" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="modelToGenerate" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1870354875255731609" resolveInfo="ModelToGenerate" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="7388448774869153180" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Classification" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="classificationInfo.classifications" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="558294987374832484" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="classname" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="3649519271340810336" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="wekaClass" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1870354875256041029" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="parameters" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="3649519271340809859" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="otherOption" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="3649519271342059658" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="addoption" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="2125124408380562383" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="4671749543961476313" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="PathwayAggregationMethod" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelectionProperties.pathwaysProperties" />
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4989762282957663459" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4671749543961509611" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="PCAAggregation" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="PCA" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelectionProperties.pathwaysProperties" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4671749543961509612" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="4671749543961476313" resolveInfo="PathwayAggregationMethod" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4671749543961520203" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="AverageAggregation" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="average" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelectionProperties.pathwaysProperties" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4671749543964138831" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="4671749543961476313" resolveInfo="PathwayAggregationMethod" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="4671749543962624834" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="ComputerType" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="computer" />
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4671749543993389016" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4671749543962624837" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="DesktopComputer" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Desktop" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="computer" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4671749543964138835" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="4671749543962624834" resolveInfo="ComputerType" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4671749543962624901" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="ServerComputer" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Server" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="computer" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4671749543964138833" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="4671749543962624834" resolveInfo="ComputerType" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4671749543976303817" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="SVMIterativeProperties" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelectionProperties" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="3649519271362723295" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="r" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="4989762282928488779" resolveInfo="float" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4671749543995071282" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="TTestProperties" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelectionProperties" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4671749543995072017" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="alpha" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="4989762282928488779" resolveInfo="float" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4027829922695044022" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="FoldchangeProperties" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelectionProperties" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4027829922695044025" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="phi" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="4989762282928488779" resolveInfo="float" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4027829922695084067" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="GeneticAlgorithmProperties" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelectionProperties.geneticAlgorithmProperties" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4027829922695091289" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="performance" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4027829922695086640" resolveInfo="GAPerformance" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4027829922695084070" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="wrapperPopulationSize" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4027829922695084073" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="wrapperNumberIterations" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4027829922695084077" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="internalCVRepeats" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4027829922695084089" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="internalCVFolds" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4989762282927642025" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="ratio" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="4989762282928488779" resolveInfo="float" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="4027829922695086640" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="GAPerformance" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelectionProperties.geneticAlgorithmProperties" />
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4027829922695086641" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4027829922695086695" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="MCCPerformance" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="MCC" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelectionProperties.geneticAlgorithmProperties" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4027829922695086751" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="4027829922695086640" resolveInfo="GAPerformance" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4027829922695086748" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="AUCPerformance" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="AUC" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelectionProperties.geneticAlgorithmProperties" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4027829922695086749" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="4027829922695086640" resolveInfo="GAPerformance" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4671749543976303774" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="FeatureSelectionProperties" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelectionProperties" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4671749543995071279" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="ttest" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4671749543995071282" resolveInfo="TTestProperties" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="3649519271368386502" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="svmIterative" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4671749543976303817" resolveInfo="SVMIterativeProperties" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4989762282926687206" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="minMax" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4989762282926666582" resolveInfo="MinMaxProperties" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4027829922695044018" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="foldchange" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4027829922695044022" resolveInfo="FoldchangeProperties" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4027829922695084010" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="geneticAlgorithm" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4027829922695084067" resolveInfo="GeneticAlgorithmProperties" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4027829922710629198" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="pathways" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="6525722185902462822" resolveInfo="PathwayProperties" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4989762282950543043" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="permutation" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4989762282950066887" resolveInfo="PermutationProperties" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4989762282962462073" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="coxReg" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4989762282962457995" resolveInfo="CoxRegProperties" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866569121" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="FeatureSelectionFoldFalse" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="false" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelectionFold" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="8314272953670777911" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="8314272953670775634" resolveInfo="FeatureSelectionFold" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866524764" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="FeatureSelectionFoldTrue" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelectionFold" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="true" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="8314272953670777913" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="8314272953670775634" resolveInfo="FeatureSelectionFold" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="8314272953670775634" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="FeatureSelectionFold" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelectionFold" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1870354875254126878" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="value" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="8314272953670775635" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6525722185902462822" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="PathwayProperties" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelectionProperties.pathwaysProperties" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="6525722185902462823" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="aggregationMethod" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4671749543961476313" resolveInfo="PathwayAggregationMethod" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1870354875249563496" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Ttest" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelections" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="T-Test" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1870354875249616496" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1870354875249583257" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="1870354875249583257" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="FeatureSelection" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelections" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="3649519271356774529" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="addoptions" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="3649519271360690766" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="sequenceCommand" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="3649519271357455932" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="sequenceInfo" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="3649519271361989788" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="sequenceNumFeatures" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="3649519271350395849" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="otherOptions" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1870354875249616494" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1870354875249618576" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="FeatureSelectionInfo" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1870354875249707134" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="numberOfFeatures" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="290469645457746370" resolveInfo="Integer" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1870354875249707139" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="featureSelectionFold" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="8314272953670775634" resolveInfo="FeatureSelectionFold" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1870354875249707136" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="featureSelectionCombo" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1870354875251769793" resolveInfo="FeatureSelectionCombo" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1870354875262487940" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="featureSelectionProperties" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4671749543976303774" resolveInfo="FeatureSelectionProperties" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1870354875249707132" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="maxIntermediateFeatures" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1870354875251769793" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="FeatureSelectionCombo" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="3649519271352989204" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="featureSelection1" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1870354875249583257" resolveInfo="FeatureSelection" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="3649519271352989206" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="featureSelection2" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1870354875249583257" resolveInfo="FeatureSelection" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4989762282952412244" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="featureSelectionOption" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4989762282952312183" resolveInfo="FeatureSelectionOption" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1870354875255731609" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="ModelToGenerate" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1870354875255732070" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="featureSelectionFold" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1870354875255732072" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="sequenceFile" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1870354875255732075" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="allClassifierParameters" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1870354875255732271" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="otherOptions" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3649519271349200549" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="SVMGlobal" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="SVM Global" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelections" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="3649519271350360689" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1870354875249583257" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3649519271360667458" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="SVMIterative" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="SVM Iterative" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelections" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="3649519271362672945" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1870354875249583257" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3649519271366496699" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="FoldChange" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Fold Change" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelections" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="3649519271366496963" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1870354875249583257" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4989762282926592335" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="MinMax" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Min/Max" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelections" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4989762282926592336" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1870354875249583257" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4989762282926666582" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="MinMaxProperties" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelectionProperties" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4989762282926666933" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="observations" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4989762282927277961" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="GeneticAlgorithm" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Genetic Algorithm" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelections" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4989762282927278181" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1870354875249583257" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConstrainedDataTypeDeclaration" typeId="tpce.1082978499127" id="4989762282928488779" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="float" />
    <property name="constraint" nameId="tpce.1083066089218" value="\\d+(\\.\\d+)?" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4989762282949988176" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Permutation" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Permutation" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelections" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4989762282949989583" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1870354875249583257" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4989762282950066887" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="PermutationProperties" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelectionProperties" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4989762282950066888" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="alpha" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="4989762282928488779" resolveInfo="float" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="4989762282952312183" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="FeatureSelectionOption" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelectionOptions" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4989762282952312362" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="def" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4989762282952312364" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="addoptions" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4989762282954698886" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="otherOptions" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4989762282966816233" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="extraClassifierParameters" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4989762282952312360" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4989762282952312371" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Genelist" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Genelist" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelectionOptions" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4989762282952312372" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="4989762282952312183" resolveInfo="FeatureSelectionOption" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4989762282952360856" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Pathway" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Pathway" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelectionOptions" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4989762282952360857" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="4989762282952312183" resolveInfo="FeatureSelectionOption" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4989762282960160291" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="CoxReg" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Cox Regression" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelections" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4989762282960160535" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1870354875249583257" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4989762282962457995" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="CoxRegProperties" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelectionProperties" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4989762282962458342" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="alpha" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="4989762282928488779" resolveInfo="float" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4989762282962778824" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="OtherFiles" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4989762282962785543" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="pathways" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4989762282962785545" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="geneToProbes" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4989762282962785548" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="survival" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4989762282967436234" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="classificationInfo" />
    <property name="name" nameId="tpck.1169194664001" value="ClassificationInfo" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4989762283050821438" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="classification" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7388448774869153180" resolveInfo="Classification" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4989762282967454364" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="classificationProperties" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4989762282967436237" resolveInfo="ClassificationProperties" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4989762282967436237" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="ClassificationProperties" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="classificationInfo.classificationProperties" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4989762282967440724" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="svmProperties" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4989762282967436238" resolveInfo="SVMProperties" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4989762282968843270" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="svmTuneCProperties" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4989762282967630223" resolveInfo="SVMTuneCProperties" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4989762282967436238" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="SVMProperties" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="classificationInfo.classificationProperties" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4989762282967436239" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="probabilisticSVM" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4989762282967629772" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Float" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4989762282967629773" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="value" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="4989762282928488779" resolveInfo="float" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4989762282967630223" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="SVMTuneCProperties" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="classificationInfo.classificationProperties" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4989762282967630224" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="cValue" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4989762282967629772" resolveInfo="Float" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4989762282976782237" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="featureSelectionInfo.featureSelections" />
    <property name="name" nameId="tpck.1169194664001" value="WholeChip" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Whole Chip" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4989762282976782238" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1870354875249583257" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4989762283050789095" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="classificationInfo.classifications" />
    <property name="name" nameId="tpck.1169194664001" value="SVMTuneC" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="SVM Tune C" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4989762283050789311" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153180" resolveInfo="Classification" />
    </node>
  </root>
</model>

