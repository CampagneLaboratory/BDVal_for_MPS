<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:051f9228-3981-45df-b2ad-0cd775cf87f0(org.campagnelab.bdval.actions)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="w348" ref="r:91a4ef63-e30e-4b86-bcdc-748a33d96fa7(org.campagnelab.bdval.structure)" />
    <import index="fxg7" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" />
    <import index="k7g3" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" />
    <import index="odbm" ref="f:java_stub#35dbc0f6-2677-4e81-9b75-548a3c2b6d9b#org.apache.commons.io(org.campagnelab.bdval/org.apache.commons.io@java_stub)" />
    <import index="iy9c" ref="f:java_stub#35dbc0f6-2677-4e81-9b75-548a3c2b6d9b#org.apache.commons.io.filefilter(org.campagnelab.bdval/org.apache.commons.io.filefilter@java_stub)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="1158700664498" name="jetbrains.mps.lang.actions.structure.NodeFactories" flags="ng" index="37WguZ">
        <child id="1158700779049" name="nodeFactory" index="37WGs$" />
      </concept>
      <concept id="1158700725281" name="jetbrains.mps.lang.actions.structure.NodeFactory" flags="ig" index="37WvkG">
        <reference id="1158700943156" name="applicableConcept" index="37XkoT" />
        <child id="1158701448518" name="setupFunction" index="37ZfLb" />
      </concept>
      <concept id="1158701162220" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction" flags="in" index="37Y9Zx" />
      <concept id="5584396657084920670" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction_EnclosingNode" flags="nn" index="1r4N1M" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
    </language>
  </registry>
  <node concept="37WguZ" id="79vlTg0W0KH">
    <property role="3GE5qa" value="featureSelectionStrategies.featureSelectionParameters" />
    <property role="TrG5h" value="FindGenelists" />
    <node concept="37WvkG" id="79vlTg0W0KI" role="37WGs$">
      <ref role="37XkoT" to="w348:4kZc_K50WoN" resolve="Genelist" />
      <node concept="37Y9Zx" id="79vlTg0W0La" role="37ZfLb">
        <node concept="3clFbS" id="79vlTg0W0Lb" role="2VODD2">
          <node concept="3cpWs8" id="7LxCMItG9tY" role="3cqZAp">
            <node concept="3cpWsn" id="7LxCMItG9u1" role="3cpWs9">
              <property role="TrG5h" value="fsProperties" />
              <node concept="3Tqbb2" id="7LxCMItG9tW" role="1tU5fm">
                <ref role="ehGHo" to="w348:43loRlgjfMu" resolve="FeatureSelectionParameters" />
              </node>
              <node concept="2OqwBi" id="7LxCMItGba7" role="33vP2m">
                <node concept="2OqwBi" id="7LxCMItG9SU" role="2Oq$k0">
                  <node concept="1r4N1M" id="7LxCMItG9Rt" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="7LxCMItGa4D" role="2OqNvi">
                    <node concept="1xMEDy" id="7LxCMItGa4F" role="1xVPHs">
                      <node concept="chp4Y" id="7LxCMItGa5I" role="ri$Ld">
                        <ref role="cht4Q" to="w348:1BOPt_Rb6Ug" resolve="FeatureSelectionChoices" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3TrEf2" id="7LxCMItGbry" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:1BOPt_RWcQ4" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7LxCMItG30L" role="3cqZAp">
            <node concept="3clFbS" id="7LxCMItG30O" role="3clFbx">
              <node concept="3cpWs8" id="79vlTg0W6w_" role="3cqZAp">
                <node concept="3cpWsn" id="79vlTg0W6wC" role="3cpWs9">
                  <property role="TrG5h" value="geneListFolder" />
                  <node concept="17QB3L" id="79vlTg0W6wz" role="1tU5fm" />
                  <node concept="3cpWs3" id="79vlTg0WaAD" role="33vP2m">
                    <node concept="Xl_RD" id="79vlTg0WaFW" role="3uHU7w">
                      <property role="Xl_RC" value="/data/gene-lists/" />
                    </node>
                    <node concept="2OqwBi" id="79vlTg0WaQq" role="3uHU7B">
                      <node concept="2OqwBi" id="79vlTg0W5V7" role="2Oq$k0">
                        <node concept="2OqwBi" id="79vlTg0W59T" role="2Oq$k0">
                          <node concept="2OqwBi" id="79vlTg0W4Oj" role="2Oq$k0">
                            <node concept="1r4N1M" id="79vlTg0W4$r" role="2Oq$k0" />
                            <node concept="2Xjw5R" id="79vlTg0W56d" role="2OqNvi">
                              <node concept="1xMEDy" id="79vlTg0W56f" role="1xVPHs">
                                <node concept="chp4Y" id="79vlTg0W57a" role="ri$Ld">
                                  <ref role="cht4Q" to="w348:2UUqZtvS4$K" resolve="Project" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3TrEf2" id="79vlTg0W5xD" role="2OqNvi">
                            <ref role="3Tt5mk" to="w348:69ees3tIP8T" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="79vlTg0W6cV" role="2OqNvi">
                          <ref role="3Tt5mk" to="w348:1E7UGCp8Qts" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="79vlTg0Wb9G" role="2OqNvi">
                        <ref role="3TsBF5" to="w348:1E7UGCp8PBA" resolve="directoryLocation" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="79vlTg0Wr_K" role="3cqZAp">
                <node concept="3cpWsn" id="79vlTg0Wr_L" role="3cpWs9">
                  <property role="TrG5h" value="allFiles" />
                  <node concept="3uibUv" id="79vlTg0Wr_M" role="1tU5fm">
                    <ref role="3uigEE" to="k7g3:~Collection" resolve="Collection" />
                  </node>
                  <node concept="2YIFZM" id="79vlTg0WrGJ" role="33vP2m">
                    <ref role="37wK5l" to="odbm:~FileUtils.listFiles(java.io.File,org.apache.commons.io.filefilter.IOFileFilter,org.apache.commons.io.filefilter.IOFileFilter):java.util.Collection" resolve="listFiles" />
                    <ref role="1Pybhc" to="odbm:~FileUtils" resolve="FileUtils" />
                    <node concept="2ShNRf" id="79vlTg0WrGK" role="37wK5m">
                      <node concept="1pGfFk" id="79vlTg0WrGL" role="2ShVmc">
                        <ref role="37wK5l" to="fxg7:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                        <node concept="37vLTw" id="79vlTg0WrGM" role="37wK5m">
                          <ref role="3cqZAo" node="79vlTg0W6wC" resolve="geneListFolder" />
                        </node>
                      </node>
                    </node>
                    <node concept="10M0yZ" id="79vlTg0WrGN" role="37wK5m">
                      <ref role="3cqZAo" to="iy9c:~TrueFileFilter.INSTANCE" resolve="INSTANCE" />
                      <ref role="1PxDUh" to="iy9c:~TrueFileFilter" resolve="TrueFileFilter" />
                    </node>
                    <node concept="10Nm6u" id="79vlTg0WrGO" role="37wK5m" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="79vlTg0YTbq" role="3cqZAp">
                <node concept="3cpWsn" id="79vlTg0YTbr" role="3cpWs9">
                  <property role="TrG5h" value="file" />
                  <node concept="3uibUv" id="79vlTg0YTbs" role="1tU5fm">
                    <ref role="3uigEE" to="fxg7:~File" resolve="File" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="79vlTg0YTnh" role="3cqZAp">
                <node concept="3cpWsn" id="79vlTg0YTnk" role="3cpWs9">
                  <property role="TrG5h" value="savedGenelistNode" />
                  <node concept="3Tqbb2" id="79vlTg0YTnf" role="1tU5fm">
                    <ref role="ehGHo" to="w348:79vlTg0MuPb" resolve="SavedGenelist" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="79vlTg12OhH" role="3cqZAp">
                <node concept="3cpWsn" id="79vlTg12OhK" role="3cpWs9">
                  <property role="TrG5h" value="fileNode" />
                  <node concept="3Tqbb2" id="79vlTg12OhF" role="1tU5fm">
                    <ref role="ehGHo" to="w348:1E7UGCp0R2t" resolve="File" />
                  </node>
                </node>
              </node>
              <node concept="1Dw8fO" id="79vlTg0WrY5" role="3cqZAp">
                <node concept="3clFbS" id="79vlTg0WrY8" role="2LFqv$">
                  <node concept="3clFbF" id="79vlTg0YUbs" role="3cqZAp">
                    <node concept="37vLTI" id="79vlTg0YUp2" role="3clFbG">
                      <node concept="10QFUN" id="79vlTg0YUwF" role="37vLTx">
                        <node concept="3uibUv" id="79vlTg0YUwD" role="10QFUM">
                          <ref role="3uigEE" to="fxg7:~File" resolve="File" />
                        </node>
                        <node concept="2OqwBi" id="79vlTg0YUIm" role="10QFUP">
                          <node concept="37vLTw" id="79vlTg0YUCm" role="2Oq$k0">
                            <ref role="3cqZAo" node="79vlTg0WrYb" resolve="iterator" />
                          </node>
                          <node concept="liA8E" id="79vlTg0YUTg" role="2OqNvi">
                            <ref role="37wK5l" to="k7g3:~Iterator.next():java.lang.Object" resolve="next" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="79vlTg0YUbr" role="37vLTJ">
                        <ref role="3cqZAo" node="79vlTg0YTbr" resolve="file" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="79vlTg0YV58" role="3cqZAp">
                    <node concept="37vLTI" id="79vlTg0YVcT" role="3clFbG">
                      <node concept="2ShNRf" id="79vlTg0YVqG" role="37vLTx">
                        <node concept="3zrR0B" id="79vlTg0YVqi" role="2ShVmc">
                          <node concept="3Tqbb2" id="79vlTg0YVqj" role="3zrR0E">
                            <ref role="ehGHo" to="w348:79vlTg0MuPb" resolve="SavedGenelist" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="79vlTg0YV57" role="37vLTJ">
                        <ref role="3cqZAo" node="79vlTg0YTnk" resolve="savedGenelistNode" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="79vlTg12Piy" role="3cqZAp">
                    <node concept="37vLTI" id="79vlTg12PA7" role="3clFbG">
                      <node concept="2ShNRf" id="79vlTg12PAt" role="37vLTx">
                        <node concept="3zrR0B" id="79vlTg12R0x" role="2ShVmc">
                          <node concept="3Tqbb2" id="79vlTg12R0z" role="3zrR0E">
                            <ref role="ehGHo" to="w348:1E7UGCp0R2t" resolve="File" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="79vlTg12Pix" role="37vLTJ">
                        <ref role="3cqZAo" node="79vlTg12OhK" resolve="fileNode" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="79vlTg0YVxQ" role="3cqZAp">
                    <node concept="37vLTI" id="79vlTg0YW8c" role="3clFbG">
                      <node concept="2OqwBi" id="79vlTg0YWjn" role="37vLTx">
                        <node concept="37vLTw" id="79vlTg0YW8I" role="2Oq$k0">
                          <ref role="3cqZAo" node="79vlTg0YTbr" resolve="file" />
                        </node>
                        <node concept="liA8E" id="79vlTg0YWH6" role="2OqNvi">
                          <ref role="37wK5l" to="fxg7:~File.getName():java.lang.String" resolve="getName" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="79vlTg0YV$p" role="37vLTJ">
                        <node concept="37vLTw" id="79vlTg0YVxP" role="2Oq$k0">
                          <ref role="3cqZAo" node="79vlTg0YTnk" resolve="savedGenelistNode" />
                        </node>
                        <node concept="3TrcHB" id="79vlTg0YVTX" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="79vlTg12R1y" role="3cqZAp">
                    <node concept="37vLTI" id="79vlTg12RN1" role="3clFbG">
                      <node concept="2OqwBi" id="79vlTg12S1_" role="37vLTx">
                        <node concept="37vLTw" id="79vlTg12RVS" role="2Oq$k0">
                          <ref role="3cqZAo" node="79vlTg0YTbr" resolve="file" />
                        </node>
                        <node concept="liA8E" id="79vlTg12SUp" role="2OqNvi">
                          <ref role="37wK5l" to="fxg7:~File.getAbsolutePath():java.lang.String" resolve="getAbsolutePath" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="79vlTg12R8c" role="37vLTJ">
                        <node concept="37vLTw" id="79vlTg12R1x" role="2Oq$k0">
                          <ref role="3cqZAo" node="79vlTg12OhK" resolve="fileNode" />
                        </node>
                        <node concept="3TrcHB" id="79vlTg12Rz2" role="2OqNvi">
                          <ref role="3TsBF5" to="w348:1E7UGCp0R5I" resolve="fileLocation" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="79vlTg12TAh" role="3cqZAp">
                    <node concept="2OqwBi" id="79vlTg12UkR" role="3clFbG">
                      <node concept="2OqwBi" id="79vlTg12TUS" role="2Oq$k0">
                        <node concept="37vLTw" id="79vlTg12TAg" role="2Oq$k0">
                          <ref role="3cqZAo" node="79vlTg0YTnk" resolve="savedGenelistNode" />
                        </node>
                        <node concept="3TrEf2" id="79vlTg12Ubw" role="2OqNvi">
                          <ref role="3Tt5mk" to="w348:79vlTg0MuV0" />
                        </node>
                      </node>
                      <node concept="2oxUTD" id="79vlTg12U$3" role="2OqNvi">
                        <node concept="37vLTw" id="79vlTg12U_g" role="2oxUTC">
                          <ref role="3cqZAo" node="79vlTg12OhK" resolve="fileNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7LxCMItGbDy" role="3cqZAp">
                    <node concept="2OqwBi" id="7LxCMItGcNr" role="3clFbG">
                      <node concept="2OqwBi" id="7LxCMItGbJX" role="2Oq$k0">
                        <node concept="37vLTw" id="7LxCMItGbDx" role="2Oq$k0">
                          <ref role="3cqZAo" node="7LxCMItG9u1" resolve="fsProperties" />
                        </node>
                        <node concept="3Tsc0h" id="1MyzK_l8L8F" role="2OqNvi">
                          <ref role="3TtcxE" to="w348:7LxCMItG0vu" />
                        </node>
                      </node>
                      <node concept="TSZUe" id="7LxCMItGeJi" role="2OqNvi">
                        <node concept="37vLTw" id="7LxCMItGeVN" role="25WWJ7">
                          <ref role="3cqZAo" node="79vlTg0YTnk" resolve="savedGenelistNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="79vlTg0WrYb" role="1Duv9x">
                  <property role="TrG5h" value="iterator" />
                  <node concept="3uibUv" id="79vlTg0Ws4B" role="1tU5fm">
                    <ref role="3uigEE" to="k7g3:~Iterator" resolve="Iterator" />
                  </node>
                  <node concept="2OqwBi" id="79vlTg0Wsi8" role="33vP2m">
                    <node concept="37vLTw" id="79vlTg0Ws5m" role="2Oq$k0">
                      <ref role="3cqZAo" node="79vlTg0Wr_L" resolve="allFiles" />
                    </node>
                    <node concept="liA8E" id="79vlTg0WsOe" role="2OqNvi">
                      <ref role="37wK5l" to="k7g3:~Collection.iterator():java.util.Iterator" resolve="iterator" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="79vlTg0WsX_" role="1Dwp0S">
                  <node concept="37vLTw" id="79vlTg0WsV7" role="2Oq$k0">
                    <ref role="3cqZAo" node="79vlTg0WrYb" resolve="iterator" />
                  </node>
                  <node concept="liA8E" id="79vlTg0Wtal" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~Iterator.hasNext():boolean" resolve="hasNext" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7LxCMItG69k" role="3clFbw">
              <node concept="2OqwBi" id="7LxCMItG4Pj" role="2Oq$k0">
                <node concept="37vLTw" id="7LxCMItGa9i" role="2Oq$k0">
                  <ref role="3cqZAo" node="7LxCMItG9u1" resolve="fsProperties" />
                </node>
                <node concept="3Tsc0h" id="7LxCMItGbAO" role="2OqNvi">
                  <ref role="3TtcxE" to="w348:7LxCMItG0vu" />
                </node>
              </node>
              <node concept="1v1jN8" id="1MyzK_l8Gl0" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

