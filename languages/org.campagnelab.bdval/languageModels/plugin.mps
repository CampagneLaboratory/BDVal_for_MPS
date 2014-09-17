<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:7832351f-8c30-47f0-9f03-bea8d3fddf1b(org.campagnelab.bdval.plugin)">
  <persistence version="8" />
  <language namespace="696c1165-4a59-463b-bc5d-902caab85dd0(jetbrains.mps.make.facet)" />
  <language namespace="95f8a3e6-f994-4ca0-a65e-763c9bae2d3b(jetbrains.mps.make.script)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="59et" modelUID="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.vfs(MPS.Core/jetbrains.mps.vfs@java_stub)" version="-1" />
  <import index="fn29" modelUID="r:6ba2667b-185e-45cd-ac65-e4b9d66da28e(jetbrains.mps.smodel.resources)" version="-1" />
  <import index="ec5l" modelUID="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(MPS.OpenAPI/org.jetbrains.mps.openapi.model@java_stub)" version="-1" />
  <import index="fxg7" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" version="-1" />
  <import index="tpcq" modelUID="r:00000000-0000-4000-0000-011c89590286(jetbrains.mps.lang.core.plugin)" version="0" />
  <import index="88zw" modelUID="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.module(MPS.OpenAPI/org.jetbrains.mps.openapi.module@java_stub)" version="-1" />
  <import index="fy8e" modelUID="r:89c0fb70-0977-7777-a076-5906f9d8630f(jetbrains.mps.make.facets)" version="0" />
  <import index="msyo" modelUID="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.util(MPS.Core/jetbrains.mps.util@java_stub)" version="-1" />
  <import index="w348" modelUID="r:91a4ef63-e30e-4b86-bcdc-748a33d96fa7(org.campagnelab.bdval.structure)" version="97" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" version="-1" />
  <import index="sdve" modelUID="f:java_stub#35dbc0f6-2677-4e81-9b75-548a3c2b6d9b#org.apache.commons.lang(org.campagnelab.bdval/org.apache.commons.lang@java_stub)" version="-1" />
  <import index="rk9m" modelUID="r:f8580193-afc4-4673-a635-d4757ca591cf(jetbrains.mps.internal.make.runtime.util)" version="-1" />
  <import index="d3bl" modelUID="r:ac7793bc-e58c-4954-a5e8-1100255584f9(jetbrains.mps.build.plugin)" version="-1" />
  <import index="vvvw" modelUID="r:b16ff46d-fa06-479d-9f5c-5b6e17e7f1b2(jetbrains.mps.make.facet.structure)" version="1" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" implicit="yes" />
  <import index="q9ra" modelUID="r:308041c6-80bc-4e26-b4b1-473fd45c9339(jetbrains.mps.make.script.structure)" version="-1" implicit="yes" />
  <import index="tp2q" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <import index="cx9y" modelUID="r:309aeee7-bee8-445c-b31d-35928d1da75f(jetbrains.mps.baseLanguage.tuples.structure)" version="2" implicit="yes" />
  <import index="tp2c" modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" implicit="yes" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <root type="vvvw.FacetDeclaration" typeId="vvvw.6418371274763029523" id="1911754720559956110" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="copyXmlFile" />
    <node role="targetDeclaration" roleId="vvvw.6418371274763146558" type="vvvw.TargetDeclaration" typeId="vvvw.6418371274763029565" id="1911754720559956180" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="copyFile" />
      <node role="dependency" roleId="vvvw.6418371274763146553" type="vvvw.TargetDependency" typeId="vvvw.6418371274763029600" id="1911754720559957910" nodeInfo="ng">
        <property name="qualifier" nameId="vvvw.8351679702044326377" value="AFTER" />
        <link role="dependsOn" roleId="vvvw.6418371274763029603" targetNodeId="tpcq.6648795410103966566" resolveInfo="textGen" />
      </node>
      <node role="dependency" roleId="vvvw.6418371274763146553" type="vvvw.TargetDependency" typeId="vvvw.6418371274763029600" id="1911754720559957912" nodeInfo="ng">
        <link role="dependsOn" roleId="vvvw.6418371274763029603" targetNodeId="fy8e.525295658369136956" resolveInfo="reconcile" />
      </node>
      <node role="job" roleId="vvvw.2360002718792633290" type="q9ra.JobDeclaration" typeId="q9ra.505095865854384109" id="1911754720559956181" nodeInfo="ng">
        <node role="job" roleId="q9ra.505095865854384110" type="q9ra.JobDefinition" typeId="q9ra.2360002718792625579" id="1911754720559956182" nodeInfo="nn">
          <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="1911754720559956183" nodeInfo="sn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.TryCatchStatement" typeId="tpee.1164879751025" id="1911754720558818488" nodeInfo="nn">
              <node role="body" roleId="tpee.1164879758292" type="tpee.StatementList" typeId="tpee.1068580123136" id="1911754720558818489" nodeInfo="sn">
                <node role="statement" roleId="tpee.1068581517665" type="tp2q.ForEachStatement" typeId="tp2q.1153943597977" id="4902420589301198548" nodeInfo="nn">
                  <node role="inputSequence" roleId="tp2q.1153944424730" type="q9ra.InputResourcesParameter" typeId="q9ra.2360002718792625580" id="4902420589301198731" nodeInfo="nn" />
                  <node role="variable" roleId="tp2q.1153944400369" type="tp2q.ForEachVariable" typeId="tp2q.1153944193378" id="4902420589301198550" nodeInfo="nr">
                    <property name="name" nameId="tpck.1169194664001" value="tres" />
                  </node>
                  <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="4902420589301198554" nodeInfo="sn">
                    <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1911754720557465949" nodeInfo="nn">
                      <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1911754720557494060" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1911754720557486838" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1911754720557483278" nodeInfo="nn">
                            <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1911754720557468445" nodeInfo="nn">
                              <node role="operand" roleId="tpee.1197027771414" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="1911754720557465948" nodeInfo="nn">
                                <link role="variable" roleId="tp2q.1153944258490" targetNodeId="4902420589301198550" resolveInfo="tres" />
                              </node>
                              <node role="operation" roleId="tpee.1197027833540" type="cx9y.NamedTupleComponentAccessOperation" typeId="cx9y.1239576519914" id="1911754720557479087" nodeInfo="nn">
                                <link role="component" roleId="cx9y.1239576542472" targetNodeId="fn29.4693363489975029716" resolveInfo="modelDescriptor" />
                              </node>
                            </node>
                            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1911754720557486769" nodeInfo="nn">
                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ec5l.~SModel%dgetRepository()%corg%djetbrains%dmps%dopenapi%dmodule%dSRepository" resolveInfo="getRepository" />
                            </node>
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1911754720557491306" nodeInfo="nn">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="88zw.~SRepository%dgetModelAccess()%corg%djetbrains%dmps%dopenapi%dmodule%dModelAccess" resolveInfo="getModelAccess" />
                          </node>
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1911754720557498781" nodeInfo="nn">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="88zw.~ModelAccess%drunReadAction(java%dlang%dRunnable)%cvoid" resolveInfo="runReadAction" />
                          <node role="actualArgument" roleId="tpee.1068499141038" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="1911754720557501533" nodeInfo="nn">
                            <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="1911754720557501534" nodeInfo="sn">
                              <node role="statement" roleId="tpee.1068581517665" type="tp2q.ForEachStatement" typeId="tp2q.1153943597977" id="1911754720557509903" nodeInfo="nn">
                                <node role="variable" roleId="tp2q.1153944400369" type="tp2q.ForEachVariable" typeId="tp2q.1153944193378" id="1911754720557509905" nodeInfo="nr">
                                  <property name="name" nameId="tpck.1169194664001" value="rootNode" />
                                </node>
                                <node role="inputSequence" roleId="tp2q.1153944424730" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1911754720557542824" nodeInfo="nn">
                                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1911754720557525122" nodeInfo="nn">
                                    <node role="operand" roleId="tpee.1197027771414" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="1911754720557520620" nodeInfo="nn">
                                      <link role="variable" roleId="tp2q.1153944258490" targetNodeId="4902420589301198550" resolveInfo="tres" />
                                    </node>
                                    <node role="operation" roleId="tpee.1197027833540" type="cx9y.NamedTupleComponentAccessOperation" typeId="cx9y.1239576519914" id="1911754720557535859" nodeInfo="nn">
                                      <link role="component" roleId="cx9y.1239576542472" targetNodeId="fn29.4693363489975029716" resolveInfo="modelDescriptor" />
                                    </node>
                                  </node>
                                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1911754720557546533" nodeInfo="nn">
                                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ec5l.~SModel%dgetRootNodes()%cjava%dlang%dIterable" resolveInfo="getRootNodes" />
                                  </node>
                                </node>
                                <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="1911754720557509909" nodeInfo="sn">
                                  <node role="statement" roleId="tpee.1068581517665" type="tp25.IfInstanceOfStatement" typeId="tp25.1883223317721008708" id="1911754720557549558" nodeInfo="nn">
                                    <link role="nodeConcept" roleId="tp25.1883223317721008712" targetNodeId="w348.3367122381622495536" resolveInfo="Project" />
                                    <node role="nodeExpression" roleId="tp25.1883223317721008710" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="1911754720557552600" nodeInfo="nn">
                                      <link role="variable" roleId="tp2q.1153944258490" targetNodeId="1911754720557509905" resolveInfo="rootNode" />
                                    </node>
                                    <node role="body" roleId="tp25.1883223317721008709" type="tpee.StatementList" typeId="tpee.1068580123136" id="1911754720557549560" nodeInfo="sn">
                                      <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1911754720559007230" nodeInfo="nn">
                                        <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1911754720559007228" nodeInfo="nr">
                                          <property name="isFinal" nameId="tpee.1176718929932" value="true" />
                                          <property name="name" nameId="tpck.1169194664001" value="fileName" />
                                          <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="1911754720559008784" nodeInfo="in" />
                                          <node role="initializer" roleId="tpee.1068431790190" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1911754720559021485" nodeInfo="nn">
                                            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6380268605225531490" nodeInfo="nn">
                                              <node role="operand" roleId="tpee.1197027771414" type="tp25.IfInstanceOfVarReference" typeId="tp25.1883223317721107059" id="6380268605225529433" nodeInfo="nn">
                                                <link role="baseVariableDeclaration" roleId="tpee.5497648299878491909" targetNodeId="1911754720557549561" resolveInfo="project" />
                                              </node>
                                              <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="6380268605225534390" nodeInfo="nn">
                                                <link role="property" roleId="tp25.1138056395725" targetNodeId="tpck.1169194664001" resolveInfo="name" />
                                              </node>
                                            </node>
                                            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1911754720559023119" nodeInfo="nn">
                                              <property name="value" nameId="tpee.1070475926801" value=".xml" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1911754720558939051" nodeInfo="nn">
                                        <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1911754720558939052" nodeInfo="nr">
                                          <property name="name" nameId="tpck.1169194664001" value="pluginXml" />
                                          <property name="isFinal" nameId="tpee.1176718929932" value="true" />
                                          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="1911754720558939053" nodeInfo="in">
                                            <node role="componentType" roleId="tpee.1070534760952" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1911754720558939054" nodeInfo="in">
                                              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="59et.~IFile" resolveInfo="IFile" />
                                            </node>
                                          </node>
                                          <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1911754720558939055" nodeInfo="nn">
                                            <node role="creator" roleId="tpee.1145553007750" type="tpee.ArrayCreator" typeId="tpee.1184950988562" id="1911754720558939056" nodeInfo="nn">
                                              <node role="dimensionExpression" roleId="tpee.1184952969026" type="tpee.DimensionExpression" typeId="tpee.1184952934362" id="1911754720558939057" nodeInfo="nn">
                                                <node role="expression" roleId="tpee.1184953288404" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1911754720558939058" nodeInfo="nn">
                                                  <property name="value" nameId="tpee.1068580320021" value="1" />
                                                </node>
                                              </node>
                                              <node role="componentType" roleId="tpee.1184951007469" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1911754720558939059" nodeInfo="in">
                                                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="59et.~IFile" resolveInfo="IFile" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1911754720558939060" nodeInfo="nn">
                                        <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1911754720558939061" nodeInfo="nn">
                                          <node role="operand" roleId="tpee.1197027771414" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1911754720558939062" nodeInfo="nn">
                                            <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="1911754720558939063" nodeInfo="nn">
                                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="rk9m.505174985642741923" resolveInfo="DeltaReconciler" />
                                              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1911754720558939064" nodeInfo="nn">
                                                <node role="operation" roleId="tpee.1197027833540" type="cx9y.NamedTupleComponentAccessOperation" typeId="cx9y.1239576519914" id="1911754720558939065" nodeInfo="nn">
                                                  <link role="component" roleId="cx9y.1239576542472" targetNodeId="fn29.1290126658903852193" resolveInfo="delta" />
                                                </node>
                                                <node role="operand" roleId="tpee.1197027771414" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="1911754720558939066" nodeInfo="nn">
                                                  <link role="variable" roleId="tp2q.1153944258490" targetNodeId="4902420589301198550" resolveInfo="tres" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1911754720558939067" nodeInfo="nn">
                                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="rk9m.7471912399447708265" resolveInfo="visitAll" />
                                            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1911754720558939068" nodeInfo="nn">
                                              <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="1911754720558939069" nodeInfo="nn">
                                                <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="1911754720558939070" nodeInfo="ig">
                                                  <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
                                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="rk9m.7471912399447707917" resolveInfo="FilesDelta.Visitor" />
                                                  <link role="classifier" roleId="tpee.1170346070688" targetNodeId="rk9m.7471912399447707915" resolveInfo="FilesDelta.Visitor" />
                                                  <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1911754720558939071" nodeInfo="nn" />
                                                  <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="1911754720558939072" nodeInfo="igu">
                                                    <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                                                    <property name="name" nameId="tpck.1169194664001" value="acceptWritten" />
                                                    <node role="returnType" roleId="tpee.1068580123133" type="tpee.BooleanType" typeId="tpee.1070534644030" id="1911754720558939073" nodeInfo="in" />
                                                    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1911754720558939074" nodeInfo="nn" />
                                                    <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="1911754720558939075" nodeInfo="ir">
                                                      <property name="name" nameId="tpck.1169194664001" value="file" />
                                                      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1911754720558939076" nodeInfo="in">
                                                        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="59et.~IFile" resolveInfo="IFile" />
                                                      </node>
                                                    </node>
                                                    <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="1911754720558939077" nodeInfo="sn">
                                                      <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="1911754720558939078" nodeInfo="nn">
                                                        <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="1911754720558939079" nodeInfo="sn">
                                                          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1911754720558939080" nodeInfo="nn">
                                                            <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="1911754720558939081" nodeInfo="nn">
                                                              <node role="rValue" roleId="tpee.1068498886297" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1911754720558939082" nodeInfo="nn">
                                                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1911754720558939075" resolveInfo="file" />
                                                              </node>
                                                              <node role="lValue" roleId="tpee.1068498886295" type="tpee.ArrayAccessExpression" typeId="tpee.1173175405605" id="1911754720558939083" nodeInfo="nn">
                                                                <node role="index" roleId="tpee.1173175577737" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1911754720558939084" nodeInfo="nn">
                                                                  <property name="value" nameId="tpee.1068580320021" value="0" />
                                                                </node>
                                                                <node role="array" roleId="tpee.1173175590490" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1911754720558939085" nodeInfo="nn">
                                                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1911754720558939052" resolveInfo="pluginXml" />
                                                                </node>
                                                              </node>
                                                            </node>
                                                          </node>
                                                          <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="1911754720558939096" nodeInfo="nn">
                                                            <node role="expression" roleId="tpee.1068581517676" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="1911754720558939097" nodeInfo="nn">
                                                              <property name="value" nameId="tpee.1068580123138" value="false" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                        <node role="condition" roleId="tpee.1068580123160" type="tpee.NPEEqualsExpression" typeId="tpee.1225271283259" id="1911754720558939098" nodeInfo="nn">
                                                          <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1911754720558939100" nodeInfo="nn">
                                                            <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1911754720558939101" nodeInfo="nn">
                                                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1911754720558939075" resolveInfo="file" />
                                                            </node>
                                                            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1911754720558939102" nodeInfo="nn">
                                                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="59et.~IFile%dgetName()%cjava%dlang%dString" resolveInfo="getName" />
                                                            </node>
                                                          </node>
                                                          <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1911754720559028436" nodeInfo="nn">
                                                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1911754720559007228" resolveInfo="fileName" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1911754720558939103" nodeInfo="nn">
                                                        <node role="expression" roleId="tpee.1068580123156" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="1911754720558939104" nodeInfo="nn">
                                                          <property name="value" nameId="tpee.1068580123138" value="true" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="1911754720558939105" nodeInfo="nn">
                                                      <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1911754720559071025" nodeInfo="nn">
                                        <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1911754720559071028" nodeInfo="nr">
                                          <property name="name" nameId="tpck.1169194664001" value="outputLocation" />
                                          <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="1911754720559071023" nodeInfo="in" />
                                          <node role="initializer" roleId="tpee.1068431790190" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1911754720560930794" nodeInfo="nn">
                                            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="5136529682730767080" nodeInfo="nn">
                                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="sdve.~WordUtils%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                                              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="sdve.~WordUtils" resolveInfo="WordUtils" />
                                              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5136529682730768225" nodeInfo="nn">
                                                <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5136529682730767081" nodeInfo="nn">
                                                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5136529682730767082" nodeInfo="nn">
                                                    <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5136529682730767083" nodeInfo="nn">
                                                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="5136529682730767084" nodeInfo="nn">
                                                        <link role="link" roleId="tp25.1138056516764" targetNodeId="w348.7083662764416913977" />
                                                      </node>
                                                      <node role="operand" roleId="tpee.1197027771414" type="tp25.IfInstanceOfVarReference" typeId="tp25.1883223317721107059" id="1911754720560134465" nodeInfo="nn">
                                                        <link role="baseVariableDeclaration" roleId="tpee.5497648299878491909" targetNodeId="1911754720557549561" resolveInfo="project" />
                                                      </node>
                                                    </node>
                                                    <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="3015647834785445367" nodeInfo="nn">
                                                      <link role="property" roleId="tp25.1138056395725" targetNodeId="w348.3015647834783938295" resolveInfo="directoryName" />
                                                    </node>
                                                  </node>
                                                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="5136529682730767087" nodeInfo="nn">
                                                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~String%dreplaceAll(java%dlang%dString,java%dlang%dString)%cjava%dlang%dString" resolveInfo="replaceAll" />
                                                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="5136529682730767088" nodeInfo="nn">
                                                      <property name="value" nameId="tpee.1070475926801" value="\\s" />
                                                    </node>
                                                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="5136529682730767089" nodeInfo="nn">
                                                      <property name="value" nameId="tpee.1070475926801" value="" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="5136529682730772558" nodeInfo="nn">
                                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~String%dtrim()%cjava%dlang%dString" resolveInfo="trim" />
                                                </node>
                                              </node>
                                            </node>
                                            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1911754720560109605" nodeInfo="nn">
                                              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1911754720560087457" nodeInfo="nn">
                                                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6380268605225540463" nodeInfo="nn">
                                                  <node role="operand" roleId="tpee.1197027771414" type="tp25.IfInstanceOfVarReference" typeId="tp25.1883223317721107059" id="6380268605225539414" nodeInfo="nn">
                                                    <link role="baseVariableDeclaration" roleId="tpee.5497648299878491909" targetNodeId="1911754720557549561" resolveInfo="project" />
                                                  </node>
                                                  <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="6380268605225543325" nodeInfo="nn">
                                                    <link role="property" roleId="tp25.1138056395725" targetNodeId="tpck.1169194664001" resolveInfo="name" />
                                                  </node>
                                                </node>
                                                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1911754720560079941" nodeInfo="nn">
                                                  <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1911754720568506072" nodeInfo="nn">
                                                    <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1911754720560072648" nodeInfo="nn">
                                                      <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1911754720559081607" nodeInfo="nn">
                                                        <node role="operand" roleId="tpee.1197027771414" type="tp25.IfInstanceOfVarReference" typeId="tp25.1883223317721107059" id="1911754720559079478" nodeInfo="nn">
                                                          <link role="baseVariableDeclaration" roleId="tpee.5497648299878491909" targetNodeId="1911754720557549561" resolveInfo="project" />
                                                        </node>
                                                        <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="1911754720560069249" nodeInfo="nn">
                                                          <link role="link" roleId="tp25.1138056516764" targetNodeId="w348.7083662764416913977" />
                                                        </node>
                                                      </node>
                                                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="1911754720568503035" nodeInfo="nn">
                                                        <link role="link" roleId="tp25.1138056516764" targetNodeId="w348.1911754720568108889" />
                                                      </node>
                                                    </node>
                                                    <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="1911754720568509555" nodeInfo="nn">
                                                      <link role="property" roleId="tp25.1138056395725" targetNodeId="w348.1911754720568105446" resolveInfo="directoryLocation" />
                                                    </node>
                                                  </node>
                                                  <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1911754720560082515" nodeInfo="nn">
                                                    <property name="value" nameId="tpee.1070475926801" value="/" />
                                                  </node>
                                                </node>
                                              </node>
                                              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1911754720560933240" nodeInfo="nn">
                                                <property name="value" nameId="tpee.1070475926801" value="/" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="1911754720558944891" nodeInfo="nn">
                                        <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="1911754720558944892" nodeInfo="sn">
                                          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1911754720558944901" nodeInfo="nn">
                                            <node role="expression" roleId="tpee.1068580123156" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1911754720558944902" nodeInfo="nn">
                                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="msyo.~FileUtil%dcopyFile(java%dio%dFile,java%dio%dFile)%cvoid" resolveInfo="copyFile" />
                                              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="msyo.~FileUtil" resolveInfo="FileUtil" />
                                              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1911754720558944903" nodeInfo="nn">
                                                <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="1911754720558944904" nodeInfo="nn">
                                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~File%d&lt;init&gt;(java%dlang%dString)" resolveInfo="File" />
                                                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1911754720558944905" nodeInfo="nn">
                                                    <node role="operand" roleId="tpee.1197027771414" type="tpee.ArrayAccessExpression" typeId="tpee.1173175405605" id="1911754720558944906" nodeInfo="nn">
                                                      <node role="index" roleId="tpee.1173175577737" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1911754720558944907" nodeInfo="nn">
                                                        <property name="value" nameId="tpee.1068580320021" value="0" />
                                                      </node>
                                                      <node role="array" roleId="tpee.1173175590490" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1911754720558944908" nodeInfo="nn">
                                                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1911754720558939052" resolveInfo="pluginXml" />
                                                      </node>
                                                    </node>
                                                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1911754720558944909" nodeInfo="nn">
                                                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="59et.~IFile%dgetPath()%cjava%dlang%dString" resolveInfo="getPath" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1911754720558944910" nodeInfo="nn">
                                                <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="1911754720558944911" nodeInfo="nn">
                                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~File%d&lt;init&gt;(java%dlang%dString)" resolveInfo="File" />
                                                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1911754720559097458" nodeInfo="nn">
                                                    <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1911754720559100055" nodeInfo="nn">
                                                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1911754720559007228" resolveInfo="fileName" />
                                                    </node>
                                                    <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1911754720559091390" nodeInfo="nn">
                                                      <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1911754720559088817" nodeInfo="nn">
                                                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1911754720559071028" resolveInfo="outputLocation" />
                                                      </node>
                                                      <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1911754720559093434" nodeInfo="nn">
                                                        <property name="value" nameId="tpee.1070475926801" value="/" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node role="condition" roleId="tpee.1068580123160" type="tpee.NotEqualsExpression" typeId="tpee.1073239437375" id="1911754720558944913" nodeInfo="nn">
                                          <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.ArrayAccessExpression" typeId="tpee.1173175405605" id="1911754720558944914" nodeInfo="nn">
                                            <node role="index" roleId="tpee.1173175577737" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1911754720558944915" nodeInfo="nn">
                                              <property name="value" nameId="tpee.1068580320021" value="0" />
                                            </node>
                                            <node role="array" roleId="tpee.1173175590490" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1911754720558944916" nodeInfo="nn">
                                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1911754720558939052" resolveInfo="pluginXml" />
                                            </node>
                                          </node>
                                          <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="1911754720558944917" nodeInfo="nn" />
                                        </node>
                                      </node>
                                    </node>
                                    <node role="variable" roleId="tp25.1883223317721008711" type="tp25.IfInstanceOfVariable" typeId="tp25.1883223317721008713" id="1911754720557549561" nodeInfo="ng">
                                      <property name="name" nameId="tpck.1169194664001" value="project" />
                                      <node role="type" roleId="tpee.5680397130376446158" type="tpee.UndefinedType" typeId="tpee.4836112446988635817" id="1911754720557549562" nodeInfo="in" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="catchClause" roleId="tpee.1164903496223" type="tpee.CatchClause" typeId="tpee.1164903280175" id="1911754720558818490" nodeInfo="nn">
                <node role="throwable" roleId="tpee.1164903359217" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1911754720558818491" nodeInfo="nr">
                  <property name="name" nameId="tpck.1169194664001" value="e" />
                  <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1911754720558824381" nodeInfo="in">
                    <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Exception" resolveInfo="Exception" />
                  </node>
                </node>
                <node role="catchBody" roleId="tpee.1164903359218" type="tpee.StatementList" typeId="tpee.1068580123136" id="1911754720558818493" nodeInfo="sn">
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.ThrowStatement" typeId="tpee.1164991038168" id="1911754720558824781" nodeInfo="nn">
                    <node role="throwable" roleId="tpee.1164991057263" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1911754720558824797" nodeInfo="nn">
                      <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="1911754720558826181" nodeInfo="nn">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Error%d&lt;init&gt;(java%dlang%dString)" resolveInfo="Error" />
                        <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="2063368849526559900" nodeInfo="nn">
                          <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1911754720558826516" nodeInfo="nn">
                            <property name="value" nameId="tpee.1070475926801" value="Error in plugin: " />
                          </node>
                          <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2063368849526560897" nodeInfo="nn">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1911754720558818491" resolveInfo="e" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="input" roleId="vvvw.119022571401949664" type="vvvw.ResourceTypeDeclaration" typeId="vvvw.119022571401949652" id="1911754720559956188" nodeInfo="ng">
        <node role="resourceType" roleId="vvvw.119022571401949655" type="vvvw.ResourceClassifierType" typeId="vvvw.119022571402207412" id="1911754720559957334" nodeInfo="in">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="fn29.2257725414731981663" resolveInfo="TResource" />
        </node>
      </node>
    </node>
    <node role="required" roleId="vvvw.6447445394688422656" type="vvvw.RelatedFacetReference" typeId="vvvw.8351679702044320297" id="1911754720559956172" nodeInfo="ng">
      <link role="facet" roleId="vvvw.6447445394688422643" targetNodeId="tpcq.6648795410103939538" resolveInfo="Generate" />
    </node>
    <node role="required" roleId="vvvw.6447445394688422656" type="vvvw.RelatedFacetReference" typeId="vvvw.8351679702044320297" id="1911754720559956177" nodeInfo="ng">
      <link role="facet" roleId="vvvw.6447445394688422643" targetNodeId="tpcq.6648795410103966565" resolveInfo="TextGen" />
    </node>
  </root>
</model>

