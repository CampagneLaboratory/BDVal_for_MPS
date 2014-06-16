<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:91a4ef63-e30e-4b86-bcdc-748a33d96fa7(org.campagnelab.bdval.structure)" version="47">
  <persistence version="8" />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" />
  <import index="tpce" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="w348" modelUID="r:91a4ef63-e30e-4b86-bcdc-748a33d96fa7(org.campagnelab.bdval.structure)" version="47" implicit="yes" />
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
      <property name="name" nameId="tpck.1169194664001" value="execute" />
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
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4345048909862458382" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="numberOfSamples" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7052920786130772514" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Sample" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="sample" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="A sample- must have an id and optionally has an endpoint" />
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
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7083662764388713867" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Test" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7083662764388713868" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="value" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7083662764416913858" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Properties" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="290469645457746368" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="numFeatures" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="290469645457746370" resolveInfo="Values" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="290469645464856045" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="evaluate" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="290469645464856021" resolveInfo="Evaluate" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="290469645477150003" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="pathway" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="290469645477150000" resolveInfo="Pathway" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="290469645478332257" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="genetic" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="290469645478332254" resolveInfo="GeneticAlgorithm" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="290469645479170955" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="tuneC" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="290469645479170952" resolveInfo="TuneC" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7083662764433578750" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="outputLocation" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7083662764418599580" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="bdvalLocation" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7083662764416913910" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="computerType" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7083662764416913912" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="threadsServer" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7083662764416913915" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="memoryServer" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7083662764416913919" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="threadsDesktop" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7083662764416913971" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="memoryDesktop" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="290469645457746173" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="doSpecificGeneListsOnly" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="290469645457746182" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="enableFlooring" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="290469645457746192" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="gaWrapperPopulationSize" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="290469645457746203" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="gaWrapperNumberOfIterations" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="290469645457746215" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="performanceMeasureMaximized" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="290469645457746228" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="internalRepeats" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="290469645457746242" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="internalFolds" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
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
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="290469645457746436" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="useProbability" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="290469645457746455" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="foldChangePhi" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="290469645457746475" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="ttestAlpha" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="290469645457746496" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="pathwayAggregationMethod" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="290469645457746370" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Values" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="290469645457746371" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="value" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="290469645464856021" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Evaluate" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="290469645464856022" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="property" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="290469645465231774" resolveInfo="evaluateType" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="290469645465231774" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="evaluateType" />
    <property name="hasNoDefaultMember" nameId="tpce.1212080844762" value="true" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="290469645465231775" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="useFeatureSelectionTrue" />
      <property name="internalValue" nameId="tpce.1083923523171" value="useFeatureSelectionTrue" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="290469645466319718" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="useFeatureSelectionFalse" />
      <property name="internalValue" nameId="tpce.1083923523171" value="useFeatureSelectionFalse" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="290469645465231827" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="baseline" />
      <property name="internalValue" nameId="tpce.1083923523171" value="baseline" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="290469645465231830" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="naiveBayes" />
      <property name="internalValue" nameId="tpce.1083923523171" value="naiveBayes" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="290469645465564939" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="logitBoost" />
      <property name="internalValue" nameId="tpce.1083923523171" value="logitBoost" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="290469645465564944" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="logistic" />
      <property name="internalValue" nameId="tpce.1083923523171" value="logisitc" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="290469645465564950" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="randomForest" />
      <property name="internalValue" nameId="tpce.1083923523171" value="randomForest" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="290469645465564957" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="kStar" />
      <property name="internalValue" nameId="tpce.1083923523171" value="kStar" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="290469645465564965" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="wholeChip" />
      <property name="internalValue" nameId="tpce.1083923523171" value="wholeChip" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="290469645465564974" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="baselineTuneC" />
      <property name="internalValue" nameId="tpce.1083923523171" value="baselineTuneC" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="290469645465564984" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="foldchangeGeneticAlgorithm" />
      <property name="internalValue" nameId="tpce.1083923523171" value="foldchangeGeneticAlgorithm" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="290469645465565017" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="foldchangeSvmGlobal" />
      <property name="internalValue" nameId="tpce.1083923523171" value="foldchangeSvmGlobal" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="290469645465565150" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="foldchangeSvmIterative" />
      <property name="internalValue" nameId="tpce.1083923523171" value="foldchangeSvmIterative" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="290469645465565163" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="fullGeneticAlgorithm" />
      <property name="internalValue" nameId="tpce.1083923523171" value="fullGeneticAlgorithm" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="290469645465565177" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="genelistGeneticAlgorithm" />
      <property name="internalValue" nameId="tpce.1083923523171" value="genelistGeneticAlgorithm" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="290469645465565192" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="genelistSvmGlobal" />
      <property name="internalValue" nameId="tpce.1083923523171" value="genelistSvmGlobal" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="290469645465565208" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="genelistSvmGlobalTuneC" />
      <property name="internalValue" nameId="tpce.1083923523171" value="genelistSvmGlobalTuneC" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="290469645465565225" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="minMaxSvmGlobal" />
      <property name="internalValue" nameId="tpce.1083923523171" value="minMaxSvmGlobal" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="290469645465565358" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="pathwaysTtestSvmGlobal" />
      <property name="internalValue" nameId="tpce.1083923523171" value="pathwaysTtestSvmGlobal" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="290469645465565377" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="pathwaysTuneC" />
      <property name="internalValue" nameId="tpce.1083923523171" value="pathwaysTuneC" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="290469645465565397" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="pathwaysBaseline" />
      <property name="internalValue" nameId="tpce.1083923523171" value="pathwaysBaseline" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="290469645465565418" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="svmIterative" />
      <property name="internalValue" nameId="tpce.1083923523171" value="svmIterative" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="290469645465565440" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="ttestGeneticAlgorithm" />
      <property name="internalValue" nameId="tpce.1083923523171" value="ttestGeneticAlgorithm" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="290469645465565463" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="ttestSvmGlobal" />
      <property name="internalValue" nameId="tpce.1083923523171" value="ttestSvmGlobal" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="290469645465565487" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="ttestSvmIterative" />
      <property name="internalValue" nameId="tpce.1083923523171" value="ttestSvmIterative" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="290469645477150000" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Pathway" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="290469645477150001" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="property" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="290469645478332254" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="GeneticAlgorithm" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="290469645478332255" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="property" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="290469645479170952" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="TuneC" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="290469645479170953" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="property" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
</model>

