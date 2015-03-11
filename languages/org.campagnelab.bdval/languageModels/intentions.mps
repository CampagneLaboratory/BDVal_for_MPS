<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f3ea1e25-aab8-445d-9fb9-090b3b3258bf(org.campagnelab.bdval.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="w348" ref="r:91a4ef63-e30e-4b86-bcdc-748a33d96fa7(org.campagnelab.bdval.structure)" />
    <import index="c3kk" ref="r:825ae26d-5123-4d82-aa5e-7977a26d188c(org.campagnelab.bdval.behavior)" />
    <import index="fxg7" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" />
    <import index="dbrf" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#javax.swing(JDK/javax.swing@java_stub)" />
    <import index="k7g3" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="odbm" ref="f:java_stub#35dbc0f6-2677-4e81-9b75-548a3c2b6d9b#org.apache.commons.io(org.campagnelab.bdval/org.apache.commons.io@java_stub)" />
    <import index="1t7x" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.awt(JDK/java.awt@java_stub)" />
    <import index="msyo" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.util(MPS.Core/jetbrains.mps.util@java_stub)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="3618415754251190715" name="jetbrains.mps.lang.intentions.structure.ChildFilterFunction" flags="in" index="zTJ1e" />
      <concept id="3618415754251192144" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_childNode" flags="nn" index="zTJq_" />
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795771125" name="jetbrains.mps.lang.intentions.structure.IsApplicableBlock" flags="in" index="2SaL7w" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <property id="2522969319638091386" name="isAvailableInChildNodes" index="2ZfUl0" />
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093994" name="childFilterFunction" index="2ZfVeg" />
        <child id="2522969319638093995" name="isApplicableFunction" index="2ZfVeh" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="1138757581985" name="jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation" flags="nn" index="zfrQC">
        <reference id="1139880128956" name="concept" index="1A9B2P" />
      </concept>
      <concept id="1139184414036" name="jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation" flags="nn" index="WFELt">
        <reference id="1139877738879" name="concept" index="1A0vxQ" />
      </concept>
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <reference id="1140138128738" name="concept" index="1PxNhF" />
        <child id="1140138123956" name="leftExpression" index="1PxMeX" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
      <concept id="1215467301810" name="jetbrains.mps.lang.smodel.structure.Property_RemoveOperation" flags="nn" index="3ZvMEC" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="2S6QgY" id="3LcHJp$dfYf">
    <property role="TrG5h" value="LoadInput" />
    <property role="2ZfUl0" value="true" />
    <property role="3GE5qa" value="dataset" />
    <ref role="2ZfgGC" to="w348:67x0xp6fMLS" resolve="Input" />
    <node concept="2S6ZIM" id="3LcHJp$dfYg" role="2ZfVej">
      <node concept="3clFbS" id="3LcHJp$dfYh" role="2VODD2">
        <node concept="3clFbF" id="3LcHJp$dgAD" role="3cqZAp">
          <node concept="Xl_RD" id="3LcHJp$dgAC" role="3clFbG">
            <property role="Xl_RC" value="Load Input File" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3LcHJp$dfYi" role="2ZfgGD">
      <node concept="3clFbS" id="3LcHJp$dfYj" role="2VODD2">
        <node concept="3clFbF" id="3LcHJp$dkuh" role="3cqZAp">
          <node concept="2OqwBi" id="3LcHJp$dkvp" role="3clFbG">
            <node concept="2Sf5sV" id="3LcHJp$dkug" role="2Oq$k0" />
            <node concept="2qgKlT" id="3LcHJp$dm82" role="2OqNvi">
              <ref role="37wK5l" to="c3kk:67x0xp6goPq" resolve="load" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="3LcHJp$dhXE" role="2ZfVeh">
      <node concept="3clFbS" id="3LcHJp$dhXF" role="2VODD2">
        <node concept="3clFbF" id="1E7UGCpkSnX" role="3cqZAp">
          <node concept="1Wc70l" id="1E7UGCpnzCR" role="3clFbG">
            <node concept="2OqwBi" id="1E7UGCpnAIb" role="3uHU7w">
              <node concept="2ShNRf" id="1E7UGCpnzQu" role="2Oq$k0">
                <node concept="1pGfFk" id="1E7UGCpn$bB" role="2ShVmc">
                  <ref role="37wK5l" to="fxg7:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                  <node concept="2OqwBi" id="1E7UGCpn_de" role="37wK5m">
                    <node concept="2OqwBi" id="1E7UGCpn$$Z" role="2Oq$k0">
                      <node concept="2Sf5sV" id="1E7UGCpn$tq" role="2Oq$k0" />
                      <node concept="3TrEf2" id="1E7UGCpn$RS" role="2OqNvi">
                        <ref role="3Tt5mk" to="w348:1E7UGCp8Bfm" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="1E7UGCpn_w7" role="2OqNvi">
                      <ref role="3TsBF5" to="w348:1E7UGCp0R5I" resolve="fileLocation" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1E7UGCpnBNm" role="2OqNvi">
                <ref role="37wK5l" to="fxg7:~File.exists():boolean" resolve="exists" />
              </node>
            </node>
            <node concept="2OqwBi" id="1E7UGCpkTzs" role="3uHU7B">
              <node concept="2OqwBi" id="1E7UGCpkT2l" role="2Oq$k0">
                <node concept="2OqwBi" id="1E7UGCpkSs5" role="2Oq$k0">
                  <node concept="2Sf5sV" id="1E7UGCpkSnW" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1E7UGCpkSHR" role="2OqNvi">
                    <ref role="3Tt5mk" to="w348:1E7UGCp8Bfm" />
                  </node>
                </node>
                <node concept="3TrcHB" id="1E7UGCpkTc8" role="2OqNvi">
                  <ref role="3TsBF5" to="w348:1E7UGCp0R5I" resolve="fileLocation" />
                </node>
              </node>
              <node concept="17RvpY" id="1E7UGCpkUzy" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="zTJ1e" id="1E7UGCpilMe" role="2ZfVeg">
      <node concept="3clFbS" id="1E7UGCpilMf" role="2VODD2">
        <node concept="3clFbF" id="1E7UGCpimGf" role="3cqZAp">
          <node concept="2OqwBi" id="1E7UGCpimMS" role="3clFbG">
            <node concept="zTJq_" id="1E7UGCpimGe" role="2Oq$k0" />
            <node concept="1mIQ4w" id="1E7UGCpin8x" role="2OqNvi">
              <node concept="chp4Y" id="1E7UGCpinmH" role="cj9EA">
                <ref role="cht4Q" to="w348:1E7UGCp0R2t" resolve="File" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="3LcHJp$iMuP">
    <property role="TrG5h" value="LoadCIDs" />
    <property role="2ZfUl0" value="true" />
    <property role="3GE5qa" value="dataset" />
    <ref role="2ZfgGC" to="w348:67x0xp6glHc" resolve="CIDs" />
    <node concept="2S6ZIM" id="3LcHJp$iMuQ" role="2ZfVej">
      <node concept="3clFbS" id="3LcHJp$iMuR" role="2VODD2">
        <node concept="3clFbF" id="3LcHJp$iP5L" role="3cqZAp">
          <node concept="Xl_RD" id="3LcHJp$iP5K" role="3clFbG">
            <property role="Xl_RC" value="Load CIDs File" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3LcHJp$iMuS" role="2ZfgGD">
      <node concept="3clFbS" id="3LcHJp$iMuT" role="2VODD2">
        <node concept="3clFbF" id="3LcHJp$iSoD" role="3cqZAp">
          <node concept="2OqwBi" id="3LcHJp$iSpL" role="3clFbG">
            <node concept="2Sf5sV" id="3LcHJp$iSoC" role="2Oq$k0" />
            <node concept="2qgKlT" id="3LcHJp$iSCz" role="2OqNvi">
              <ref role="37wK5l" to="c3kk:3LcHJp$5jYD" resolve="load" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4LZQFRp4BQe" role="3cqZAp" />
      </node>
    </node>
    <node concept="2SaL7w" id="3LcHJp$iQ5T" role="2ZfVeh">
      <node concept="3clFbS" id="3LcHJp$iQ5U" role="2VODD2">
        <node concept="3cpWs8" id="1E7UGCpDEwc" role="3cqZAp">
          <node concept="3cpWsn" id="1E7UGCpDEwf" role="3cpWs9">
            <property role="TrG5h" value="dataset" />
            <node concept="3Tqbb2" id="1E7UGCpDEwa" role="1tU5fm">
              <ref role="ehGHo" to="w348:67x0xp6glH2" resolve="DataSet" />
            </node>
            <node concept="1PxgMI" id="1E7UGCpE3ev" role="33vP2m">
              <ref role="1PxNhF" to="w348:67x0xp6glH2" resolve="DataSet" />
              <node concept="2OqwBi" id="1E7UGCpDG94" role="1PxMeX">
                <node concept="2Sf5sV" id="1E7UGCpDG3A" role="2Oq$k0" />
                <node concept="1mfA1w" id="1E7UGCpDGvF" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2UUqZtuBe7a" role="3cqZAp">
          <node concept="1Wc70l" id="1E7UGCpDQG0" role="3clFbG">
            <node concept="2OqwBi" id="1E7UGCpE1H5" role="3uHU7w">
              <node concept="2OqwBi" id="1E7UGCpDW0E" role="2Oq$k0">
                <node concept="2OqwBi" id="1E7UGCpDS9T" role="2Oq$k0">
                  <node concept="2OqwBi" id="1E7UGCpDRis" role="2Oq$k0">
                    <node concept="37vLTw" id="1E7UGCpDR72" role="2Oq$k0">
                      <ref role="3cqZAo" node="1E7UGCpDEwf" resolve="dataset" />
                    </node>
                    <node concept="3TrEf2" id="1E7UGCpDRQD" role="2OqNvi">
                      <ref role="3Tt5mk" to="w348:69ees3rLBNe" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="1E7UGCpDUS1" role="2OqNvi">
                    <ref role="3TtcxE" to="w348:69ees3rMbdl" />
                  </node>
                </node>
                <node concept="13MTOL" id="1E7UGCpE0lL" role="2OqNvi">
                  <ref role="13MTZf" to="w348:69ees3rMbdj" />
                </node>
              </node>
              <node concept="3GX2aA" id="1E7UGCpE2LS" role="2OqNvi" />
            </node>
            <node concept="1Wc70l" id="1E7UGCpDDdn" role="3uHU7B">
              <node concept="1Wc70l" id="1E7UGCpqnOQ" role="3uHU7B">
                <node concept="1Wc70l" id="2UUqZtuBFec" role="3uHU7B">
                  <node concept="2OqwBi" id="2UUqZtuDguD" role="3uHU7B">
                    <node concept="2OqwBi" id="2UUqZtuBgzN" role="2Oq$k0">
                      <node concept="2OqwBi" id="2UUqZtuBfLl" role="2Oq$k0">
                        <node concept="3TrEf2" id="2UUqZtuBgiv" role="2OqNvi">
                          <ref role="3Tt5mk" to="w348:67x0xp6glHo" />
                        </node>
                        <node concept="37vLTw" id="1E7UGCpDHz5" role="2Oq$k0">
                          <ref role="3cqZAo" node="1E7UGCpDEwf" resolve="dataset" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="2UUqZtuDflQ" role="2OqNvi">
                        <ref role="3TtcxE" to="w348:67x0xp6jqPe" />
                      </node>
                    </node>
                    <node concept="3GX2aA" id="2UUqZtuDiH2" role="2OqNvi" />
                  </node>
                  <node concept="2OqwBi" id="3LcHJp$iRe$" role="3uHU7w">
                    <node concept="2OqwBi" id="7LxCMIuDFK6" role="2Oq$k0">
                      <node concept="2OqwBi" id="1E7UGCp94hl" role="2Oq$k0">
                        <node concept="2Sf5sV" id="3LcHJp$iQkD" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7LxCMIuDFo4" role="2OqNvi">
                          <ref role="3Tt5mk" to="w348:7LxCMIuuxZy" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="7LxCMIuDGde" role="2OqNvi">
                        <ref role="3TsBF5" to="w348:1E7UGCp0R5I" resolve="fileLocation" />
                      </node>
                    </node>
                    <node concept="17RvpY" id="3LcHJp$iScX" role="2OqNvi" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1E7UGCpqrcb" role="3uHU7w">
                  <node concept="2ShNRf" id="1E7UGCpqqad" role="2Oq$k0">
                    <node concept="1pGfFk" id="1E7UGCpqqtZ" role="2ShVmc">
                      <ref role="37wK5l" to="fxg7:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                      <node concept="2OqwBi" id="7LxCMIuDGYG" role="37wK5m">
                        <node concept="2OqwBi" id="1E7UGCpqoKX" role="2Oq$k0">
                          <node concept="2Sf5sV" id="1E7UGCpqo7q" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7LxCMIuDG$y" role="2OqNvi">
                            <ref role="3Tt5mk" to="w348:7LxCMIuuxZy" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7LxCMIuDHt8" role="2OqNvi">
                          <ref role="3TsBF5" to="w348:1E7UGCp0R5I" resolve="fileLocation" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1E7UGCpqsjj" role="2OqNvi">
                    <ref role="37wK5l" to="fxg7:~File.exists():boolean" resolve="exists" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1E7UGCpDP_O" role="3uHU7w">
                <node concept="2OqwBi" id="1E7UGCpDJnr" role="2Oq$k0">
                  <node concept="2OqwBi" id="1E7UGCpDIzl" role="2Oq$k0">
                    <node concept="37vLTw" id="1E7UGCpDIeV" role="2Oq$k0">
                      <ref role="3cqZAo" node="1E7UGCpDEwf" resolve="dataset" />
                    </node>
                    <node concept="3TrEf2" id="1E7UGCpDJ4O" role="2OqNvi">
                      <ref role="3Tt5mk" to="w348:69ees3rLBNe" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="1E7UGCpDPaX" role="2OqNvi">
                    <ref role="3Tt5mk" to="w348:69ees3rM0Ol" />
                  </node>
                </node>
                <node concept="3x8VRR" id="1E7UGCpDQ99" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="zTJ1e" id="1E7UGCpqlXo" role="2ZfVeg">
      <node concept="3clFbS" id="1E7UGCpqlXp" role="2VODD2">
        <node concept="3clFbF" id="1E7UGCpqmbf" role="3cqZAp">
          <node concept="2OqwBi" id="1E7UGCpqmhS" role="3clFbG">
            <node concept="zTJq_" id="1E7UGCpqmbe" role="2Oq$k0" />
            <node concept="1mIQ4w" id="1E7UGCpqmWi" role="2OqNvi">
              <node concept="chp4Y" id="1E7UGCpqn7G" role="cj9EA">
                <ref role="cht4Q" to="w348:1E7UGCp0R2t" resolve="File" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="69ees3sMb2U">
    <property role="TrG5h" value="ExtractEndpoints" />
    <property role="3GE5qa" value="dataset" />
    <ref role="2ZfgGC" to="w348:69ees3rLBNq" resolve="Task" />
    <node concept="2S6ZIM" id="69ees3sMb2V" role="2ZfVej">
      <node concept="3clFbS" id="69ees3sMb2W" role="2VODD2">
        <node concept="3clFbF" id="69ees3sMbdX" role="3cqZAp">
          <node concept="Xl_RD" id="69ees3sMbdW" role="3clFbG">
            <property role="Xl_RC" value="Assign Categories from Sample Name" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="69ees3sMb2X" role="2ZfgGD">
      <node concept="3clFbS" id="69ees3sMb2Y" role="2VODD2">
        <node concept="3clFbF" id="69ees3sMiPX" role="3cqZAp">
          <node concept="2OqwBi" id="69ees3sMiR5" role="3clFbG">
            <node concept="2Sf5sV" id="69ees3sMiPW" role="2Oq$k0" />
            <node concept="2qgKlT" id="23lUIT9a3ah" role="2OqNvi">
              <ref role="37wK5l" to="c3kk:23lUIT99JEp" resolve="getEndpoints" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="69ees3sMdhV" role="2ZfVeh">
      <node concept="3clFbS" id="69ees3sMdhW" role="2VODD2">
        <node concept="3clFbF" id="69ees3sMdwG" role="3cqZAp">
          <node concept="1Wc70l" id="7LxCMIvvolg" role="3clFbG">
            <node concept="2OqwBi" id="7LxCMIvvoSf" role="3uHU7w">
              <node concept="2Sf5sV" id="7LxCMIvvoBD" role="2Oq$k0" />
              <node concept="2qgKlT" id="7LxCMIvvp6C" role="2OqNvi">
                <ref role="37wK5l" to="c3kk:7LxCMIvukgU" resolve="checkForEndpoints" />
              </node>
            </node>
            <node concept="1Wc70l" id="7LxCMItcbQL" role="3uHU7B">
              <node concept="1Wc70l" id="69ees3sMf2h" role="3uHU7B">
                <node concept="2OqwBi" id="69ees3sMei4" role="3uHU7B">
                  <node concept="2OqwBi" id="69ees3sMd$I" role="2Oq$k0">
                    <node concept="2Sf5sV" id="69ees3sMdwF" role="2Oq$k0" />
                    <node concept="3TrEf2" id="69ees3sMdXo" role="2OqNvi">
                      <ref role="3Tt5mk" to="w348:69ees3rM0Ol" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="69ees3sMeIo" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="69ees3sMgLL" role="3uHU7w">
                  <node concept="2OqwBi" id="3pvWWvhjNtM" role="2Oq$k0">
                    <node concept="2OqwBi" id="69ees3sMfjT" role="2Oq$k0">
                      <node concept="2Sf5sV" id="69ees3sMff$" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="69ees3sMfJv" role="2OqNvi">
                        <ref role="3TtcxE" to="w348:69ees3rMbdl" />
                      </node>
                    </node>
                    <node concept="13MTOL" id="3pvWWvhjPr5" role="2OqNvi">
                      <ref role="13MTZf" to="w348:69ees3rMbdj" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="69ees3sMiC5" role="2OqNvi" />
                </node>
              </node>
              <node concept="2OqwBi" id="7LxCMItcgYB" role="3uHU7w">
                <node concept="2OqwBi" id="7LxCMItcfsp" role="2Oq$k0">
                  <node concept="2OqwBi" id="7LxCMItcery" role="2Oq$k0">
                    <node concept="1PxgMI" id="7LxCMItcdVm" role="2Oq$k0">
                      <ref role="1PxNhF" to="w348:67x0xp6glH2" resolve="DataSet" />
                      <node concept="2OqwBi" id="7LxCMItcd1m" role="1PxMeX">
                        <node concept="2Sf5sV" id="7LxCMItcc7A" role="2Oq$k0" />
                        <node concept="1mfA1w" id="7LxCMItcd_7" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="7LxCMItceZj" role="2OqNvi">
                      <ref role="3Tt5mk" to="w348:67x0xp6glHo" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="7LxCMItcfUM" role="2OqNvi">
                    <ref role="3TtcxE" to="w348:67x0xp6jqPe" />
                  </node>
                </node>
                <node concept="3GX2aA" id="7LxCMItcjal" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="7LxCMIvKGfv">
    <property role="TrG5h" value="ClearCategories" />
    <ref role="2ZfgGC" to="w348:69ees3rLBNq" resolve="Task" />
    <node concept="2S6ZIM" id="7LxCMIvKGfw" role="2ZfVej">
      <node concept="3clFbS" id="7LxCMIvKGfx" role="2VODD2">
        <node concept="3clFbF" id="7LxCMIvKHot" role="3cqZAp">
          <node concept="Xl_RD" id="7LxCMIvKHos" role="3clFbG">
            <property role="Xl_RC" value="Clear All Sample-Category Assignments" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="7LxCMIvKGfy" role="2ZfgGD">
      <node concept="3clFbS" id="7LxCMIvKGfz" role="2VODD2">
        <node concept="3clFbF" id="7LxCMIvKTuL" role="3cqZAp">
          <node concept="2OqwBi" id="7LxCMIvKTvX" role="3clFbG">
            <node concept="2Sf5sV" id="7LxCMIvKTuK" role="2Oq$k0" />
            <node concept="2qgKlT" id="7LxCMIvKTBN" role="2OqNvi">
              <ref role="37wK5l" to="c3kk:7LxCMIvyvr_" resolve="clearCategoryAssignments" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="7LxCMIvKLrF" role="2ZfVeh">
      <node concept="3clFbS" id="7LxCMIvKLrG" role="2VODD2">
        <node concept="3clFbF" id="7LxCMIvKLEQ" role="3cqZAp">
          <node concept="2OqwBi" id="7LxCMIvKP9f" role="3clFbG">
            <node concept="2OqwBi" id="7LxCMIvKNWL" role="2Oq$k0">
              <node concept="2OqwBi" id="7LxCMIvKNjS" role="2Oq$k0">
                <node concept="1PxgMI" id="7LxCMIvKMyh" role="2Oq$k0">
                  <ref role="1PxNhF" to="w348:67x0xp6glH2" resolve="DataSet" />
                  <node concept="2OqwBi" id="7LxCMIvKLIY" role="1PxMeX">
                    <node concept="2Sf5sV" id="7LxCMIvKLEP" role="2Oq$k0" />
                    <node concept="1mfA1w" id="7LxCMIvKMf2" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3TrEf2" id="7LxCMIvKNE3" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:67x0xp6glHo" />
                </node>
              </node>
              <node concept="3Tsc0h" id="7LxCMIvKOkz" role="2OqNvi">
                <ref role="3TtcxE" to="w348:67x0xp6jqPe" />
              </node>
            </node>
            <node concept="2HwmR7" id="7LxCMIvKRnE" role="2OqNvi">
              <node concept="1bVj0M" id="7LxCMIvKRnG" role="23t8la">
                <node concept="3clFbS" id="7LxCMIvKRnH" role="1bW5cS">
                  <node concept="3clFbF" id="7LxCMIvKRMX" role="3cqZAp">
                    <node concept="2OqwBi" id="7LxCMIvKSGH" role="3clFbG">
                      <node concept="2OqwBi" id="7LxCMIvKRTL" role="2Oq$k0">
                        <node concept="37vLTw" id="7LxCMIvKRMW" role="2Oq$k0">
                          <ref role="3cqZAo" node="7LxCMIvKRnI" resolve="sample" />
                        </node>
                        <node concept="3TrEf2" id="7LxCMIvKSdh" role="2OqNvi">
                          <ref role="3Tt5mk" to="w348:69ees3rLOXZ" />
                        </node>
                      </node>
                      <node concept="3x8VRR" id="7LxCMIvKTc0" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="7LxCMIvKRnI" role="1bW2Oz">
                  <property role="TrG5h" value="sample" />
                  <node concept="2jxLKc" id="7LxCMIvKRnJ" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="1MyzK_kOeei">
    <property role="TrG5h" value="Ttest-Svm" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="w348:6q92Kfr5RCI" resolve="ModelingApproaches" />
    <node concept="2S6ZIM" id="1MyzK_kOeej" role="2ZfVej">
      <node concept="3clFbS" id="1MyzK_kOeek" role="2VODD2">
        <node concept="3clFbF" id="1MyzK_kOffs" role="3cqZAp">
          <node concept="Xl_RD" id="1MyzK_kOffr" role="3clFbG">
            <property role="Xl_RC" value="Sample Approach: T-Test, SVM" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="1MyzK_kOeel" role="2ZfgGD">
      <node concept="3clFbS" id="1MyzK_kOeem" role="2VODD2">
        <node concept="3clFbF" id="1MyzK_kRuXZ" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kRw3o" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kRv1i" role="2Oq$k0">
              <node concept="2Sf5sV" id="1MyzK_kRuXX" role="2Oq$k0" />
              <node concept="3TrcHB" id="1MyzK_kRvkw" role="2OqNvi">
                <ref role="3TsBF5" to="w348:g7X9E3yI_h" resolve="externalRepeats" />
              </node>
            </node>
            <node concept="3ZvMEC" id="1MyzK_kRymA" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kRyHP" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kR$c1" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kRz2p" role="2Oq$k0">
              <node concept="2Sf5sV" id="1MyzK_kRyHN" role="2Oq$k0" />
              <node concept="3TrcHB" id="1MyzK_kRzPf" role="2OqNvi">
                <ref role="3TsBF5" to="w348:g7X9E3yI_x" resolve="externalFolds" />
              </node>
            </node>
            <node concept="3ZvMEC" id="1MyzK_kR$PG" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kRmYI" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kRpDJ" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kRoPe" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kRnjc" role="2Oq$k0">
                <node concept="2Sf5sV" id="1MyzK_kRmYG" role="2Oq$k0" />
                <node concept="3TrEf2" id="1MyzK_kRoFi" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1MyzK_kRp4x" role="2OqNvi">
                <ref role="3TtcxE" to="w348:1BOPt_RbsxY" />
              </node>
            </node>
            <node concept="2Kehj3" id="1MyzK_kRrl2" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kRgR$" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kRj7r" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kRiiL" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kRgUL" role="2Oq$k0">
                <node concept="2Sf5sV" id="1MyzK_kRgRy" role="2Oq$k0" />
                <node concept="3TrEf2" id="1MyzK_kRi99" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1MyzK_kRiy4" role="2OqNvi">
                <ref role="3TtcxE" to="w348:1BOPt_Rbsy3" />
              </node>
            </node>
            <node concept="2Kehj3" id="1MyzK_kRkSO" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kR70t" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kR8oG" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kR7$c" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kR71J" role="2Oq$k0">
                <node concept="2Sf5sV" id="1MyzK_kR70r" role="2Oq$k0" />
                <node concept="3TrEf2" id="1MyzK_kR7q$" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1MyzK_kR7Nu" role="2OqNvi">
                <ref role="3TtcxE" to="w348:1BOPt_Rbsy0" />
              </node>
            </node>
            <node concept="2Kehj3" id="1MyzK_kRa3Z" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kRaxo" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kRbFP" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kRaRc" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kRayH" role="2Oq$k0">
                <node concept="2Sf5sV" id="1MyzK_kRaxm" role="2Oq$k0" />
                <node concept="3TrEf2" id="1MyzK_kRaHu" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:4kZc_K5UTAw" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1MyzK_kRb6u" role="2OqNvi">
                <ref role="3TtcxE" to="w348:4kZc_KaSIsY" />
              </node>
            </node>
            <node concept="2Kehj3" id="1MyzK_kRey6" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="1MyzK_kR$R6" role="3cqZAp" />
        <node concept="3clFbF" id="1MyzK_kRBM8" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kRDp1" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kRCC2" role="2Oq$k0">
              <node concept="2Sf5sV" id="1MyzK_kRBM6" role="2Oq$k0" />
              <node concept="3TrcHB" id="1MyzK_kRCVS" role="2OqNvi">
                <ref role="3TsBF5" to="w348:g7X9E3yI_h" resolve="externalRepeats" />
              </node>
            </node>
            <node concept="tyxLq" id="1MyzK_kRE2o" role="2OqNvi">
              <node concept="3cmrfG" id="1MyzK_kRE47" role="tz02z">
                <property role="3cmrfH" value="5" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kR_6b" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kRAGO" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kR_W2" role="2Oq$k0">
              <node concept="2Sf5sV" id="1MyzK_kR_69" role="2Oq$k0" />
              <node concept="3TrcHB" id="1MyzK_kRAfF" role="2OqNvi">
                <ref role="3TsBF5" to="w348:g7X9E3yI_x" resolve="externalFolds" />
              </node>
            </node>
            <node concept="tyxLq" id="1MyzK_kRBmb" role="2OqNvi">
              <node concept="3cmrfG" id="1MyzK_kRBo2" role="tz02z">
                <property role="3cmrfH" value="5" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kREdE" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kRRdW" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kRQxP" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kRFt_" role="2Oq$k0">
                <node concept="2OqwBi" id="1MyzK_kRED5" role="2Oq$k0">
                  <node concept="2OqwBi" id="1MyzK_kREh9" role="2Oq$k0">
                    <node concept="2Sf5sV" id="1MyzK_kREdC" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1MyzK_kREuQ" role="2OqNvi">
                      <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="1MyzK_kRESn" role="2OqNvi">
                    <ref role="3TtcxE" to="w348:1BOPt_RbsxY" />
                  </node>
                </node>
                <node concept="WFELt" id="1MyzK_kRQq$" role="2OqNvi">
                  <ref role="1A0vxQ" to="w348:g7X9E3yIB2" resolve="Integer" />
                </node>
              </node>
              <node concept="3TrcHB" id="1MyzK_kRQOG" role="2OqNvi">
                <ref role="3TsBF5" to="w348:g7X9E3yIB3" resolve="value" />
              </node>
            </node>
            <node concept="tyxLq" id="1MyzK_kRS$$" role="2OqNvi">
              <node concept="3cmrfG" id="1MyzK_kRSAe" role="tz02z">
                <property role="3cmrfH" value="20" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kRSCC" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kRSCD" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kRSCE" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kRSCF" role="2Oq$k0">
                <node concept="2OqwBi" id="1MyzK_kRSCG" role="2Oq$k0">
                  <node concept="2OqwBi" id="1MyzK_kRSCH" role="2Oq$k0">
                    <node concept="2Sf5sV" id="1MyzK_kRSCI" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1MyzK_kRSCJ" role="2OqNvi">
                      <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="1MyzK_kRSCK" role="2OqNvi">
                    <ref role="3TtcxE" to="w348:1BOPt_RbsxY" />
                  </node>
                </node>
                <node concept="WFELt" id="1MyzK_kRSCL" role="2OqNvi">
                  <ref role="1A0vxQ" to="w348:g7X9E3yIB2" resolve="Integer" />
                </node>
              </node>
              <node concept="3TrcHB" id="1MyzK_kRSCM" role="2OqNvi">
                <ref role="3TsBF5" to="w348:g7X9E3yIB3" resolve="value" />
              </node>
            </node>
            <node concept="tyxLq" id="1MyzK_kRSCN" role="2OqNvi">
              <node concept="3cmrfG" id="1MyzK_kRSCO" role="tz02z">
                <property role="3cmrfH" value="50" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kScIq" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kSdTi" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kSd4v" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kScKa" role="2Oq$k0">
                <node concept="2Sf5sV" id="1MyzK_kScIo" role="2Oq$k0" />
                <node concept="3TrEf2" id="1MyzK_kScU9" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1MyzK_kSdjJ" role="2OqNvi">
                <ref role="3TtcxE" to="w348:1BOPt_Rbsy3" />
              </node>
            </node>
            <node concept="WFELt" id="1MyzK_kSf_$" role="2OqNvi">
              <ref role="1A0vxQ" to="w348:6q92Kfr5HDs" resolve="FeatureSelectionFoldTrue" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kSfJn" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kShv4" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kSg5I" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kSfLa" role="2Oq$k0">
                <node concept="2Sf5sV" id="1MyzK_kSfJl" role="2Oq$k0" />
                <node concept="3TrEf2" id="1MyzK_kSfVk" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1MyzK_kSgkY" role="2OqNvi">
                <ref role="3TtcxE" to="w348:1BOPt_Rbsy3" />
              </node>
            </node>
            <node concept="WFELt" id="1MyzK_kSjbm" role="2OqNvi">
              <ref role="1A0vxQ" to="w348:6q92Kfr5Sux" resolve="FeatureSelectionFoldFalse" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kSjlB" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kSmSb" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kSmha" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kSkwN" role="2Oq$k0">
                <node concept="2OqwBi" id="1MyzK_kSjG9" role="2Oq$k0">
                  <node concept="2OqwBi" id="1MyzK_kSjnt" role="2Oq$k0">
                    <node concept="2Sf5sV" id="1MyzK_kSjl_" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1MyzK_kSjx1" role="2OqNvi">
                      <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="1MyzK_kSjVp" role="2OqNvi">
                    <ref role="3TtcxE" to="w348:1BOPt_Rbsy0" />
                  </node>
                </node>
                <node concept="WFELt" id="1MyzK_kSmbg" role="2OqNvi">
                  <ref role="1A0vxQ" to="w348:1BOPt_Rjk71" resolve="FeatureSelectionStrategy" />
                </node>
              </node>
              <node concept="3TrEf2" id="1MyzK_kSm$5" role="2OqNvi">
                <ref role="3Tt5mk" to="w348:3a_GB3TVZok" />
              </node>
            </node>
            <node concept="zfrQC" id="1MyzK_kSnsZ" role="2OqNvi">
              <ref role="1A9B2P" to="w348:1BOPt_RaTtC" resolve="Ttest" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kTO9q" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kTPYp" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kTOwK" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kTObd" role="2Oq$k0">
                <node concept="2Sf5sV" id="1MyzK_kTO9o" role="2Oq$k0" />
                <node concept="3TrEf2" id="1MyzK_kTOn2" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:4kZc_K5UTAw" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1MyzK_kTOK8" role="2OqNvi">
                <ref role="3TtcxE" to="w348:4kZc_KaSIsY" />
              </node>
            </node>
            <node concept="WFELt" id="1MyzK_kTREF" role="2OqNvi">
              <ref role="1A0vxQ" to="w348:6q92Kfr5JtA" resolve="SVM" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="1MyzK_kSBnV">
    <property role="TrG5h" value="FC+P-LogitBoost" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="w348:6q92Kfr5RCI" resolve="ModelingApproaches" />
    <node concept="2S6ZIM" id="1MyzK_kSBnW" role="2ZfVej">
      <node concept="3clFbS" id="1MyzK_kSBnX" role="2VODD2">
        <node concept="3clFbF" id="1MyzK_kSHFu" role="3cqZAp">
          <node concept="Xl_RD" id="1MyzK_kSHFt" role="3clFbG">
            <property role="Xl_RC" value="Sample Approach: T-test + Fold Change, Logisitic Boost" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="1MyzK_kSBnY" role="2ZfgGD">
      <node concept="3clFbS" id="1MyzK_kSBnZ" role="2VODD2">
        <node concept="3clFbF" id="1MyzK_kSO_J" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kSO_K" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kSO_L" role="2Oq$k0">
              <node concept="2Sf5sV" id="1MyzK_kSO_M" role="2Oq$k0" />
              <node concept="3TrcHB" id="1MyzK_kSO_N" role="2OqNvi">
                <ref role="3TsBF5" to="w348:g7X9E3yI_h" resolve="externalRepeats" />
              </node>
            </node>
            <node concept="3ZvMEC" id="1MyzK_kSO_O" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kSO_P" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kSO_Q" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kSO_R" role="2Oq$k0">
              <node concept="2Sf5sV" id="1MyzK_kSO_S" role="2Oq$k0" />
              <node concept="3TrcHB" id="1MyzK_kSO_T" role="2OqNvi">
                <ref role="3TsBF5" to="w348:g7X9E3yI_x" resolve="externalFolds" />
              </node>
            </node>
            <node concept="3ZvMEC" id="1MyzK_kSO_U" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kSO_V" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kSO_W" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kSO_X" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kSO_Y" role="2Oq$k0">
                <node concept="2Sf5sV" id="1MyzK_kSO_Z" role="2Oq$k0" />
                <node concept="3TrEf2" id="1MyzK_kSOA0" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1MyzK_kSOA1" role="2OqNvi">
                <ref role="3TtcxE" to="w348:1BOPt_RbsxY" />
              </node>
            </node>
            <node concept="2Kehj3" id="1MyzK_kSOA2" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kSOA3" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kSOA4" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kSOA5" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kSOA6" role="2Oq$k0">
                <node concept="2Sf5sV" id="1MyzK_kSOA7" role="2Oq$k0" />
                <node concept="3TrEf2" id="1MyzK_kSOA8" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1MyzK_kSOA9" role="2OqNvi">
                <ref role="3TtcxE" to="w348:1BOPt_Rbsy3" />
              </node>
            </node>
            <node concept="2Kehj3" id="1MyzK_kSOAa" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kSOAb" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kSOAc" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kSOAd" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kSOAe" role="2Oq$k0">
                <node concept="2Sf5sV" id="1MyzK_kSOAf" role="2Oq$k0" />
                <node concept="3TrEf2" id="1MyzK_kSOAg" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1MyzK_kSOAh" role="2OqNvi">
                <ref role="3TtcxE" to="w348:1BOPt_Rbsy0" />
              </node>
            </node>
            <node concept="2Kehj3" id="1MyzK_kSOAi" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kSOAj" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kSOAk" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kSOAl" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kSOAm" role="2Oq$k0">
                <node concept="2Sf5sV" id="1MyzK_kSOAn" role="2Oq$k0" />
                <node concept="3TrEf2" id="1MyzK_kSOAo" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:4kZc_K5UTAw" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1MyzK_kSOAp" role="2OqNvi">
                <ref role="3TtcxE" to="w348:4kZc_KaSIsY" />
              </node>
            </node>
            <node concept="2Kehj3" id="1MyzK_kSOAq" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="1MyzK_kSOAr" role="3cqZAp" />
        <node concept="3clFbF" id="1MyzK_kSOAs" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kSOAt" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kSOAu" role="2Oq$k0">
              <node concept="2Sf5sV" id="1MyzK_kSOAv" role="2Oq$k0" />
              <node concept="3TrcHB" id="1MyzK_kSOAw" role="2OqNvi">
                <ref role="3TsBF5" to="w348:g7X9E3yI_h" resolve="externalRepeats" />
              </node>
            </node>
            <node concept="tyxLq" id="1MyzK_kSOAx" role="2OqNvi">
              <node concept="3cmrfG" id="1MyzK_kSOAy" role="tz02z">
                <property role="3cmrfH" value="5" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kSOAz" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kSOA$" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kSOA_" role="2Oq$k0">
              <node concept="2Sf5sV" id="1MyzK_kSOAA" role="2Oq$k0" />
              <node concept="3TrcHB" id="1MyzK_kSOAB" role="2OqNvi">
                <ref role="3TsBF5" to="w348:g7X9E3yI_x" resolve="externalFolds" />
              </node>
            </node>
            <node concept="tyxLq" id="1MyzK_kSOAC" role="2OqNvi">
              <node concept="3cmrfG" id="1MyzK_kSOAD" role="tz02z">
                <property role="3cmrfH" value="5" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kSOAR" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kSOAS" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kSOAT" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kSOAU" role="2Oq$k0">
                <node concept="2OqwBi" id="1MyzK_kSOAV" role="2Oq$k0">
                  <node concept="2OqwBi" id="1MyzK_kSOAW" role="2Oq$k0">
                    <node concept="2Sf5sV" id="1MyzK_kSOAX" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1MyzK_kSOAY" role="2OqNvi">
                      <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="1MyzK_kSOAZ" role="2OqNvi">
                    <ref role="3TtcxE" to="w348:1BOPt_RbsxY" />
                  </node>
                </node>
                <node concept="WFELt" id="1MyzK_kSOB0" role="2OqNvi">
                  <ref role="1A0vxQ" to="w348:g7X9E3yIB2" resolve="Integer" />
                </node>
              </node>
              <node concept="3TrcHB" id="1MyzK_kSOB1" role="2OqNvi">
                <ref role="3TsBF5" to="w348:g7X9E3yIB3" resolve="value" />
              </node>
            </node>
            <node concept="tyxLq" id="1MyzK_kSOB2" role="2OqNvi">
              <node concept="3cmrfG" id="1MyzK_kSOB3" role="tz02z">
                <property role="3cmrfH" value="50" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kSOB4" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kSOB5" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kSOB6" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kSOB7" role="2Oq$k0">
                <node concept="2Sf5sV" id="1MyzK_kSOB8" role="2Oq$k0" />
                <node concept="3TrEf2" id="1MyzK_kSOB9" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1MyzK_kSOBa" role="2OqNvi">
                <ref role="3TtcxE" to="w348:1BOPt_Rbsy3" />
              </node>
            </node>
            <node concept="WFELt" id="1MyzK_kSOBb" role="2OqNvi">
              <ref role="1A0vxQ" to="w348:6q92Kfr5HDs" resolve="FeatureSelectionFoldTrue" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1MyzK_kSXbQ" role="3cqZAp" />
        <node concept="3cpWs8" id="1MyzK_kSXwr" role="3cqZAp">
          <node concept="3cpWsn" id="1MyzK_kSXwu" role="3cpWs9">
            <property role="TrG5h" value="fsCombo" />
            <node concept="3Tqbb2" id="1MyzK_kSXwp" role="1tU5fm">
              <ref role="ehGHo" to="w348:1BOPt_Rjk71" resolve="FeatureSelectionStrategy" />
            </node>
            <node concept="2ShNRf" id="1MyzK_kSXBW" role="33vP2m">
              <node concept="3zrR0B" id="1MyzK_kSXBI" role="2ShVmc">
                <node concept="3Tqbb2" id="1MyzK_kSXBJ" role="3zrR0E">
                  <ref role="ehGHo" to="w348:1BOPt_Rjk71" resolve="FeatureSelectionStrategy" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kSXIx" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kSYbN" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kSXPJ" role="2Oq$k0">
              <node concept="37vLTw" id="1MyzK_kSXIw" role="2Oq$k0">
                <ref role="3cqZAo" node="1MyzK_kSXwu" resolve="fsCombo" />
              </node>
              <node concept="3TrEf2" id="1MyzK_kSY3n" role="2OqNvi">
                <ref role="3Tt5mk" to="w348:3a_GB3TVZok" />
              </node>
            </node>
            <node concept="zfrQC" id="1MyzK_kSYtv" role="2OqNvi">
              <ref role="1A9B2P" to="w348:1BOPt_RaTtC" resolve="Ttest" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kSYA4" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kSYW$" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kSYHo" role="2Oq$k0">
              <node concept="37vLTw" id="1MyzK_kSYA3" role="2Oq$k0">
                <ref role="3cqZAo" node="1MyzK_kSXwu" resolve="fsCombo" />
              </node>
              <node concept="3TrEf2" id="1MyzK_kSYOv" role="2OqNvi">
                <ref role="3Tt5mk" to="w348:3a_GB3TVZom" />
              </node>
            </node>
            <node concept="zfrQC" id="1MyzK_kSZnI" role="2OqNvi">
              <ref role="1A9B2P" to="w348:3a_GB3UJx6V" resolve="FoldChange" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kSZEX" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kT1pR" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kT01T" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kSZGE" role="2Oq$k0">
                <node concept="2Sf5sV" id="1MyzK_kSZEV" role="2Oq$k0" />
                <node concept="3TrEf2" id="1MyzK_kSZSb" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1MyzK_kT0hh" role="2OqNvi">
                <ref role="3TtcxE" to="w348:1BOPt_Rbsy0" />
              </node>
            </node>
            <node concept="TSZUe" id="1MyzK_kT4P3" role="2OqNvi">
              <node concept="37vLTw" id="1MyzK_kT51_" role="25WWJ7">
                <ref role="3cqZAo" node="1MyzK_kSXwu" resolve="fsCombo" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kSOBw" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kSOBx" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kSOBy" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kSOBz" role="2Oq$k0">
                <node concept="2Sf5sV" id="1MyzK_kSOB$" role="2Oq$k0" />
                <node concept="3TrEf2" id="1MyzK_kSOB_" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:4kZc_K5UTAw" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1MyzK_kSOBA" role="2OqNvi">
                <ref role="3TtcxE" to="w348:4kZc_KaSIsY" />
              </node>
            </node>
            <node concept="WFELt" id="1MyzK_kSOBB" role="2OqNvi">
              <ref role="1A0vxQ" to="w348:6q92Kfr5Jty" resolve="LogitBoost" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="1MyzK_kTspP">
    <property role="TrG5h" value="Genetic-KStar" />
    <ref role="2ZfgGC" to="w348:6q92Kfr5RCI" resolve="ModelingApproaches" />
    <node concept="2S6ZIM" id="1MyzK_kTspQ" role="2ZfVej">
      <node concept="3clFbS" id="1MyzK_kTspR" role="2VODD2">
        <node concept="3clFbF" id="1MyzK_kTC2v" role="3cqZAp">
          <node concept="Xl_RD" id="1MyzK_kTC2u" role="3clFbG">
            <property role="Xl_RC" value="Sample Approach: Genetic Algorithm, KStar" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="1MyzK_kTspS" role="2ZfgGD">
      <node concept="3clFbS" id="1MyzK_kTspT" role="2VODD2">
        <node concept="3clFbF" id="1MyzK_kTyK2" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kTyK3" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kTyK4" role="2Oq$k0">
              <node concept="2Sf5sV" id="1MyzK_kTyK5" role="2Oq$k0" />
              <node concept="3TrcHB" id="1MyzK_kTyK6" role="2OqNvi">
                <ref role="3TsBF5" to="w348:g7X9E3yI_h" resolve="externalRepeats" />
              </node>
            </node>
            <node concept="3ZvMEC" id="1MyzK_kTyK7" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kTyK8" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kTyK9" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kTyKa" role="2Oq$k0">
              <node concept="2Sf5sV" id="1MyzK_kTyKb" role="2Oq$k0" />
              <node concept="3TrcHB" id="1MyzK_kTyKc" role="2OqNvi">
                <ref role="3TsBF5" to="w348:g7X9E3yI_x" resolve="externalFolds" />
              </node>
            </node>
            <node concept="3ZvMEC" id="1MyzK_kTyKd" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kTyKe" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kTyKf" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kTyKg" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kTyKh" role="2Oq$k0">
                <node concept="2Sf5sV" id="1MyzK_kTyKi" role="2Oq$k0" />
                <node concept="3TrEf2" id="1MyzK_kTyKj" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1MyzK_kTyKk" role="2OqNvi">
                <ref role="3TtcxE" to="w348:1BOPt_RbsxY" />
              </node>
            </node>
            <node concept="2Kehj3" id="1MyzK_kTyKl" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kTyKm" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kTyKn" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kTyKo" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kTyKp" role="2Oq$k0">
                <node concept="2Sf5sV" id="1MyzK_kTyKq" role="2Oq$k0" />
                <node concept="3TrEf2" id="1MyzK_kTyKr" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1MyzK_kTyKs" role="2OqNvi">
                <ref role="3TtcxE" to="w348:1BOPt_Rbsy3" />
              </node>
            </node>
            <node concept="2Kehj3" id="1MyzK_kTyKt" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kTyKu" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kTyKv" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kTyKw" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kTyKx" role="2Oq$k0">
                <node concept="2Sf5sV" id="1MyzK_kTyKy" role="2Oq$k0" />
                <node concept="3TrEf2" id="1MyzK_kTyKz" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1MyzK_kTyK$" role="2OqNvi">
                <ref role="3TtcxE" to="w348:1BOPt_Rbsy0" />
              </node>
            </node>
            <node concept="2Kehj3" id="1MyzK_kTyK_" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kTyKA" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kTyKB" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kTyKC" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kTyKD" role="2Oq$k0">
                <node concept="2Sf5sV" id="1MyzK_kTyKE" role="2Oq$k0" />
                <node concept="3TrEf2" id="1MyzK_kTyKF" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:4kZc_K5UTAw" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1MyzK_kTyKG" role="2OqNvi">
                <ref role="3TtcxE" to="w348:4kZc_KaSIsY" />
              </node>
            </node>
            <node concept="2Kehj3" id="1MyzK_kTyKH" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="1MyzK_kTyKI" role="3cqZAp" />
        <node concept="3clFbF" id="1MyzK_kTyKJ" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kTyKK" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kTyKL" role="2Oq$k0">
              <node concept="2Sf5sV" id="1MyzK_kTyKM" role="2Oq$k0" />
              <node concept="3TrcHB" id="1MyzK_kTyKN" role="2OqNvi">
                <ref role="3TsBF5" to="w348:g7X9E3yI_h" resolve="externalRepeats" />
              </node>
            </node>
            <node concept="tyxLq" id="1MyzK_kTyKO" role="2OqNvi">
              <node concept="3cmrfG" id="1MyzK_kTyKP" role="tz02z">
                <property role="3cmrfH" value="5" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kTyKQ" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kTyKR" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kTyKS" role="2Oq$k0">
              <node concept="2Sf5sV" id="1MyzK_kTyKT" role="2Oq$k0" />
              <node concept="3TrcHB" id="1MyzK_kTyKU" role="2OqNvi">
                <ref role="3TsBF5" to="w348:g7X9E3yI_x" resolve="externalFolds" />
              </node>
            </node>
            <node concept="tyxLq" id="1MyzK_kTyKV" role="2OqNvi">
              <node concept="3cmrfG" id="1MyzK_kTyKW" role="tz02z">
                <property role="3cmrfH" value="5" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kTyKX" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kTyKY" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kTyKZ" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kTyL0" role="2Oq$k0">
                <node concept="2OqwBi" id="1MyzK_kTyL1" role="2Oq$k0">
                  <node concept="2OqwBi" id="1MyzK_kTyL2" role="2Oq$k0">
                    <node concept="2Sf5sV" id="1MyzK_kTyL3" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1MyzK_kTyL4" role="2OqNvi">
                      <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="1MyzK_kTyL5" role="2OqNvi">
                    <ref role="3TtcxE" to="w348:1BOPt_RbsxY" />
                  </node>
                </node>
                <node concept="WFELt" id="1MyzK_kTyL6" role="2OqNvi">
                  <ref role="1A0vxQ" to="w348:g7X9E3yIB2" resolve="Integer" />
                </node>
              </node>
              <node concept="3TrcHB" id="1MyzK_kTyL7" role="2OqNvi">
                <ref role="3TsBF5" to="w348:g7X9E3yIB3" resolve="value" />
              </node>
            </node>
            <node concept="tyxLq" id="1MyzK_kTyL8" role="2OqNvi">
              <node concept="3cmrfG" id="1MyzK_kTyL9" role="tz02z">
                <property role="3cmrfH" value="20" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kTyLa" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kTyLb" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kTyLc" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kTyLd" role="2Oq$k0">
                <node concept="2OqwBi" id="1MyzK_kTyLe" role="2Oq$k0">
                  <node concept="2OqwBi" id="1MyzK_kTyLf" role="2Oq$k0">
                    <node concept="2Sf5sV" id="1MyzK_kTyLg" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1MyzK_kTyLh" role="2OqNvi">
                      <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="1MyzK_kTyLi" role="2OqNvi">
                    <ref role="3TtcxE" to="w348:1BOPt_RbsxY" />
                  </node>
                </node>
                <node concept="WFELt" id="1MyzK_kTyLj" role="2OqNvi">
                  <ref role="1A0vxQ" to="w348:g7X9E3yIB2" resolve="Integer" />
                </node>
              </node>
              <node concept="3TrcHB" id="1MyzK_kTyLk" role="2OqNvi">
                <ref role="3TsBF5" to="w348:g7X9E3yIB3" resolve="value" />
              </node>
            </node>
            <node concept="tyxLq" id="1MyzK_kTyLl" role="2OqNvi">
              <node concept="3cmrfG" id="1MyzK_kTyLm" role="tz02z">
                <property role="3cmrfH" value="50" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kTyLn" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kTyLo" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kTyLp" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kTyLq" role="2Oq$k0">
                <node concept="2Sf5sV" id="1MyzK_kTyLr" role="2Oq$k0" />
                <node concept="3TrEf2" id="1MyzK_kTyLs" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1MyzK_kTyLt" role="2OqNvi">
                <ref role="3TtcxE" to="w348:1BOPt_Rbsy3" />
              </node>
            </node>
            <node concept="WFELt" id="1MyzK_kTyLu" role="2OqNvi">
              <ref role="1A0vxQ" to="w348:6q92Kfr5HDs" resolve="FeatureSelectionFoldTrue" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kTyLv" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kTyLw" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kTyLx" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kTyLy" role="2Oq$k0">
                <node concept="2Sf5sV" id="1MyzK_kTyLz" role="2Oq$k0" />
                <node concept="3TrEf2" id="1MyzK_kTyL$" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1MyzK_kTyL_" role="2OqNvi">
                <ref role="3TtcxE" to="w348:1BOPt_Rbsy3" />
              </node>
            </node>
            <node concept="WFELt" id="1MyzK_kTyLA" role="2OqNvi">
              <ref role="1A0vxQ" to="w348:6q92Kfr5Sux" resolve="FeatureSelectionFoldFalse" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kTyLB" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kTyLC" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kTyLD" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kTyLE" role="2Oq$k0">
                <node concept="2OqwBi" id="1MyzK_kTyLF" role="2Oq$k0">
                  <node concept="2OqwBi" id="1MyzK_kTyLG" role="2Oq$k0">
                    <node concept="2Sf5sV" id="1MyzK_kTyLH" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1MyzK_kTyLI" role="2OqNvi">
                      <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="1MyzK_kTyLJ" role="2OqNvi">
                    <ref role="3TtcxE" to="w348:1BOPt_Rbsy0" />
                  </node>
                </node>
                <node concept="WFELt" id="1MyzK_kTyLK" role="2OqNvi">
                  <ref role="1A0vxQ" to="w348:1BOPt_Rjk71" resolve="FeatureSelectionStrategy" />
                </node>
              </node>
              <node concept="3TrEf2" id="1MyzK_kTyLL" role="2OqNvi">
                <ref role="3Tt5mk" to="w348:3a_GB3TVZok" />
              </node>
            </node>
            <node concept="zfrQC" id="1MyzK_kTyLM" role="2OqNvi">
              <ref role="1A9B2P" to="w348:4kZc_K3xsu9" resolve="GeneticAlgorithm" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MyzK_kTUCX" role="3cqZAp">
          <node concept="2OqwBi" id="1MyzK_kTVNk" role="3clFbG">
            <node concept="2OqwBi" id="1MyzK_kTV0l" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kTUEK" role="2Oq$k0">
                <node concept="2Sf5sV" id="1MyzK_kTUCV" role="2Oq$k0" />
                <node concept="3TrEf2" id="1MyzK_kTUOL" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:4kZc_K5UTAw" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1MyzK_kTVfH" role="2OqNvi">
                <ref role="3TtcxE" to="w348:4kZc_KaSIsY" />
              </node>
            </node>
            <node concept="WFELt" id="1MyzK_kTX_a" role="2OqNvi">
              <ref role="1A0vxQ" to="w348:6q92Kfr5Jt_" resolve="KStar" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="4jYB9sy7MSe">
    <property role="TrG5h" value="ProstateExample" />
    <ref role="2ZfgGC" to="w348:2UUqZtvS4$K" resolve="Project" />
    <node concept="2S6ZIM" id="4jYB9sy7MSf" role="2ZfVej">
      <node concept="3clFbS" id="4jYB9sy7MSg" role="2VODD2">
        <node concept="3clFbF" id="4jYB9sy7NrX" role="3cqZAp">
          <node concept="Xl_RD" id="4jYB9sy7NrW" role="3clFbG">
            <property role="Xl_RC" value="Set Prostate Example File Locations" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4jYB9sy7MSh" role="2ZfgGD">
      <node concept="3clFbS" id="4jYB9sy7MSi" role="2VODD2">
        <node concept="3cpWs8" id="tvGbksb8Da" role="3cqZAp">
          <node concept="3cpWsn" id="tvGbksb8Dd" role="3cpWs9">
            <property role="TrG5h" value="zipLocation" />
            <node concept="17QB3L" id="tvGbksb8D8" role="1tU5fm" />
            <node concept="2OqwBi" id="7TNXtEkQZLK" role="33vP2m">
              <node concept="2OqwBi" id="7TNXtEkQYRQ" role="2Oq$k0">
                <node concept="2OqwBi" id="7TNXtEkQY4G" role="2Oq$k0">
                  <node concept="2Sf5sV" id="7TNXtEkQXZc" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7TNXtEkQYyA" role="2OqNvi">
                    <ref role="3Tt5mk" to="w348:69ees3tIP8T" />
                  </node>
                </node>
                <node concept="3TrEf2" id="7TNXtEkQZvu" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:1E7UGCp8Qts" />
                </node>
              </node>
              <node concept="3TrcHB" id="7TNXtEkR09W" role="2OqNvi">
                <ref role="3TsBF5" to="w348:1E7UGCp8PBA" resolve="directoryLocation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7TNXtEkTcmB" role="3cqZAp">
          <node concept="3cpWsn" id="7TNXtEkTcmE" role="3cpWs9">
            <property role="TrG5h" value="separator" />
            <node concept="17QB3L" id="7TNXtEkTcm_" role="1tU5fm" />
            <node concept="10M0yZ" id="7TNXtEkTczN" role="33vP2m">
              <ref role="1PxDUh" to="fxg7:~File" resolve="File" />
              <ref role="3cqZAo" to="fxg7:~File.separator" resolve="separator" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tvGbkseJ_u" role="3cqZAp">
          <node concept="2OqwBi" id="tvGbkseLG7" role="3clFbG">
            <node concept="2OqwBi" id="tvGbkseL63" role="2Oq$k0">
              <node concept="2OqwBi" id="tvGbkseKl9" role="2Oq$k0">
                <node concept="2OqwBi" id="tvGbkseJFX" role="2Oq$k0">
                  <node concept="2Sf5sV" id="tvGbkseJ_s" role="2Oq$k0" />
                  <node concept="3TrEf2" id="tvGbkseK9h" role="2OqNvi">
                    <ref role="3Tt5mk" to="w348:7LxCMIvpr4i" />
                  </node>
                </node>
                <node concept="3TrEf2" id="tvGbkseKVr" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:1E7UGCp8Au5" />
                </node>
              </node>
              <node concept="3TrcHB" id="tvGbkseLsB" role="2OqNvi">
                <ref role="3TsBF5" to="w348:1E7UGCp0R5I" resolve="fileLocation" />
              </node>
            </node>
            <node concept="tyxLq" id="tvGbkseMDb" role="2OqNvi">
              <node concept="3cpWs3" id="tvGbkseMNG" role="tz02z">
                <node concept="Xl_RD" id="tvGbkseMOp" role="3uHU7w">
                  <property role="Xl_RC" value="/data/Prostate/GSE8402/platforms/GPL5474_family.soft.gz" />
                </node>
                <node concept="37vLTw" id="tvGbkseMFv" role="3uHU7B">
                  <ref role="3cqZAo" node="tvGbksb8Dd" resolve="zipLocation" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tvGbksfaVe" role="3cqZAp">
          <node concept="2OqwBi" id="tvGbksffXL" role="3clFbG">
            <node concept="2OqwBi" id="tvGbksffr7" role="2Oq$k0">
              <node concept="2OqwBi" id="tvGbksfeJT" role="2Oq$k0">
                <node concept="2OqwBi" id="tvGbksfe4x" role="2Oq$k0">
                  <node concept="2OqwBi" id="tvGbksfbZC" role="2Oq$k0">
                    <node concept="2OqwBi" id="tvGbksfb27" role="2Oq$k0">
                      <node concept="2Sf5sV" id="tvGbksfaVc" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="tvGbksfbk9" role="2OqNvi">
                        <ref role="3TtcxE" to="w348:2UUqZtvS4_j" />
                      </node>
                    </node>
                    <node concept="1uHKPH" id="tvGbksfd50" role="2OqNvi" />
                  </node>
                  <node concept="3TrEf2" id="tvGbksfezK" role="2OqNvi">
                    <ref role="3Tt5mk" to="w348:67x0xp6glHo" />
                  </node>
                </node>
                <node concept="3TrEf2" id="tvGbksff8D" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:1E7UGCp8Bfm" />
                </node>
              </node>
              <node concept="3TrcHB" id="tvGbksffIh" role="2OqNvi">
                <ref role="3TsBF5" to="w348:1E7UGCp0R5I" resolve="fileLocation" />
              </node>
            </node>
            <node concept="tyxLq" id="tvGbksfgwh" role="2OqNvi">
              <node concept="3cpWs3" id="tvGbksfgNG" role="tz02z">
                <node concept="Xl_RD" id="tvGbksfgNL" role="3uHU7w">
                  <property role="Xl_RC" value="/data/Prostate/GSE8402/norm-data/GSE8402_family.soft.gz" />
                </node>
                <node concept="37vLTw" id="tvGbksfg__" role="3uHU7B">
                  <ref role="3cqZAo" node="tvGbksb8Dd" resolve="zipLocation" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tvGbksfklP" role="3cqZAp">
          <node concept="2OqwBi" id="tvGbksfoSo" role="3clFbG">
            <node concept="2OqwBi" id="tvGbksfonN" role="2Oq$k0">
              <node concept="2OqwBi" id="tvGbksfnXg" role="2Oq$k0">
                <node concept="2OqwBi" id="tvGbksfnsE" role="2Oq$k0">
                  <node concept="2OqwBi" id="tvGbksflpN" role="2Oq$k0">
                    <node concept="2OqwBi" id="tvGbksfkt2" role="2Oq$k0">
                      <node concept="2Sf5sV" id="tvGbksfklN" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="tvGbksfkIk" role="2OqNvi">
                        <ref role="3TtcxE" to="w348:2UUqZtvS4_j" />
                      </node>
                    </node>
                    <node concept="1uHKPH" id="tvGbksfmtZ" role="2OqNvi" />
                  </node>
                  <node concept="3TrEf2" id="tvGbksfnL7" role="2OqNvi">
                    <ref role="3Tt5mk" to="w348:67x0xp6goEZ" />
                  </node>
                </node>
                <node concept="3TrEf2" id="tvGbksfofF" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:7LxCMIuuxZy" />
                </node>
              </node>
              <node concept="3TrcHB" id="tvGbksfoFo" role="2OqNvi">
                <ref role="3TsBF5" to="w348:1E7UGCp0R5I" resolve="fileLocation" />
              </node>
            </node>
            <node concept="tyxLq" id="tvGbksfpoA" role="2OqNvi">
              <node concept="3cpWs3" id="tvGbksfpCA" role="tz02z">
                <node concept="Xl_RD" id="tvGbksfpDj" role="3uHU7w">
                  <property role="Xl_RC" value="/data/Prostate/GSE8402/cids/GSE8402-FusionYesNo-TrainingSplit.cids" />
                </node>
                <node concept="37vLTw" id="tvGbksfpwp" role="3uHU7B">
                  <ref role="3cqZAo" node="tvGbksb8Dd" resolve="zipLocation" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="7TNXtEkSI$F" role="2ZfVeh">
      <node concept="3clFbS" id="7TNXtEkSI$G" role="2VODD2">
        <node concept="3clFbF" id="7TNXtEkSIPn" role="3cqZAp">
          <node concept="1Wc70l" id="7TNXtEkSN66" role="3clFbG">
            <node concept="2OqwBi" id="7TNXtEkSSGO" role="3uHU7w">
              <node concept="2ShNRf" id="7TNXtEkSNln" role="2Oq$k0">
                <node concept="1pGfFk" id="7TNXtEkSNZ6" role="2ShVmc">
                  <ref role="37wK5l" to="fxg7:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                  <node concept="2OqwBi" id="7TNXtEkSR7a" role="37wK5m">
                    <node concept="2OqwBi" id="7TNXtEkSPtl" role="2Oq$k0">
                      <node concept="2OqwBi" id="7TNXtEkSOrr" role="2Oq$k0">
                        <node concept="2Sf5sV" id="7TNXtEkSOiB" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7TNXtEkSP4v" role="2OqNvi">
                          <ref role="3Tt5mk" to="w348:69ees3tIP8T" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="7TNXtEkSPSS" role="2OqNvi">
                        <ref role="3Tt5mk" to="w348:1E7UGCp8Qts" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="7TNXtEkSRDM" role="2OqNvi">
                      <ref role="3TsBF5" to="w348:1E7UGCp8PBA" resolve="directoryLocation" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7TNXtEkSTO8" role="2OqNvi">
                <ref role="37wK5l" to="fxg7:~File.isDirectory():boolean" resolve="isDirectory" />
              </node>
            </node>
            <node concept="2OqwBi" id="7TNXtEkSLlv" role="3uHU7B">
              <node concept="2OqwBi" id="7TNXtEkSKqR" role="2Oq$k0">
                <node concept="2OqwBi" id="7TNXtEkSJFs" role="2Oq$k0">
                  <node concept="2OqwBi" id="7TNXtEkSIUl" role="2Oq$k0">
                    <node concept="2Sf5sV" id="7TNXtEkSIPm" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7TNXtEkSJpG" role="2OqNvi">
                      <ref role="3Tt5mk" to="w348:69ees3tIP8T" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="7TNXtEkSK5l" role="2OqNvi">
                    <ref role="3Tt5mk" to="w348:1E7UGCp8Qts" />
                  </node>
                </node>
                <node concept="3TrcHB" id="7TNXtEkSKPT" role="2OqNvi">
                  <ref role="3TsBF5" to="w348:1E7UGCp8PBA" resolve="directoryLocation" />
                </node>
              </node>
              <node concept="17RvpY" id="7TNXtEkSMn1" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

