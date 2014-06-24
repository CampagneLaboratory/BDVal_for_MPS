<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:91a4ef63-e30e-4b86-bcdc-748a33d96fa7(org.campagnelab.bdval.structure)" version="56">
  <persistence version="8" />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" />
  <import index="tpce" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="w348" modelUID="r:91a4ef63-e30e-4b86-bcdc-748a33d96fa7(org.campagnelab.bdval.structure)" version="56" implicit="yes" />
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
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7388448774863746329" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="thresholdFloor" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="290469645457746370" resolveInfo="Integer" />
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
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7083662764416913912" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="threads" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7083662764416913915" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="memory" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
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
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866524764" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="FeatureSelectionFoldTrue" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Feature Selection Fold-True" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153302" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153291" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866525358" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="WekaScan" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Weka Feature Selection Scan" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153758" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153291" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866525359" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="FCP_LogitBoost" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="FC+P Logistic Boost" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153298" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153180" resolveInfo="Classification" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532076" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="NaiveBayes" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Naive Bayes" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153462" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153180" resolveInfo="Classification" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532194" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="LogitBoost" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Logistic Boost" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153330" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153180" resolveInfo="Classification" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532195" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Logistic" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Logistic" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153328" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153180" resolveInfo="Classification" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532196" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="RandomForest" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Random Forest" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153611" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153180" resolveInfo="Classification" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532197" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="KStar" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="K Star" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153326" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153180" resolveInfo="Classification" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532198" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="SVM" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="SVM" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153292" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153180" resolveInfo="Classification" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532323" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="WholeChip" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Whole Chip" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="2125124408390533985" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153291" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532324" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="SVMTuneC" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="SVM Tune C" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153294" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153180" resolveInfo="Classification" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532325" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="MinMaxSVMGlobal" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Min/Max-SVM Global" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153460" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153291" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532326" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="SVMIterative" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="SVM Iterative" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153613" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153291" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532327" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="TTestSVMIterative" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Ttest-SVM Iterative" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153619" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153291" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532328" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="TTestSVMGlobal" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Ttest-SVM Global" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153617" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153291" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532329" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="PermutationSVMGlobal" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Permutations-SVM Global" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153474" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153291" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532330" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="CoxRegSVMGlobal" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Cox Regression-SVM Global" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153296" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153291" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532332" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="GenelistSVMGlobal" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Genelist-SVM Global" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153320" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153291" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532333" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="GenelistSVMGlobalTuneC" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Genelist-SVM Global-Tune C" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153322" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153291" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532334" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="GenelistGeneticAlgorithm" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Genelist-Genetic Algorithm" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153314" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153291" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532336" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="FoldChangeSVMIterative" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Fold Change-SVM Iterative" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153304" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153291" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532337" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="FoldchangeSVMGlobal" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Fold Change-SVM Global" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153308" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153291" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532609" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="TTestGeneticAlgorithm" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Ttest-Genetic Algorithm" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153615" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153291" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532610" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="FoldchangeGeneticAlgorithm" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Fold Change-Genetic Algorithm" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153306" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153291" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532611" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="FullGeneticAlgorithm" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Full Genetic Algorithm" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153310" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153291" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532612" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="PathwaysBuildPathwayComponents" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Pathways-Build Pathways Components" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153466" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153291" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532613" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="PathwaysBaseline" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Pathways-Baseline" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153464" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153291" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532614" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="PathwaysTTestSVMGlobal" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Pathways-ttest-SVM Global" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153470" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153291" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532615" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="PathwaysCoxregSVMGlobal" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Pathways-Cox Regression-SVM Global" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153468" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153291" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866532616" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="PathwaysTuneC" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Pathways-Tune C" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153472" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153291" resolveInfo="FeatureSelection" />
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
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="290469645457746290" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="maxIntermediateFeatures" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7388448774866565680" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="numFeatures" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="290469645457746370" resolveInfo="Integer" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7388448774866567754" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="featureSelection" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7388448774869153291" resolveInfo="FeatureSelection" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4671749543976303727" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="featureSelectionProperties" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4671749543976303774" resolveInfo="FeatureSelectionProperties" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7388448774866567751" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="classification" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7388448774869153180" resolveInfo="Classification" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7388448774866569121" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="FeatureSelectionFoldFalse" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Feature Selection Fold-False" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7388448774869153300" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7388448774869153291" resolveInfo="FeatureSelection" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="7388448774869153180" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Classification" />
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="2125124408380562383" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="7388448774869153291" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="FeatureSelection" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4671749543972261875" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="type" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4671749543971272369" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="4671749543961476313" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="PathwayAggregationMethod" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4671749543961509611" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="PCAAggregation" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="PCA" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4671749543961509612" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="4671749543961476313" resolveInfo="PathwayAggregationMethod" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4671749543961520203" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="AverageAggregation" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="average" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4671749543964138831" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="4671749543961476313" resolveInfo="PathwayAggregationMethod" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="4671749543962624834" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="ComputerType" />
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4671749543993389016" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4671749543962624837" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="DesktopComputer" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Desktop" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4671749543964138835" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="4671749543962624834" resolveInfo="ComputerType" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4671749543962624901" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="ServerComputer" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Server" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4671749543964138833" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="4671749543962624834" resolveInfo="ComputerType" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4671749543976303774" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="FeatureSelectionProperties" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4671749543992421474" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="SVM" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4671749543976303817" resolveInfo="SVMProperties" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4671749543995071279" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="ttest" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4671749543995071282" resolveInfo="TtestProperties" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4027829922695044018" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="foldchange" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4671749543976303774" resolveInfo="FeatureSelectionProperties" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4027829922695084010" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="geneticAlgorithm" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4027829922695084067" resolveInfo="GeneticAlgorithmProperties" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4027829922710629198" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="pathways" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4671749543961476313" resolveInfo="PathwayAggregationMethod" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4671749543976303817" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="SVMProperties" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4671749543976303818" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="trainSVM" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4671749543995071282" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="TtestProperties" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4671749543995072017" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="cutoff" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4027829922695044022" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="FoldchangeProperties" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4027829922695044025" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="cutoff" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4027829922695084067" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="GeneticAlgorithmProperties" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4027829922695091289" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="performance" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
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
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="4027829922695086640" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="GAPerformance" />
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4027829922695086641" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4027829922695086695" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="MCCPerformance" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="MCC" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4027829922695086751" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="4027829922695086640" resolveInfo="GAPerformance" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4027829922695086748" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="AUGPerformance" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="AUG" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4027829922695086749" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="4027829922695086640" resolveInfo="GAPerformance" />
    </node>
  </root>
</model>

