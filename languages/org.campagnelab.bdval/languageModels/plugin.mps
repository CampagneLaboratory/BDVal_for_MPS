<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7832351f-8c30-47f0-9f03-bea8d3fddf1b(org.campagnelab.bdval.plugin)">
  <persistence version="9" />
  <languages>
    <use id="696c1165-4a59-463b-bc5d-902caab85dd0" name="jetbrains.mps.make.facet" version="-1" />
    <use id="95f8a3e6-f994-4ca0-a65e-763c9bae2d3b" name="jetbrains.mps.make.script" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="59et" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.vfs(MPS.Core/jetbrains.mps.vfs@java_stub)" />
    <import index="fn29" ref="r:6ba2667b-185e-45cd-ac65-e4b9d66da28e(jetbrains.mps.smodel.resources)" />
    <import index="ec5l" ref="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(MPS.OpenAPI/org.jetbrains.mps.openapi.model@java_stub)" />
    <import index="fxg7" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" />
    <import index="tpcq" ref="r:00000000-0000-4000-0000-011c89590286(jetbrains.mps.lang.core.plugin)" />
    <import index="88zw" ref="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.module(MPS.OpenAPI/org.jetbrains.mps.openapi.module@java_stub)" />
    <import index="fy8e" ref="r:89c0fb70-0977-7777-a076-5906f9d8630f(jetbrains.mps.make.facets)" />
    <import index="msyo" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.util(MPS.Core/jetbrains.mps.util@java_stub)" />
    <import index="w348" ref="r:91a4ef63-e30e-4b86-bcdc-748a33d96fa7(org.campagnelab.bdval.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="sdve" ref="f:java_stub#35dbc0f6-2677-4e81-9b75-548a3c2b6d9b#org.apache.commons.lang(org.campagnelab.bdval/org.apache.commons.lang@java_stub)" />
    <import index="rk9m" ref="r:f8580193-afc4-4673-a635-d4757ca591cf(jetbrains.mps.internal.make.runtime.util)" />
    <import index="d3bl" ref="r:ac7793bc-e58c-4954-a5e8-1100255584f9(jetbrains.mps.build.plugin)" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1239576519914" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleComponentAccessOperation" flags="nn" index="2sxana">
        <reference id="1239576542472" name="component" index="2sxfKC" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1184950988562" name="jetbrains.mps.baseLanguage.structure.ArrayCreator" flags="nn" index="3$_iS1">
        <child id="1184951007469" name="componentType" index="3$_nBY" />
        <child id="1184952969026" name="dimensionExpression" index="3$GQph" />
      </concept>
      <concept id="1184952934362" name="jetbrains.mps.baseLanguage.structure.DimensionExpression" flags="nn" index="3$GHV9">
        <child id="1184953288404" name="expression" index="3$I4v7" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5497648299878491908" name="jetbrains.mps.baseLanguage.structure.BaseVariableReference" flags="nn" index="1M0zk4">
        <reference id="5497648299878491909" name="baseVariableDeclaration" index="1M0zk5" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="696c1165-4a59-463b-bc5d-902caab85dd0" name="jetbrains.mps.make.facet">
      <concept id="6418371274763029565" name="jetbrains.mps.make.facet.structure.TargetDeclaration" flags="ng" index="15KeUm">
        <child id="2360002718792633290" name="job" index="ElM8M" />
        <child id="6418371274763146553" name="dependency" index="15LFui" />
        <child id="119022571401949664" name="input" index="3D36I5" />
      </concept>
      <concept id="6418371274763029523" name="jetbrains.mps.make.facet.structure.FacetDeclaration" flags="ng" index="15KeUS">
        <child id="6418371274763146558" name="targetDeclaration" index="15LFul" />
        <child id="6447445394688422656" name="required" index="1Mm5TH" />
      </concept>
      <concept id="6418371274763029600" name="jetbrains.mps.make.facet.structure.TargetDependency" flags="ng" index="15KeVb">
        <property id="8351679702044326377" name="qualifier" index="3HPxAp" />
        <reference id="6418371274763029603" name="dependsOn" index="15KeV8" />
      </concept>
      <concept id="119022571402207412" name="jetbrains.mps.make.facet.structure.ResourceClassifierType" flags="in" index="3D27Fh" />
      <concept id="119022571401949652" name="jetbrains.mps.make.facet.structure.ResourceTypeDeclaration" flags="ng" index="3D36IL">
        <child id="119022571401949655" name="resourceType" index="3D36IM" />
      </concept>
      <concept id="8351679702044320297" name="jetbrains.mps.make.facet.structure.RelatedFacetReference" flags="ng" index="3HPw9p" />
      <concept id="6447445394688422642" name="jetbrains.mps.make.facet.structure.FacetReference" flags="ng" index="1Mm5Yv">
        <reference id="6447445394688422643" name="facet" index="1Mm5Yu" />
      </concept>
    </language>
    <language id="95f8a3e6-f994-4ca0-a65e-763c9bae2d3b" name="jetbrains.mps.make.script">
      <concept id="505095865854384109" name="jetbrains.mps.make.script.structure.JobDeclaration" flags="ng" index="2aLE7I">
        <child id="505095865854384110" name="job" index="2aLE7H" />
      </concept>
      <concept id="2360002718792625579" name="jetbrains.mps.make.script.structure.JobDefinition" flags="in" index="ElOhj" />
      <concept id="2360002718792625580" name="jetbrains.mps.make.script.structure.InputResourcesParameter" flags="nn" index="ElOhk" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1883223317721008708" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement" flags="nn" index="Jncv_">
        <reference id="1883223317721008712" name="nodeConcept" index="JncvD" />
        <child id="1883223317721008709" name="body" index="Jncv$" />
        <child id="1883223317721008711" name="variable" index="JncvA" />
        <child id="1883223317721008710" name="nodeExpression" index="JncvB" />
      </concept>
      <concept id="1883223317721008713" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable" flags="ng" index="JncvC" />
      <concept id="1883223317721107059" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVarReference" flags="nn" index="Jnkvi" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
    </language>
  </registry>
  <node concept="15KeUS" id="1E7UGCoDK2e">
    <property role="TrG5h" value="copyXmlFile" />
    <node concept="15KeUm" id="1E7UGCoDK3k" role="15LFul">
      <property role="TrG5h" value="copyFile" />
      <node concept="15KeVb" id="1E7UGCoDKum" role="15LFui">
        <property role="3HPxAp" value="AFTER" />
        <ref role="15KeV8" to="tpcq:5L5h3brvDHA" resolve="textGen" />
      </node>
      <node concept="15KeVb" id="1E7UGCoDKuo" role="15LFui">
        <ref role="15KeV8" to="fy8e:taepSZ9r$W" resolve="reconcile" />
      </node>
      <node concept="2aLE7I" id="1E7UGCoDK3l" role="ElM8M">
        <node concept="ElOhj" id="1E7UGCoDK3m" role="2aLE7H">
          <node concept="3clFbS" id="1E7UGCoDK3n" role="2VODD2">
            <node concept="SfApY" id="1E7UGCo_qiS" role="3cqZAp">
              <node concept="3clFbS" id="1E7UGCo_qiT" role="SfCbr">
                <node concept="2Gpval" id="4g8ToP4QYVk" role="3cqZAp">
                  <node concept="ElOhk" id="4g8ToP4QYYb" role="2GsD0m" />
                  <node concept="2GrKxI" id="4g8ToP4QYVm" role="2Gsz3X">
                    <property role="TrG5h" value="tres" />
                  </node>
                  <node concept="3clFbS" id="4g8ToP4QYVq" role="2LFqv$">
                    <node concept="3clFbF" id="1E7UGCowg5t" role="3cqZAp">
                      <node concept="2OqwBi" id="1E7UGCowmWG" role="3clFbG">
                        <node concept="2OqwBi" id="1E7UGCowlbQ" role="2Oq$k0">
                          <node concept="2OqwBi" id="1E7UGCowkke" role="2Oq$k0">
                            <node concept="2OqwBi" id="1E7UGCowgGt" role="2Oq$k0">
                              <node concept="2GrUjf" id="1E7UGCowg5s" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="4g8ToP4QYVm" resolve="tres" />
                              </node>
                              <node concept="2sxana" id="1E7UGCowjiJ" role="2OqNvi">
                                <ref role="2sxfKC" to="fn29:44ybjD5JWZk" resolve="modelDescriptor" />
                              </node>
                            </node>
                            <node concept="liA8E" id="1E7UGCowlaL" role="2OqNvi">
                              <ref role="37wK5l" to="ec5l:~SModel.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                            </node>
                          </node>
                          <node concept="liA8E" id="1E7UGCowmhE" role="2OqNvi">
                            <ref role="37wK5l" to="88zw:~SRepository.getModelAccess():org.jetbrains.mps.openapi.module.ModelAccess" resolve="getModelAccess" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1E7UGCowo6t" role="2OqNvi">
                          <ref role="37wK5l" to="88zw:~ModelAccess.runReadAction(java.lang.Runnable):void" resolve="runReadAction" />
                          <node concept="1bVj0M" id="1E7UGCowoLt" role="37wK5m">
                            <node concept="3clFbS" id="1E7UGCowoLu" role="1bW5cS">
                              <node concept="2Gpval" id="1E7UGCowqOf" role="3cqZAp">
                                <node concept="2GrKxI" id="1E7UGCowqOh" role="2Gsz3X">
                                  <property role="TrG5h" value="rootNode" />
                                </node>
                                <node concept="2OqwBi" id="1E7UGCowyQC" role="2GsD0m">
                                  <node concept="2OqwBi" id="1E7UGCowuy2" role="2Oq$k0">
                                    <node concept="2GrUjf" id="1E7UGCowtrG" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="4g8ToP4QYVm" resolve="tres" />
                                    </node>
                                    <node concept="2sxana" id="1E7UGCowx9N" role="2OqNvi">
                                      <ref role="2sxfKC" to="fn29:44ybjD5JWZk" resolve="modelDescriptor" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="1E7UGCowzK_" role="2OqNvi">
                                    <ref role="37wK5l" to="ec5l:~SModel.getRootNodes():java.lang.Iterable" resolve="getRootNodes" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="1E7UGCowqOl" role="2LFqv$">
                                  <node concept="Jncv_" id="1E7UGCow$vQ" role="3cqZAp">
                                    <ref role="JncvD" to="w348:2UUqZtvS4$K" resolve="Project" />
                                    <node concept="2GrUjf" id="1E7UGCow_fo" role="JncvB">
                                      <ref role="2Gs0qQ" node="1E7UGCowqOh" resolve="rootNode" />
                                    </node>
                                    <node concept="3clFbS" id="1E7UGCow$vS" role="Jncv$">
                                      <node concept="3cpWs8" id="1E7UGCoA8nY" role="3cqZAp">
                                        <node concept="3cpWsn" id="1E7UGCoA8nW" role="3cpWs9">
                                          <property role="3TUv4t" value="true" />
                                          <property role="TrG5h" value="fileName" />
                                          <node concept="17QB3L" id="1E7UGCoA8Kg" role="1tU5fm" />
                                          <node concept="3cpWs3" id="1E7UGCoAbQH" role="33vP2m">
                                            <node concept="2OqwBi" id="5ybh7Sa2Rxy" role="3uHU7B">
                                              <node concept="Jnkvi" id="5ybh7Sa2R1p" role="2Oq$k0">
                                                <ref role="1M0zk5" node="1E7UGCow$vT" resolve="project" />
                                              </node>
                                              <node concept="3TrcHB" id="5ybh7Sa2SeQ" role="2OqNvi">
                                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                              </node>
                                            </node>
                                            <node concept="Xl_RD" id="1E7UGCoAcgf" role="3uHU7w">
                                              <property role="Xl_RC" value=".xml" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3cpWs8" id="1E7UGCo_RIF" role="3cqZAp">
                                        <node concept="3cpWsn" id="1E7UGCo_RIG" role="3cpWs9">
                                          <property role="TrG5h" value="pluginXml" />
                                          <property role="3TUv4t" value="true" />
                                          <node concept="10Q1$e" id="1E7UGCo_RIH" role="1tU5fm">
                                            <node concept="3uibUv" id="1E7UGCo_RII" role="10Q1$1">
                                              <ref role="3uigEE" to="59et:~IFile" resolve="IFile" />
                                            </node>
                                          </node>
                                          <node concept="2ShNRf" id="1E7UGCo_RIJ" role="33vP2m">
                                            <node concept="3$_iS1" id="1E7UGCo_RIK" role="2ShVmc">
                                              <node concept="3$GHV9" id="1E7UGCo_RIL" role="3$GQph">
                                                <node concept="3cmrfG" id="1E7UGCo_RIM" role="3$I4v7">
                                                  <property role="3cmrfH" value="1" />
                                                </node>
                                              </node>
                                              <node concept="3uibUv" id="1E7UGCo_RIN" role="3$_nBY">
                                                <ref role="3uigEE" to="59et:~IFile" resolve="IFile" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbF" id="1E7UGCo_RIO" role="3cqZAp">
                                        <node concept="2OqwBi" id="1E7UGCo_RIP" role="3clFbG">
                                          <node concept="2ShNRf" id="1E7UGCo_RIQ" role="2Oq$k0">
                                            <node concept="1pGfFk" id="1E7UGCo_RIR" role="2ShVmc">
                                              <ref role="37wK5l" to="rk9m:s2Jv$gDx2z" resolve="DeltaReconciler" />
                                              <node concept="2OqwBi" id="1E7UGCo_RIS" role="37wK5m">
                                                <node concept="2sxana" id="1E7UGCo_RIT" role="2OqNvi">
                                                  <ref role="2sxfKC" to="fn29:17BsPLzesix" resolve="delta" />
                                                </node>
                                                <node concept="2GrUjf" id="1E7UGCo_RIU" role="2Oq$k0">
                                                  <ref role="2Gs0qQ" node="4g8ToP4QYVm" resolve="tres" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="1E7UGCo_RIV" role="2OqNvi">
                                            <ref role="37wK5l" to="rk9m:6uL$bP9UH9D" resolve="visitAll" />
                                            <node concept="2ShNRf" id="1E7UGCo_RIW" role="37wK5m">
                                              <node concept="YeOm9" id="1E7UGCo_RIX" role="2ShVmc">
                                                <node concept="1Y3b0j" id="1E7UGCo_RIY" role="YeSDq">
                                                  <property role="2bfB8j" value="true" />
                                                  <ref role="37wK5l" to="rk9m:6uL$bP9UH4d" resolve="FilesDelta.Visitor" />
                                                  <ref role="1Y3XeK" to="rk9m:6uL$bP9UH4b" resolve="FilesDelta.Visitor" />
                                                  <node concept="3Tm1VV" id="1E7UGCo_RIZ" role="1B3o_S" />
                                                  <node concept="3clFb_" id="1E7UGCo_RJ0" role="jymVt">
                                                    <property role="1EzhhJ" value="false" />
                                                    <property role="TrG5h" value="acceptWritten" />
                                                    <node concept="10P_77" id="1E7UGCo_RJ1" role="3clF45" />
                                                    <node concept="3Tm1VV" id="1E7UGCo_RJ2" role="1B3o_S" />
                                                    <node concept="37vLTG" id="1E7UGCo_RJ3" role="3clF46">
                                                      <property role="TrG5h" value="file" />
                                                      <node concept="3uibUv" id="1E7UGCo_RJ4" role="1tU5fm">
                                                        <ref role="3uigEE" to="59et:~IFile" resolve="IFile" />
                                                      </node>
                                                    </node>
                                                    <node concept="3clFbS" id="1E7UGCo_RJ5" role="3clF47">
                                                      <node concept="3clFbJ" id="1E7UGCo_RJ6" role="3cqZAp">
                                                        <node concept="3clFbS" id="1E7UGCo_RJ7" role="3clFbx">
                                                          <node concept="3clFbF" id="1E7UGCo_RJ8" role="3cqZAp">
                                                            <node concept="37vLTI" id="1E7UGCo_RJ9" role="3clFbG">
                                                              <node concept="37vLTw" id="1E7UGCo_RJa" role="37vLTx">
                                                                <ref role="3cqZAo" node="1E7UGCo_RJ3" resolve="file" />
                                                              </node>
                                                              <node concept="AH0OO" id="1E7UGCo_RJb" role="37vLTJ">
                                                                <node concept="3cmrfG" id="1E7UGCo_RJc" role="AHEQo">
                                                                  <property role="3cmrfH" value="0" />
                                                                </node>
                                                                <node concept="37vLTw" id="1E7UGCo_RJd" role="AHHXb">
                                                                  <ref role="3cqZAo" node="1E7UGCo_RIG" resolve="pluginXml" />
                                                                </node>
                                                              </node>
                                                            </node>
                                                          </node>
                                                          <node concept="3cpWs6" id="1E7UGCo_RJo" role="3cqZAp">
                                                            <node concept="3clFbT" id="1E7UGCo_RJp" role="3cqZAk">
                                                              <property role="3clFbU" value="false" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                        <node concept="17R0WA" id="1E7UGCo_RJq" role="3clFbw">
                                                          <node concept="2OqwBi" id="1E7UGCo_RJs" role="3uHU7B">
                                                            <node concept="37vLTw" id="1E7UGCo_RJt" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="1E7UGCo_RJ3" resolve="file" />
                                                            </node>
                                                            <node concept="liA8E" id="1E7UGCo_RJu" role="2OqNvi">
                                                              <ref role="37wK5l" to="59et:~IFile.getName():java.lang.String" resolve="getName" />
                                                            </node>
                                                          </node>
                                                          <node concept="37vLTw" id="1E7UGCoAdzk" role="3uHU7w">
                                                            <ref role="3cqZAo" node="1E7UGCoA8nW" resolve="fileName" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="3clFbF" id="1E7UGCo_RJv" role="3cqZAp">
                                                        <node concept="3clFbT" id="1E7UGCo_RJw" role="3clFbG">
                                                          <property role="3clFbU" value="true" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="2AHcQZ" id="1E7UGCo_RJx" role="2AJF6D">
                                                      <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3cpWs8" id="1E7UGCoAnWL" role="3cqZAp">
                                        <node concept="3cpWsn" id="1E7UGCoAnWO" role="3cpWs9">
                                          <property role="TrG5h" value="outputLocation" />
                                          <node concept="17QB3L" id="1E7UGCoAnWJ" role="1tU5fm" />
                                          <node concept="3cpWs3" id="1E7UGCoHtZE" role="33vP2m">
                                            <node concept="2YIFZM" id="4t8BCwHqHbC" role="3uHU7w">
                                              <ref role="37wK5l" to="sdve:~WordUtils.capitalize(java.lang.String):java.lang.String" resolve="capitalize" />
                                              <ref role="1Pybhc" to="sdve:~WordUtils" resolve="WordUtils" />
                                              <node concept="2OqwBi" id="4t8BCwHqHtx" role="37wK5m">
                                                <node concept="2OqwBi" id="4t8BCwHqHbD" role="2Oq$k0">
                                                  <node concept="2OqwBi" id="4t8BCwHqHbE" role="2Oq$k0">
                                                    <node concept="2OqwBi" id="4t8BCwHqHbF" role="2Oq$k0">
                                                      <node concept="3TrEf2" id="4t8BCwHqHbG" role="2OqNvi">
                                                        <ref role="3Tt5mk" to="w348:69ees3tIP8T" />
                                                      </node>
                                                      <node concept="Jnkvi" id="1E7UGCoEr_1" role="2Oq$k0">
                                                        <ref role="1M0zk5" node="1E7UGCow$vT" resolve="project" />
                                                      </node>
                                                    </node>
                                                    <node concept="3TrcHB" id="2BpIVDC3ZnR" role="2OqNvi">
                                                      <ref role="3TsBF5" to="w348:2BpIVDBYfrR" resolve="directoryName" />
                                                    </node>
                                                  </node>
                                                  <node concept="liA8E" id="4t8BCwHqHbJ" role="2OqNvi">
                                                    <ref role="37wK5l" to="e2lb:~String.replaceAll(java.lang.String,java.lang.String):java.lang.String" resolve="replaceAll" />
                                                    <node concept="Xl_RD" id="4t8BCwHqHbK" role="37wK5m">
                                                      <property role="Xl_RC" value="\\s" />
                                                    </node>
                                                    <node concept="Xl_RD" id="4t8BCwHqHbL" role="37wK5m">
                                                      <property role="Xl_RC" value="" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="liA8E" id="4t8BCwHqIxe" role="2OqNvi">
                                                  <ref role="37wK5l" to="e2lb:~String.trim():java.lang.String" resolve="trim" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3cpWs3" id="1E7UGCoElw_" role="3uHU7B">
                                              <node concept="3cpWs3" id="1E7UGCoEg6x" role="3uHU7B">
                                                <node concept="2OqwBi" id="5ybh7Sa2THJ" role="3uHU7w">
                                                  <node concept="Jnkvi" id="5ybh7Sa2Ttm" role="2Oq$k0">
                                                    <ref role="1M0zk5" node="1E7UGCow$vT" resolve="project" />
                                                  </node>
                                                  <node concept="3TrcHB" id="5ybh7Sa2Uqt" role="2OqNvi">
                                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                                  </node>
                                                </node>
                                                <node concept="3cpWs3" id="1E7UGCoEeh5" role="3uHU7B">
                                                  <node concept="2OqwBi" id="1E7UGCpanro" role="3uHU7B">
                                                    <node concept="2OqwBi" id="1E7UGCoEcv8" role="2Oq$k0">
                                                      <node concept="2OqwBi" id="1E7UGCoAqy7" role="2Oq$k0">
                                                        <node concept="Jnkvi" id="1E7UGCoAq0Q" role="2Oq$k0">
                                                          <ref role="1M0zk5" node="1E7UGCow$vT" resolve="project" />
                                                        </node>
                                                        <node concept="3TrEf2" id="1E7UGCoEbE1" role="2OqNvi">
                                                          <ref role="3Tt5mk" to="w348:69ees3tIP8T" />
                                                        </node>
                                                      </node>
                                                      <node concept="3TrEf2" id="1E7UGCpamFV" role="2OqNvi">
                                                        <ref role="3Tt5mk" to="w348:1E7UGCp8Qtp" />
                                                      </node>
                                                    </node>
                                                    <node concept="3TrcHB" id="1E7UGCpaohN" role="2OqNvi">
                                                      <ref role="3TsBF5" to="w348:1E7UGCp8PBA" resolve="directoryLocation" />
                                                    </node>
                                                  </node>
                                                  <node concept="Xl_RD" id="1E7UGCoEeTj" role="3uHU7w">
                                                    <property role="Xl_RC" value="/" />
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="Xl_RD" id="1E7UGCoHu_S" role="3uHU7w">
                                                <property role="Xl_RC" value="/" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbJ" id="1E7UGCo_T9V" role="3cqZAp">
                                        <node concept="3clFbS" id="1E7UGCo_T9W" role="3clFbx">
                                          <node concept="3clFbF" id="1E7UGCo_Ta5" role="3cqZAp">
                                            <node concept="2YIFZM" id="1E7UGCo_Ta6" role="3clFbG">
                                              <ref role="37wK5l" to="msyo:~FileUtil.copyFile(java.io.File,java.io.File):void" resolve="copyFile" />
                                              <ref role="1Pybhc" to="msyo:~FileUtil" resolve="FileUtil" />
                                              <node concept="2ShNRf" id="1E7UGCo_Ta7" role="37wK5m">
                                                <node concept="1pGfFk" id="1E7UGCo_Ta8" role="2ShVmc">
                                                  <ref role="37wK5l" to="fxg7:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                                                  <node concept="2OqwBi" id="1E7UGCo_Ta9" role="37wK5m">
                                                    <node concept="AH0OO" id="1E7UGCo_Taa" role="2Oq$k0">
                                                      <node concept="3cmrfG" id="1E7UGCo_Tab" role="AHEQo">
                                                        <property role="3cmrfH" value="0" />
                                                      </node>
                                                      <node concept="37vLTw" id="1E7UGCo_Tac" role="AHHXb">
                                                        <ref role="3cqZAo" node="1E7UGCo_RIG" resolve="pluginXml" />
                                                      </node>
                                                    </node>
                                                    <node concept="liA8E" id="1E7UGCo_Tad" role="2OqNvi">
                                                      <ref role="37wK5l" to="59et:~IFile.getPath():java.lang.String" resolve="getPath" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="2ShNRf" id="1E7UGCo_Tae" role="37wK5m">
                                                <node concept="1pGfFk" id="1E7UGCo_Taf" role="2ShVmc">
                                                  <ref role="37wK5l" to="fxg7:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                                                  <node concept="3cpWs3" id="1E7UGCoAupM" role="37wK5m">
                                                    <node concept="37vLTw" id="1E7UGCoAv2n" role="3uHU7w">
                                                      <ref role="3cqZAo" node="1E7UGCoA8nW" resolve="fileName" />
                                                    </node>
                                                    <node concept="3cpWs3" id="1E7UGCoAsUY" role="3uHU7B">
                                                      <node concept="37vLTw" id="1E7UGCoAsiL" role="3uHU7B">
                                                        <ref role="3cqZAo" node="1E7UGCoAnWO" resolve="outputLocation" />
                                                      </node>
                                                      <node concept="Xl_RD" id="1E7UGCoAtqU" role="3uHU7w">
                                                        <property role="Xl_RC" value="/" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3y3z36" id="1E7UGCo_Tah" role="3clFbw">
                                          <node concept="AH0OO" id="1E7UGCo_Tai" role="3uHU7B">
                                            <node concept="3cmrfG" id="1E7UGCo_Taj" role="AHEQo">
                                              <property role="3cmrfH" value="0" />
                                            </node>
                                            <node concept="37vLTw" id="1E7UGCo_Tak" role="AHHXb">
                                              <ref role="3cqZAo" node="1E7UGCo_RIG" resolve="pluginXml" />
                                            </node>
                                          </node>
                                          <node concept="10Nm6u" id="1E7UGCo_Tal" role="3uHU7w" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="JncvC" id="1E7UGCow$vT" role="JncvA">
                                      <property role="TrG5h" value="project" />
                                      <node concept="2jxLKc" id="1E7UGCow$vU" role="1tU5fm" />
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
              <node concept="TDmWw" id="1E7UGCo_qiU" role="TEbGg">
                <node concept="3cpWsn" id="1E7UGCo_qiV" role="TDEfY">
                  <property role="TrG5h" value="e" />
                  <node concept="3uibUv" id="1E7UGCo_rIX" role="1tU5fm">
                    <ref role="3uigEE" to="e2lb:~Exception" resolve="Exception" />
                  </node>
                </node>
                <node concept="3clFbS" id="1E7UGCo_qiX" role="TDEfX">
                  <node concept="YS8fn" id="1E7UGCo_rPd" role="3cqZAp">
                    <node concept="2ShNRf" id="1E7UGCo_rPt" role="YScLw">
                      <node concept="1pGfFk" id="1E7UGCo_sb5" role="2ShVmc">
                        <ref role="37wK5l" to="e2lb:~Error.&lt;init&gt;(java.lang.String)" resolve="Error" />
                        <node concept="3cpWs3" id="1MyzK_kCLis" role="37wK5m">
                          <node concept="Xl_RD" id="1E7UGCo_sgk" role="3uHU7B">
                            <property role="Xl_RC" value="Error in plugin: " />
                          </node>
                          <node concept="37vLTw" id="1MyzK_kCLy1" role="3uHU7w">
                            <ref role="3cqZAo" node="1E7UGCo_qiV" resolve="e" />
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
      <node concept="3D36IL" id="1E7UGCoDK3s" role="3D36I5">
        <node concept="3D27Fh" id="1E7UGCoDKlm" role="3D36IM">
          <ref role="3uigEE" to="fn29:1Xl3kQ1uadv" resolve="TResource" />
        </node>
      </node>
    </node>
    <node concept="3HPw9p" id="1E7UGCoDK3c" role="1Mm5TH">
      <ref role="1Mm5Yu" to="tpcq:5L5h3brvz7i" resolve="Generate" />
    </node>
    <node concept="3HPw9p" id="1E7UGCoDK3h" role="1Mm5TH">
      <ref role="1Mm5Yu" to="tpcq:5L5h3brvDH_" resolve="TextGen" />
    </node>
  </node>
</model>

