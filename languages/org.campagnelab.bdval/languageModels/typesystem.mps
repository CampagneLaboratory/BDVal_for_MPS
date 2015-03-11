<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:03143f03-46ae-4107-a067-34f5026aa223(org.campagnelab.bdval.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="fxg7" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" />
    <import index="w348" ref="r:91a4ef63-e30e-4b86-bcdc-748a33d96fa7(org.campagnelab.bdval.structure)" />
    <import index="sdve" ref="f:java_stub#35dbc0f6-2677-4e81-9b75-548a3c2b6d9b#org.apache.commons.lang(org.campagnelab.bdval/org.apache.commons.lang@java_stub)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
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
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="5497648299878491908" name="jetbrains.mps.baseLanguage.structure.BaseVariableReference" flags="nn" index="1M0zk4">
        <reference id="5497648299878491909" name="baseVariableDeclaration" index="1M0zk5" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1224760201579" name="jetbrains.mps.lang.typesystem.structure.InfoStatement" flags="nn" index="Dpp1Q">
        <child id="1224760230762" name="infoText" index="Dpw9R" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1227096498176" name="jetbrains.mps.lang.typesystem.structure.PropertyMessageTarget" flags="ng" index="2ODE4t">
        <reference id="1227096521710" name="propertyDeclaration" index="2ODJFN" />
      </concept>
      <concept id="1227096620180" name="jetbrains.mps.lang.typesystem.structure.ReferenceMessageTarget" flags="ng" index="2OE7Q9">
        <reference id="1227096645744" name="linkDeclaration" index="2OEe5H" />
      </concept>
      <concept id="1227096774658" name="jetbrains.mps.lang.typesystem.structure.MessageStatement" flags="ng" index="2OEH$v">
        <child id="1227096802791" name="helginsIntention" index="2OEOjU" />
        <child id="1227096802790" name="nodeToReport" index="2OEOjV" />
        <child id="1227096836496" name="messageTarget" index="2OEWyd" />
      </concept>
      <concept id="1216383170661" name="jetbrains.mps.lang.typesystem.structure.TypesystemQuickFix" flags="ng" index="Q5z_Y">
        <child id="1216383424566" name="executeBlock" index="Q6x$H" />
        <child id="1216391046856" name="descriptionBlock" index="QzAvj" />
      </concept>
      <concept id="1216383287005" name="jetbrains.mps.lang.typesystem.structure.QuickFixExecuteBlock" flags="in" index="Q5ZZ6" />
      <concept id="1216383337216" name="jetbrains.mps.lang.typesystem.structure.ConceptFunctionParameter_node" flags="nn" index="Q6c8r" />
      <concept id="1216390987552" name="jetbrains.mps.lang.typesystem.structure.QuickFixDescriptionBlock" flags="in" index="QznSV" />
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="1210784285454" name="jetbrains.mps.lang.typesystem.structure.TypesystemIntention" flags="ng" index="3Cnw8n">
        <reference id="1216388525179" name="quickFix" index="QpYPw" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1883223317721008708" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement" flags="nn" index="Jncv_">
        <reference id="1883223317721008712" name="nodeConcept" index="JncvD" />
        <child id="1883223317721008709" name="body" index="Jncv$" />
        <child id="1883223317721008711" name="variable" index="JncvA" />
        <child id="1883223317721008710" name="nodeExpression" index="JncvB" />
      </concept>
      <concept id="1883223317721008713" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable" flags="ng" index="JncvC" />
      <concept id="1883223317721107059" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVarReference" flags="nn" index="Jnkvi" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="18kY7G" id="69ees3uTzEt">
    <property role="TrG5h" value="check_Task" />
    <property role="3GE5qa" value="dataset" />
    <node concept="3clFbS" id="69ees3uTzEu" role="18ibNy">
      <node concept="3cpWs8" id="69ees3uXQy2" role="3cqZAp">
        <node concept="3cpWsn" id="69ees3uXQy5" role="3cpWs9">
          <property role="TrG5h" value="numCategories" />
          <node concept="10Oyi0" id="69ees3uXQy0" role="1tU5fm" />
          <node concept="2OqwBi" id="69ees3uXR$u" role="33vP2m">
            <node concept="2OqwBi" id="69ees3uXQ_p" role="2Oq$k0">
              <node concept="1YBJjd" id="69ees3uXQze" role="2Oq$k0">
                <ref role="1YBMHb" node="69ees3uTzEw" resolve="task" />
              </node>
              <node concept="3Tsc0h" id="69ees3uXQI1" role="2OqNvi">
                <ref role="3TtcxE" to="w348:69ees3rMbdl" />
              </node>
            </node>
            <node concept="34oBXx" id="69ees3uXTfQ" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="69ees3uTzEB" role="3cqZAp">
        <node concept="3clFbS" id="69ees3uTzEC" role="3clFbx">
          <node concept="2MkqsV" id="69ees3uTLRa" role="3cqZAp">
            <node concept="Xl_RD" id="69ees3uTLRs" role="2MkJ7o">
              <property role="Xl_RC" value="Must test at least two categories" />
            </node>
            <node concept="1YBJjd" id="69ees3uTLX0" role="2OEOjV">
              <ref role="1YBMHb" node="69ees3uTzEw" resolve="task" />
            </node>
            <node concept="2OE7Q9" id="69ees3uTM4o" role="2OEWyd">
              <ref role="2OEe5H" to="w348:69ees3rMbdl" />
            </node>
          </node>
        </node>
        <node concept="3eOVzh" id="3sJAoOD_Ha_" role="3clFbw">
          <node concept="3cmrfG" id="3sJAoOD_Hb0" role="3uHU7w">
            <property role="3cmrfH" value="2" />
          </node>
          <node concept="37vLTw" id="69ees3uXTG5" role="3uHU7B">
            <ref role="3cqZAo" node="69ees3uXQy5" resolve="numCategories" />
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="69ees3uXUOB" role="3cqZAp">
        <node concept="3clFbS" id="69ees3uXUOE" role="3clFbx">
          <node concept="2MkqsV" id="69ees3uY40A" role="3cqZAp">
            <node concept="Xl_RD" id="69ees3uY40S" role="2MkJ7o">
              <property role="Xl_RC" value="If testing more than two categories then must test all categories for that endpoint" />
            </node>
            <node concept="1YBJjd" id="69ees3uY476" role="2OEOjV">
              <ref role="1YBMHb" node="69ees3uTzEw" resolve="task" />
            </node>
            <node concept="2OE7Q9" id="69ees3uY48s" role="2OEWyd">
              <ref role="2OEe5H" to="w348:69ees3rMbdl" />
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="69ees3uXV$E" role="3clFbw">
          <node concept="3y3z36" id="69ees3uXWeS" role="3uHU7w">
            <node concept="2OqwBi" id="69ees3uY31b" role="3uHU7w">
              <node concept="2OqwBi" id="69ees3uXZzr" role="2Oq$k0">
                <node concept="2OqwBi" id="69ees3uXY3P" role="2Oq$k0">
                  <node concept="2OqwBi" id="69ees3uXWxs" role="2Oq$k0">
                    <node concept="1YBJjd" id="69ees3uXWil" role="2Oq$k0">
                      <ref role="1YBMHb" node="69ees3uTzEw" resolve="task" />
                    </node>
                    <node concept="2Xjw5R" id="69ees3uXXF7" role="2OqNvi">
                      <node concept="1xMEDy" id="69ees3uXXF9" role="1xVPHs">
                        <node concept="chp4Y" id="69ees3uXXLc" role="ri$Ld">
                          <ref role="cht4Q" to="w348:2UUqZtvS4$K" resolve="Project" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="69ees3uXYjN" role="2OqNvi">
                    <ref role="3TtcxE" to="w348:69ees3rL_dv" />
                  </node>
                </node>
                <node concept="13MTOL" id="69ees3uY1_z" role="2OqNvi">
                  <ref role="13MTZf" to="w348:69ees3rKdch" />
                </node>
              </node>
              <node concept="34oBXx" id="69ees3uY3St" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="69ees3uXVC4" role="3uHU7B">
              <ref role="3cqZAo" node="69ees3uXQy5" resolve="numCategories" />
            </node>
          </node>
          <node concept="3eOSWO" id="69ees3uXVhX" role="3uHU7B">
            <node concept="37vLTw" id="69ees3uXUS6" role="3uHU7B">
              <ref role="3cqZAo" node="69ees3uXQy5" resolve="numCategories" />
            </node>
            <node concept="3cmrfG" id="69ees3uXVio" role="3uHU7w">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="69ees3uYdWW" role="3cqZAp">
        <node concept="3cpWsn" id="69ees3uYdWZ" role="3cpWs9">
          <property role="TrG5h" value="counter" />
          <node concept="10Oyi0" id="69ees3uYdWU" role="1tU5fm" />
        </node>
      </node>
      <node concept="3clFbF" id="69ees3uY4tl" role="3cqZAp">
        <node concept="2OqwBi" id="69ees3uY5y5" role="3clFbG">
          <node concept="2OqwBi" id="69ees3uY4A4" role="2Oq$k0">
            <node concept="1YBJjd" id="69ees3uY4tk" role="2Oq$k0">
              <ref role="1YBMHb" node="69ees3uTzEw" resolve="task" />
            </node>
            <node concept="3Tsc0h" id="69ees3uY4Xm" role="2OqNvi">
              <ref role="3TtcxE" to="w348:69ees3rMbdl" />
            </node>
          </node>
          <node concept="2es0OD" id="69ees3uY7jX" role="2OqNvi">
            <node concept="1bVj0M" id="69ees3uY7jZ" role="23t8la">
              <node concept="3clFbS" id="69ees3uY7k0" role="1bW5cS">
                <node concept="3clFbF" id="69ees3uYerY" role="3cqZAp">
                  <node concept="37vLTI" id="69ees3uYeZl" role="3clFbG">
                    <node concept="3cmrfG" id="69ees3uYf5w" role="37vLTx">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="37vLTw" id="69ees3uYerX" role="37vLTJ">
                      <ref role="3cqZAo" node="69ees3uYdWZ" resolve="counter" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="69ees3uYgKK" role="3cqZAp">
                  <node concept="2OqwBi" id="69ees3uY954" role="3clFbG">
                    <node concept="2OqwBi" id="69ees3uY7F9" role="2Oq$k0">
                      <node concept="1YBJjd" id="69ees3uY7Ba" role="2Oq$k0">
                        <ref role="1YBMHb" node="69ees3uTzEw" resolve="task" />
                      </node>
                      <node concept="3Tsc0h" id="69ees3uY84P" role="2OqNvi">
                        <ref role="3TtcxE" to="w348:69ees3rMbdl" />
                      </node>
                    </node>
                    <node concept="2es0OD" id="69ees3uYaTm" role="2OqNvi">
                      <node concept="1bVj0M" id="69ees3uYaTo" role="23t8la">
                        <node concept="3clFbS" id="69ees3uYaTp" role="1bW5cS">
                          <node concept="3clFbJ" id="69ees3uYiY4" role="3cqZAp">
                            <node concept="3clFbS" id="69ees3uYiY7" role="3clFbx">
                              <node concept="3clFbF" id="69ees3uYkv_" role="3cqZAp">
                                <node concept="3uNrnE" id="69ees3uYlcj" role="3clFbG">
                                  <node concept="37vLTw" id="69ees3uYlcl" role="2$L3a6">
                                    <ref role="3cqZAo" node="69ees3uYdWZ" resolve="counter" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbC" id="69ees3uYjJv" role="3clFbw">
                              <node concept="2OqwBi" id="69ees3v3SnV" role="3uHU7w">
                                <node concept="2OqwBi" id="69ees3v1JW9" role="2Oq$k0">
                                  <node concept="37vLTw" id="69ees3uYk7y" role="2Oq$k0">
                                    <ref role="3cqZAo" node="69ees3uYaTq" resolve="category2" />
                                  </node>
                                  <node concept="3TrEf2" id="69ees3v1Keb" role="2OqNvi">
                                    <ref role="3Tt5mk" to="w348:69ees3rMbdj" />
                                  </node>
                                </node>
                                <node concept="3TrcHB" id="69ees3v3SDr" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="69ees3v3RyK" role="3uHU7B">
                                <node concept="2OqwBi" id="69ees3v1HII" role="2Oq$k0">
                                  <node concept="37vLTw" id="69ees3uYjm2" role="2Oq$k0">
                                    <ref role="3cqZAo" node="69ees3uY7k1" resolve="category" />
                                  </node>
                                  <node concept="3TrEf2" id="69ees3v1IlK" role="2OqNvi">
                                    <ref role="3Tt5mk" to="w348:69ees3rMbdj" />
                                  </node>
                                </node>
                                <node concept="3TrcHB" id="69ees3v3RL5" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="69ees3uYaTq" role="1bW2Oz">
                          <property role="TrG5h" value="category2" />
                          <node concept="2jxLKc" id="69ees3uYaTr" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="69ees3uYlE0" role="3cqZAp">
                  <node concept="3clFbS" id="69ees3uYlE3" role="3clFbx">
                    <node concept="2MkqsV" id="69ees3uYn$t" role="3cqZAp">
                      <node concept="Xl_RD" id="69ees3uYnWX" role="2MkJ7o">
                        <property role="Xl_RC" value="Cannot test duplicate conditions" />
                      </node>
                      <node concept="37vLTw" id="69ees3uYsqW" role="2OEOjV">
                        <ref role="3cqZAo" node="69ees3uY7k1" resolve="category" />
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="69ees3v1M3l" role="3clFbw">
                    <node concept="37vLTw" id="69ees3v1M3n" role="3uHU7B">
                      <ref role="3cqZAo" node="69ees3uYdWZ" resolve="counter" />
                    </node>
                    <node concept="3cmrfG" id="69ees3v1M3o" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="69ees3uY7k1" role="1bW2Oz">
                <property role="TrG5h" value="category" />
                <node concept="2jxLKc" id="69ees3uY7k2" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="69ees3uTzEw" role="1YuTPh">
      <property role="TrG5h" value="task" />
      <ref role="1YaFvo" to="w348:69ees3rLBNq" resolve="Task" />
    </node>
  </node>
  <node concept="18kY7G" id="1E7UGCp0R5P">
    <property role="TrG5h" value="check_File" />
    <property role="3GE5qa" value="tools" />
    <node concept="3clFbS" id="1E7UGCp0Rbl" role="18ibNy">
      <node concept="3clFbJ" id="1E7UGCp0Rr1" role="3cqZAp">
        <node concept="3clFbS" id="1E7UGCp0Rr2" role="3clFbx">
          <node concept="2MkqsV" id="1E7UGCp0Rr3" role="3cqZAp">
            <node concept="Xl_RD" id="1E7UGCp0Rr4" role="2MkJ7o">
              <property role="Xl_RC" value="Location does not point to an existing file" />
            </node>
            <node concept="1YBJjd" id="1E7UGCp0SpX" role="2OEOjV">
              <ref role="1YBMHb" node="1E7UGCp0Rbn" resolve="file" />
            </node>
            <node concept="2ODE4t" id="1E7UGCp0Rr6" role="2OEWyd">
              <ref role="2ODJFN" to="w348:1E7UGCp0R5I" resolve="fileLocation" />
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="1E7UGCp0Rr7" role="3clFbw">
          <node concept="3fqX7Q" id="1E7UGCp0Rr8" role="3uHU7w">
            <node concept="2OqwBi" id="1E7UGCp0Rr9" role="3fr31v">
              <node concept="2ShNRf" id="1E7UGCp0Rra" role="2Oq$k0">
                <node concept="1pGfFk" id="1E7UGCp0Rrb" role="2ShVmc">
                  <ref role="37wK5l" to="fxg7:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                  <node concept="2OqwBi" id="1E7UGCp0Rrc" role="37wK5m">
                    <node concept="1YBJjd" id="1E7UGCp0Sc7" role="2Oq$k0">
                      <ref role="1YBMHb" node="1E7UGCp0Rbn" resolve="file" />
                    </node>
                    <node concept="3TrcHB" id="1E7UGCp0Sn2" role="2OqNvi">
                      <ref role="3TsBF5" to="w348:1E7UGCp0R5I" resolve="fileLocation" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1E7UGCp0Rrf" role="2OqNvi">
                <ref role="37wK5l" to="fxg7:~File.isFile():boolean" resolve="isFile" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1E7UGCp0Rrg" role="3uHU7B">
            <node concept="2OqwBi" id="1E7UGCp0Rrh" role="2Oq$k0">
              <node concept="1YBJjd" id="1E7UGCp0RW_" role="2Oq$k0">
                <ref role="1YBMHb" node="1E7UGCp0Rbn" resolve="file" />
              </node>
              <node concept="3TrcHB" id="1E7UGCp0S8o" role="2OqNvi">
                <ref role="3TsBF5" to="w348:1E7UGCp0R5I" resolve="fileLocation" />
              </node>
            </node>
            <node concept="17RvpY" id="1E7UGCp0Rrk" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1E7UGCp0Rbn" role="1YuTPh">
      <property role="TrG5h" value="file" />
      <ref role="1YaFvo" to="w348:1E7UGCp0R2t" resolve="File" />
    </node>
  </node>
  <node concept="18kY7G" id="1E7UGCp8PBQ">
    <property role="TrG5h" value="check_Directory" />
    <property role="3GE5qa" value="tools" />
    <node concept="3clFbS" id="1E7UGCp8PBR" role="18ibNy">
      <node concept="3clFbJ" id="1E7UGCp8PME" role="3cqZAp">
        <node concept="3clFbS" id="1E7UGCp8PMF" role="3clFbx">
          <node concept="2MkqsV" id="1E7UGCp8PMG" role="3cqZAp">
            <node concept="Xl_RD" id="1E7UGCp8PMH" role="2MkJ7o">
              <property role="Xl_RC" value="Location does not point to an existing directory" />
            </node>
            <node concept="1YBJjd" id="1E7UGCp8Qna" role="2OEOjV">
              <ref role="1YBMHb" node="1E7UGCp8PBT" resolve="directory" />
            </node>
            <node concept="2ODE4t" id="1E7UGCp8PMJ" role="2OEWyd">
              <ref role="2ODJFN" to="w348:1E7UGCp8PBA" resolve="directoryLocation" />
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="1E7UGCp8PMK" role="3clFbw">
          <node concept="3fqX7Q" id="1E7UGCp8PML" role="3uHU7w">
            <node concept="2OqwBi" id="1E7UGCp8PMM" role="3fr31v">
              <node concept="2ShNRf" id="1E7UGCp8PMN" role="2Oq$k0">
                <node concept="1pGfFk" id="1E7UGCp8PMO" role="2ShVmc">
                  <ref role="37wK5l" to="fxg7:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                  <node concept="2OqwBi" id="1E7UGCp8PMP" role="37wK5m">
                    <node concept="1YBJjd" id="1E7UGCp8Q9K" role="2Oq$k0">
                      <ref role="1YBMHb" node="1E7UGCp8PBT" resolve="directory" />
                    </node>
                    <node concept="3TrcHB" id="1E7UGCp8Qkl" role="2OqNvi">
                      <ref role="3TsBF5" to="w348:1E7UGCp8PBA" resolve="directoryLocation" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1E7UGCp8PMS" role="2OqNvi">
                <ref role="37wK5l" to="fxg7:~File.isDirectory():boolean" resolve="isDirectory" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1E7UGCp8PMT" role="3uHU7B">
            <node concept="2OqwBi" id="1E7UGCp8PMU" role="2Oq$k0">
              <node concept="1YBJjd" id="1E7UGCp8PUQ" role="2Oq$k0">
                <ref role="1YBMHb" node="1E7UGCp8PBT" resolve="directory" />
              </node>
              <node concept="3TrcHB" id="1E7UGCp8Q6d" role="2OqNvi">
                <ref role="3TsBF5" to="w348:1E7UGCp8PBA" resolve="directoryLocation" />
              </node>
            </node>
            <node concept="17RvpY" id="1E7UGCp8PMX" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="1E7UGCpMM0p" role="3cqZAp">
        <node concept="3clFbS" id="1E7UGCpMM0s" role="3clFbx">
          <node concept="2MkqsV" id="1E7UGCpMSEI" role="3cqZAp">
            <node concept="3Cnw8n" id="1MyzK_kVU$_" role="2OEOjU">
              <ref role="QpYPw" node="1MyzK_kVJXI" resolve="TrimDirectory" />
            </node>
            <node concept="Xl_RD" id="1E7UGCpMSF0" role="2MkJ7o">
              <property role="Xl_RC" value="Remove '/' from end of directory location" />
            </node>
            <node concept="1YBJjd" id="1E7UGCpMSK8" role="2OEOjV">
              <ref role="1YBMHb" node="1E7UGCp8PBT" resolve="directory" />
            </node>
            <node concept="2ODE4t" id="1E7UGCpMSQm" role="2OEWyd">
              <ref role="2ODJFN" to="w348:1E7UGCp8PBA" resolve="directoryLocation" />
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="1E7UGCpMPM4" role="3clFbw">
          <node concept="2OqwBi" id="1E7UGCpMQC9" role="3uHU7w">
            <node concept="2OqwBi" id="1E7UGCpMQ0j" role="2Oq$k0">
              <node concept="1YBJjd" id="1E7UGCpMPUU" role="2Oq$k0">
                <ref role="1YBMHb" node="1E7UGCp8PBT" resolve="directory" />
              </node>
              <node concept="3TrcHB" id="1E7UGCpMQiV" role="2OqNvi">
                <ref role="3TsBF5" to="w348:1E7UGCp8PBA" resolve="directoryLocation" />
              </node>
            </node>
            <node concept="liA8E" id="1E7UGCpMSiw" role="2OqNvi">
              <ref role="37wK5l" to="e2lb:~String.endsWith(java.lang.String):boolean" resolve="endsWith" />
              <node concept="Xl_RD" id="1E7UGCpMS$5" role="37wK5m">
                <property role="Xl_RC" value="/" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="1E7UGCpMOea" role="3uHU7B">
            <node concept="2OqwBi" id="1E7UGCpMMEe" role="3uHU7B">
              <node concept="2OqwBi" id="1E7UGCpMM6c" role="2Oq$k0">
                <node concept="1YBJjd" id="1E7UGCpMM4n" role="2Oq$k0">
                  <ref role="1YBMHb" node="1E7UGCp8PBT" resolve="directory" />
                </node>
                <node concept="3TrcHB" id="1E7UGCpMMmQ" role="2OqNvi">
                  <ref role="3TsBF5" to="w348:1E7UGCp8PBA" resolve="directoryLocation" />
                </node>
              </node>
              <node concept="17RvpY" id="1E7UGCpMNxB" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="1E7UGCpMP8_" role="3uHU7w">
              <node concept="2ShNRf" id="1E7UGCpMOh8" role="2Oq$k0">
                <node concept="1pGfFk" id="1E7UGCpMOqI" role="2ShVmc">
                  <ref role="37wK5l" to="fxg7:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                  <node concept="2OqwBi" id="1E7UGCpMOGj" role="37wK5m">
                    <node concept="1YBJjd" id="1E7UGCpMOwr" role="2Oq$k0">
                      <ref role="1YBMHb" node="1E7UGCp8PBT" resolve="directory" />
                    </node>
                    <node concept="3TrcHB" id="1E7UGCpMOUT" role="2OqNvi">
                      <ref role="3TsBF5" to="w348:1E7UGCp8PBA" resolve="directoryLocation" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1E7UGCpMPzP" role="2OqNvi">
                <ref role="37wK5l" to="fxg7:~File.isDirectory():boolean" resolve="isDirectory" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="1E7UGCpMO2A" role="3cqZAp" />
    </node>
    <node concept="1YaCAy" id="1E7UGCp8PBT" role="1YuTPh">
      <property role="TrG5h" value="directory" />
      <ref role="1YaFvo" to="w348:1E7UGCp8PB_" resolve="Directory" />
    </node>
  </node>
  <node concept="18kY7G" id="1E7UGCpK5hF">
    <property role="TrG5h" value="check_NormalTarget" />
    <node concept="3clFbS" id="1E7UGCpK5hG" role="18ibNy">
      <node concept="3cpWs8" id="1E7UGCpK8su" role="3cqZAp">
        <node concept="3cpWsn" id="1E7UGCpK8sx" role="3cpWs9">
          <property role="TrG5h" value="normalTarget" />
          <node concept="10P_77" id="1E7UGCpK8ss" role="1tU5fm" />
          <node concept="3clFbT" id="1E7UGCpK8w1" role="33vP2m">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3clFbF" id="1E7UGCpK5li" role="3cqZAp">
        <node concept="2OqwBi" id="1E7UGCpK6kf" role="3clFbG">
          <node concept="2OqwBi" id="1E7UGCpK5mN" role="2Oq$k0">
            <node concept="1YBJjd" id="1E7UGCpK5lh" role="2Oq$k0">
              <ref role="1YBMHb" node="1E7UGCpK5hI" resolve="project" />
            </node>
            <node concept="3Tsc0h" id="1E7UGCpK5D3" role="2OqNvi">
              <ref role="3TtcxE" to="w348:2UUqZtvS4_j" />
            </node>
          </node>
          <node concept="2es0OD" id="1E7UGCpK8fO" role="2OqNvi">
            <node concept="1bVj0M" id="1E7UGCpK8fQ" role="23t8la">
              <node concept="3clFbS" id="1E7UGCpK8fR" role="1bW5cS">
                <node concept="3clFbF" id="1E7UGCpK8wp" role="3cqZAp">
                  <node concept="37vLTI" id="1E7UGCpK8FA" role="3clFbG">
                    <node concept="22lmx$" id="1E7UGCpK950" role="37vLTx">
                      <node concept="2OqwBi" id="1E7UGCpK9k2" role="3uHU7w">
                        <node concept="37vLTw" id="1E7UGCpK9ev" role="2Oq$k0">
                          <ref role="3cqZAo" node="1E7UGCpK8fS" resolve="dataset" />
                        </node>
                        <node concept="3TrcHB" id="1E7UGCpK9Nt" role="2OqNvi">
                          <ref role="3TsBF5" to="w348:g7X9E3GxRU" resolve="run" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1E7UGCpK8OG" role="3uHU7B">
                        <ref role="3cqZAo" node="1E7UGCpK8sx" resolve="normalTarget" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="1E7UGCpK8wo" role="37vLTJ">
                      <ref role="3cqZAo" node="1E7UGCpK8sx" resolve="normalTarget" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="1E7UGCpK8fS" role="1bW2Oz">
                <property role="TrG5h" value="dataset" />
                <node concept="2jxLKc" id="1E7UGCpK8fT" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="1E7UGCpK9Zu" role="3cqZAp">
        <node concept="3clFbS" id="1E7UGCpK9Zx" role="3clFbx">
          <node concept="2MkqsV" id="1E7UGCpKePl" role="3cqZAp">
            <node concept="Xl_RD" id="1E7UGCpKePB" role="2MkJ7o">
              <property role="Xl_RC" value="At least one dataset must be a normal target" />
            </node>
            <node concept="1YBJjd" id="1E7UGCpKeUx" role="2OEOjV">
              <ref role="1YBMHb" node="1E7UGCpK5hI" resolve="project" />
            </node>
            <node concept="2ODE4t" id="1E7UGCpKeVT" role="2OEWyd">
              <ref role="2ODJFN" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="1E7UGCpKbmK" role="3clFbw">
          <node concept="3fqX7Q" id="1E7UGCpKeK_" role="3uHU7w">
            <node concept="37vLTw" id="1E7UGCpKeMZ" role="3fr31v">
              <ref role="3cqZAo" node="1E7UGCpK8sx" resolve="normalTarget" />
            </node>
          </node>
          <node concept="2OqwBi" id="1E7UGCpKcL_" role="3uHU7B">
            <node concept="2OqwBi" id="1E7UGCpKbvv" role="2Oq$k0">
              <node concept="1YBJjd" id="1E7UGCpKbsM" role="2Oq$k0">
                <ref role="1YBMHb" node="1E7UGCpK5hI" resolve="project" />
              </node>
              <node concept="3Tsc0h" id="1E7UGCpKbMj" role="2OqNvi">
                <ref role="3TtcxE" to="w348:2UUqZtvS4_j" />
              </node>
            </node>
            <node concept="3GX2aA" id="1E7UGCpKeHO" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1E7UGCpK5hI" role="1YuTPh">
      <property role="TrG5h" value="project" />
      <ref role="1YaFvo" to="w348:2UUqZtvS4$K" resolve="Project" />
    </node>
  </node>
  <node concept="18kY7G" id="5ybh7S9YcyI">
    <property role="TrG5h" value="Project_Info" />
    <node concept="3clFbS" id="5ybh7S9YcyJ" role="18ibNy">
      <node concept="3clFbJ" id="5ybh7S9YcGh" role="3cqZAp">
        <node concept="3clFbS" id="5ybh7S9YcGi" role="3clFbx">
          <node concept="Dpp1Q" id="5ybh7S9Yf2R" role="3cqZAp">
            <node concept="Xl_RD" id="5ybh7S9Yf3E" role="Dpw9R">
              <property role="Xl_RC" value="Go to 'http://campagnelab.org/software/bdval/download-bdval/' to download BDVal if not already downloaded" />
            </node>
            <node concept="2OqwBi" id="5ybh7S9YfJs" role="2OEOjV">
              <node concept="2OqwBi" id="5ybh7S9Yf9e" role="2Oq$k0">
                <node concept="1YBJjd" id="5ybh7S9Yf6x" role="2Oq$k0">
                  <ref role="1YBMHb" node="5ybh7S9YcCV" resolve="project" />
                </node>
                <node concept="3TrEf2" id="5ybh7S9YfwO" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:69ees3tIP8T" />
                </node>
              </node>
              <node concept="3TrEf2" id="5ybh7S9YfRD" role="2OqNvi">
                <ref role="3Tt5mk" to="w348:1E7UGCp8Qts" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="5ybh7S9Ye9X" role="3clFbw">
          <node concept="2OqwBi" id="5ybh7S9YdAK" role="2Oq$k0">
            <node concept="2OqwBi" id="5ybh7S9Ydjq" role="2Oq$k0">
              <node concept="2OqwBi" id="5ybh7S9YcJA" role="2Oq$k0">
                <node concept="1YBJjd" id="5ybh7S9YcGL" role="2Oq$k0">
                  <ref role="1YBMHb" node="5ybh7S9YcCV" resolve="project" />
                </node>
                <node concept="3TrEf2" id="5ybh7S9Yd5j" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:69ees3tIP8T" />
                </node>
              </node>
              <node concept="3TrEf2" id="5ybh7S9YdsA" role="2OqNvi">
                <ref role="3Tt5mk" to="w348:1E7UGCp8Qts" />
              </node>
            </node>
            <node concept="3TrcHB" id="5ybh7S9YdRW" role="2OqNvi">
              <ref role="3TsBF5" to="w348:1E7UGCp8PBA" resolve="directoryLocation" />
            </node>
          </node>
          <node concept="17RlXB" id="5ybh7S9Yf1V" role="2OqNvi" />
        </node>
      </node>
      <node concept="3clFbJ" id="1MyzK_kEj5S" role="3cqZAp">
        <node concept="3clFbS" id="1MyzK_kEj5V" role="3clFbx">
          <node concept="Dpp1Q" id="1MyzK_kElgP" role="3cqZAp">
            <node concept="Xl_RD" id="1MyzK_kElhj" role="Dpw9R">
              <property role="Xl_RC" value="Go to 'http://ant.apache.org/bindownload.cgi' to download ANT if not already downloaded" />
            </node>
            <node concept="2OqwBi" id="1MyzK_kEm1F" role="2OEOjV">
              <node concept="2OqwBi" id="1MyzK_kElBD" role="2Oq$k0">
                <node concept="1YBJjd" id="1MyzK_kEl_A" role="2Oq$k0">
                  <ref role="1YBMHb" node="5ybh7S9YcCV" resolve="project" />
                </node>
                <node concept="3TrEf2" id="1MyzK_kElOj" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:69ees3tIP8T" />
                </node>
              </node>
              <node concept="3TrEf2" id="1MyzK_kEmhV" role="2OqNvi">
                <ref role="3Tt5mk" to="w348:1E7UGCp8Qtw" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="1MyzK_kEkoN" role="3clFbw">
          <node concept="2OqwBi" id="1MyzK_kEjWF" role="2Oq$k0">
            <node concept="2OqwBi" id="1MyzK_kEjx8" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kEj8N" role="2Oq$k0">
                <node concept="1YBJjd" id="1MyzK_kEj6w" role="2Oq$k0">
                  <ref role="1YBMHb" node="5ybh7S9YcCV" resolve="project" />
                </node>
                <node concept="3TrEf2" id="1MyzK_kEjl8" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:69ees3tIP8T" />
                </node>
              </node>
              <node concept="3TrEf2" id="1MyzK_kEjO1" role="2OqNvi">
                <ref role="3Tt5mk" to="w348:1E7UGCp8Qtw" />
              </node>
            </node>
            <node concept="3TrcHB" id="1MyzK_kEk6T" role="2OqNvi">
              <ref role="3TsBF5" to="w348:1E7UGCp8PBA" resolve="directoryLocation" />
            </node>
          </node>
          <node concept="17RlXB" id="1MyzK_kElgs" role="2OqNvi" />
        </node>
      </node>
      <node concept="3clFbJ" id="44i5KMTjxXv" role="3cqZAp">
        <node concept="3clFbS" id="44i5KMTjxXy" role="3clFbx">
          <node concept="Dpp1Q" id="44i5KMTj$3w" role="3cqZAp">
            <node concept="Xl_RD" id="44i5KMTj$3Y" role="Dpw9R">
              <property role="Xl_RC" value="Go to http://campagnelab.org/software/bdval/configure-bdval/dataset-specific-configuration/ to view files supported by BDVal" />
            </node>
            <node concept="2OqwBi" id="44i5KMTjBEn" role="2OEOjV">
              <node concept="2OqwBi" id="44i5KMTjB5L" role="2Oq$k0">
                <node concept="1YBJjd" id="44i5KMTjB34" role="2Oq$k0">
                  <ref role="1YBMHb" node="5ybh7S9YcCV" resolve="project" />
                </node>
                <node concept="3TrEf2" id="44i5KMTjBu1" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:7LxCMIvpr4i" />
                </node>
              </node>
              <node concept="3TrEf2" id="44i5KMTjBOP" role="2OqNvi">
                <ref role="3Tt5mk" to="w348:1E7UGCp8Au5" />
              </node>
            </node>
            <node concept="2ODE4t" id="44i5KMTjBQV" role="2OEWyd">
              <ref role="2ODJFN" to="w348:1E7UGCp0R5I" resolve="fileLocation" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="44i5KMTjzao" role="3clFbw">
          <node concept="2OqwBi" id="44i5KMTjyK0" role="2Oq$k0">
            <node concept="2OqwBi" id="44i5KMTjysq" role="2Oq$k0">
              <node concept="2OqwBi" id="44i5KMTjy2w" role="2Oq$k0">
                <node concept="1YBJjd" id="44i5KMTjxZF" role="2Oq$k0">
                  <ref role="1YBMHb" node="5ybh7S9YcCV" resolve="project" />
                </node>
                <node concept="3TrEf2" id="44i5KMTjyfQ" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:7LxCMIvpr4i" />
                </node>
              </node>
              <node concept="3TrEf2" id="44i5KMTjyAu" role="2OqNvi">
                <ref role="3Tt5mk" to="w348:1E7UGCp8Au5" />
              </node>
            </node>
            <node concept="3TrcHB" id="44i5KMTjySu" role="2OqNvi">
              <ref role="3TsBF5" to="w348:1E7UGCp0R5I" resolve="fileLocation" />
            </node>
          </node>
          <node concept="17RlXB" id="44i5KMTj$37" role="2OqNvi" />
        </node>
      </node>
      <node concept="3clFbJ" id="1MyzK_kEmrz" role="3cqZAp">
        <node concept="3clFbS" id="1MyzK_kEmrA" role="3clFbx">
          <node concept="Dpp1Q" id="1MyzK_kErIs" role="3cqZAp">
            <node concept="Xl_RD" id="1MyzK_kErIU" role="Dpw9R">
              <property role="Xl_RC" value="Press Ctrl+Space to view choices" />
            </node>
            <node concept="2OqwBi" id="1MyzK_kEwJy" role="2OEOjV">
              <node concept="2OqwBi" id="1MyzK_kEu$P" role="2Oq$k0">
                <node concept="2OqwBi" id="1MyzK_kEscR" role="2Oq$k0">
                  <node concept="1YBJjd" id="1MyzK_kEsaO" role="2Oq$k0">
                    <ref role="1YBMHb" node="5ybh7S9YcCV" resolve="project" />
                  </node>
                  <node concept="3TrEf2" id="1MyzK_kEsox" role="2OqNvi">
                    <ref role="3Tt5mk" to="w348:7LxCMIvpr4i" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="1MyzK_kEuPz" role="2OqNvi">
                  <ref role="3TtcxE" to="w348:3pvWWvhHPUm" />
                </node>
              </node>
              <node concept="1uHKPH" id="1MyzK_kEybS" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="1MyzK_kIpGV" role="3clFbw">
          <node concept="2OqwBi" id="1MyzK_kMn3D" role="2Oq$k0">
            <node concept="2OqwBi" id="1MyzK_kEqhM" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_kEn6U" role="2Oq$k0">
                <node concept="2OqwBi" id="1MyzK_kEmyW" role="2Oq$k0">
                  <node concept="1YBJjd" id="1MyzK_kEmw7" role="2Oq$k0">
                    <ref role="1YBMHb" node="5ybh7S9YcCV" resolve="project" />
                  </node>
                  <node concept="3TrEf2" id="1MyzK_kEmUm" role="2OqNvi">
                    <ref role="3Tt5mk" to="w348:7LxCMIvpr4i" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="1MyzK_kEnnh" role="2OqNvi">
                  <ref role="3TtcxE" to="w348:3pvWWvhHPUm" />
                </node>
              </node>
              <node concept="1uHKPH" id="1MyzK_kIoYp" role="2OqNvi" />
            </node>
            <node concept="3TrcHB" id="1MyzK_kMuhu" role="2OqNvi">
              <ref role="3TsBF5" to="w348:3pvWWvhHPXy" resolve="command" />
            </node>
          </node>
          <node concept="17RlXB" id="1MyzK_kMuLX" role="2OqNvi" />
        </node>
      </node>
      <node concept="3clFbF" id="1MyzK_kNKRr" role="3cqZAp">
        <node concept="2OqwBi" id="1MyzK_kNMA0" role="3clFbG">
          <node concept="2OqwBi" id="1MyzK_kNKVS" role="2Oq$k0">
            <node concept="1YBJjd" id="1MyzK_kNKRq" role="2Oq$k0">
              <ref role="1YBMHb" node="5ybh7S9YcCV" resolve="project" />
            </node>
            <node concept="3Tsc0h" id="1MyzK_kNL7q" role="2OqNvi">
              <ref role="3TtcxE" to="w348:2UUqZtvS4_j" />
            </node>
          </node>
          <node concept="2es0OD" id="1MyzK_kNNBR" role="2OqNvi">
            <node concept="1bVj0M" id="1MyzK_kNNBT" role="23t8la">
              <node concept="3clFbS" id="1MyzK_kNNBU" role="1bW5cS">
                <node concept="3clFbJ" id="44i5KMTjC0E" role="3cqZAp">
                  <node concept="3clFbS" id="44i5KMTjC0H" role="3clFbx">
                    <node concept="Dpp1Q" id="44i5KMTjExy" role="3cqZAp">
                      <node concept="2OqwBi" id="44i5KMTjFnw" role="2OEOjV">
                        <node concept="2OqwBi" id="44i5KMTjEOW" role="2Oq$k0">
                          <node concept="37vLTw" id="44i5KMTjELz" role="2Oq$k0">
                            <ref role="3cqZAo" node="1MyzK_kNNBV" resolve="dataset" />
                          </node>
                          <node concept="3TrEf2" id="44i5KMTjF7K" role="2OqNvi">
                            <ref role="3Tt5mk" to="w348:67x0xp6glHo" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="44i5KMTjFyB" role="2OqNvi">
                          <ref role="3Tt5mk" to="w348:1E7UGCp8Bfm" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="44i5KMTjEDA" role="Dpw9R">
                        <property role="Xl_RC" value="Go to http://campagnelab.org/software/bdval/configure-bdval/dataset-specific-configuration/ to view files supported by BDVal" />
                      </node>
                      <node concept="2ODE4t" id="44i5KMTjFF$" role="2OEWyd">
                        <ref role="2ODJFN" to="w348:1E7UGCp0R5I" resolve="fileLocation" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="44i5KMTjDur" role="3clFbw">
                    <node concept="2OqwBi" id="44i5KMTjCZy" role="2Oq$k0">
                      <node concept="2OqwBi" id="44i5KMTjCC2" role="2Oq$k0">
                        <node concept="2OqwBi" id="44i5KMTjCaL" role="2Oq$k0">
                          <node concept="37vLTw" id="44i5KMTjC6a" role="2Oq$k0">
                            <ref role="3cqZAo" node="1MyzK_kNNBV" resolve="dataset" />
                          </node>
                          <node concept="3TrEf2" id="44i5KMTjCqM" role="2OqNvi">
                            <ref role="3Tt5mk" to="w348:67x0xp6glHo" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="44i5KMTjCKt" role="2OqNvi">
                          <ref role="3Tt5mk" to="w348:1E7UGCp8Bfm" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="44i5KMTjD9W" role="2OqNvi">
                        <ref role="3TsBF5" to="w348:1E7UGCp0R5I" resolve="fileLocation" />
                      </node>
                    </node>
                    <node concept="17RlXB" id="44i5KMTjEpW" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3clFbJ" id="1MyzK_kNNLN" role="3cqZAp">
                  <node concept="3clFbS" id="1MyzK_kNNLO" role="3clFbx">
                    <node concept="Dpp1Q" id="1MyzK_kNPn5" role="3cqZAp">
                      <node concept="2OqwBi" id="1MyzK_kNPC1" role="2OEOjV">
                        <node concept="37vLTw" id="1MyzK_kNP_1" role="2Oq$k0">
                          <ref role="3cqZAo" node="1MyzK_kNNBV" resolve="dataset" />
                        </node>
                        <node concept="3TrEf2" id="1MyzK_kNPPU" role="2OqNvi">
                          <ref role="3Tt5mk" to="w348:69ees3rLBNe" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="1MyzK_kNPu7" role="Dpw9R">
                        <property role="Xl_RC" value="Press Ctrl+Space to view choices" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1MyzK_kNOTd" role="3clFbw">
                    <node concept="2OqwBi" id="1MyzK_kNOnU" role="2Oq$k0">
                      <node concept="2OqwBi" id="1MyzK_kNNSm" role="2Oq$k0">
                        <node concept="37vLTw" id="1MyzK_kNNPp" role="2Oq$k0">
                          <ref role="3cqZAo" node="1MyzK_kNNBV" resolve="dataset" />
                        </node>
                        <node concept="3TrEf2" id="1MyzK_kNO6J" role="2OqNvi">
                          <ref role="3Tt5mk" to="w348:69ees3rLBNe" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="1MyzK_kNOEL" role="2OqNvi">
                        <ref role="3Tt5mk" to="w348:69ees3rM0Ol" />
                      </node>
                    </node>
                    <node concept="3w_OXm" id="1MyzK_kNPgo" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="1MyzK_kNNBV" role="1bW2Oz">
                <property role="TrG5h" value="dataset" />
                <node concept="2jxLKc" id="1MyzK_kNNBW" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5ybh7S9YcCV" role="1YuTPh">
      <property role="TrG5h" value="project" />
      <ref role="1YaFvo" to="w348:2UUqZtvS4$K" resolve="Project" />
    </node>
  </node>
  <node concept="Q5z_Y" id="1MyzK_kVJXI">
    <property role="TrG5h" value="TrimDirectory" />
    <node concept="Q5ZZ6" id="1MyzK_kVJXJ" role="Q6x$H">
      <node concept="3clFbS" id="1MyzK_kVJXK" role="2VODD2">
        <node concept="Jncv_" id="1MyzK_kVMbZ" role="3cqZAp">
          <ref role="JncvD" to="w348:1E7UGCp8PB_" resolve="Directory" />
          <node concept="Q6c8r" id="1MyzK_kVMcD" role="JncvB" />
          <node concept="3clFbS" id="1MyzK_kVMc1" role="Jncv$">
            <node concept="3cpWs8" id="1MyzK_kVQVv" role="3cqZAp">
              <node concept="3cpWsn" id="1MyzK_kVQVy" role="3cpWs9">
                <property role="TrG5h" value="oldLocation" />
                <node concept="17QB3L" id="1MyzK_kVQVt" role="1tU5fm" />
                <node concept="2OqwBi" id="1MyzK_kVR2c" role="33vP2m">
                  <node concept="Jnkvi" id="1MyzK_kVR0W" role="2Oq$k0">
                    <ref role="1M0zk5" node="1MyzK_kVMc2" resolve="dirNode" />
                  </node>
                  <node concept="3TrcHB" id="1MyzK_kVRc4" role="2OqNvi">
                    <ref role="3TsBF5" to="w348:1E7UGCp8PBA" resolve="directoryLocation" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1MyzK_kVMeb" role="3cqZAp">
              <node concept="2OqwBi" id="1MyzK_kVMLb" role="3clFbG">
                <node concept="2OqwBi" id="1MyzK_kVMfq" role="2Oq$k0">
                  <node concept="Jnkvi" id="1MyzK_kVMea" role="2Oq$k0">
                    <ref role="1M0zk5" node="1MyzK_kVMc2" resolve="dirNode" />
                  </node>
                  <node concept="3TrcHB" id="1MyzK_kVMvH" role="2OqNvi">
                    <ref role="3TsBF5" to="w348:1E7UGCp8PBA" resolve="directoryLocation" />
                  </node>
                </node>
                <node concept="tyxLq" id="1MyzK_kVOpk" role="2OqNvi">
                  <node concept="2OqwBi" id="1MyzK_kVSyu" role="tz02z">
                    <node concept="37vLTw" id="1MyzK_kVRrW" role="2Oq$k0">
                      <ref role="3cqZAo" node="1MyzK_kVQVy" resolve="oldLocation" />
                    </node>
                    <node concept="liA8E" id="1MyzK_kVSX5" role="2OqNvi">
                      <ref role="37wK5l" to="e2lb:~String.substring(int,int):java.lang.String" resolve="substring" />
                      <node concept="3cmrfG" id="1MyzK_kVT4t" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="3cpWsd" id="1MyzK_kW4HS" role="37wK5m">
                        <node concept="3cmrfG" id="1MyzK_kW4HX" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="2OqwBi" id="1MyzK_kVTqN" role="3uHU7B">
                          <node concept="37vLTw" id="1MyzK_kVTcS" role="2Oq$k0">
                            <ref role="3cqZAo" node="1MyzK_kVQVy" resolve="oldLocation" />
                          </node>
                          <node concept="liA8E" id="1MyzK_kVUhJ" role="2OqNvi">
                            <ref role="37wK5l" to="e2lb:~String.length():int" resolve="length" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="1MyzK_kVMc2" role="JncvA">
            <property role="TrG5h" value="dirNode" />
            <node concept="2jxLKc" id="1MyzK_kVMc3" role="1tU5fm" />
          </node>
        </node>
      </node>
    </node>
    <node concept="QznSV" id="1MyzK_kVUPI" role="QzAvj">
      <node concept="3clFbS" id="1MyzK_kVUPJ" role="2VODD2">
        <node concept="3clFbF" id="1MyzK_kVV2P" role="3cqZAp">
          <node concept="Xl_RD" id="1MyzK_kVV2O" role="3clFbG">
            <property role="Xl_RC" value="Remove '/' character" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="1MyzK_kWnw9">
    <property role="TrG5h" value="check_FeatureSelections" />
    <node concept="3clFbS" id="1MyzK_kWnwa" role="18ibNy">
      <node concept="3clFbJ" id="1MyzK_kWnDY" role="3cqZAp">
        <node concept="3clFbS" id="1MyzK_kWnDZ" role="3clFbx">
          <node concept="2MkqsV" id="1MyzK_kWsSS" role="3cqZAp">
            <node concept="Xl_RD" id="1MyzK_kWsTa" role="2MkJ7o">
              <property role="Xl_RC" value="Cannot select second feature selection strategy with Whole Chip" />
            </node>
            <node concept="1YBJjd" id="1MyzK_kWsWY" role="2OEOjV">
              <ref role="1YBMHb" node="1MyzK_kWnD5" resolve="fsCombo" />
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="1MyzK_kWrSP" role="3clFbw">
          <node concept="2OqwBi" id="1MyzK_kWswW" role="3uHU7w">
            <node concept="2OqwBi" id="1MyzK_kWs1D" role="2Oq$k0">
              <node concept="1YBJjd" id="1MyzK_kWrWC" role="2Oq$k0">
                <ref role="1YBMHb" node="1MyzK_kWnD5" resolve="fsCombo" />
              </node>
              <node concept="3TrEf2" id="1MyzK_kWsjT" role="2OqNvi">
                <ref role="3Tt5mk" to="w348:3a_GB3TVZom" />
              </node>
            </node>
            <node concept="3x8VRR" id="1MyzK_kWsP3" role="2OqNvi" />
          </node>
          <node concept="2OqwBi" id="1MyzK_kWrhZ" role="3uHU7B">
            <node concept="2OqwBi" id="1MyzK_kWqPK" role="2Oq$k0">
              <node concept="1YBJjd" id="1MyzK_kWqMl" role="2Oq$k0">
                <ref role="1YBMHb" node="1MyzK_kWnD5" resolve="fsCombo" />
              </node>
              <node concept="3TrEf2" id="1MyzK_kWr7s" role="2OqNvi">
                <ref role="3Tt5mk" to="w348:3a_GB3TVZok" />
              </node>
            </node>
            <node concept="1mIQ4w" id="1MyzK_kWr_y" role="2OqNvi">
              <node concept="chp4Y" id="1MyzK_kWrIC" role="cj9EA">
                <ref role="cht4Q" to="w348:4kZc_K6uiut" resolve="WholeChip" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="1MyzK_kWt2y" role="3cqZAp">
        <node concept="3clFbS" id="1MyzK_kWt2_" role="3clFbx">
          <node concept="2MkqsV" id="1MyzK_kWv$A" role="3cqZAp">
            <node concept="Xl_RD" id="1MyzK_kWv$S" role="2MkJ7o">
              <property role="Xl_RC" value="Cannot have Whole Chip as second feature selection strategy" />
            </node>
            <node concept="1YBJjd" id="1MyzK_kWvCU" role="2OEOjV">
              <ref role="1YBMHb" node="1MyzK_kWnD5" resolve="fsCombo" />
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="1MyzK_kWud2" role="3clFbw">
          <node concept="2OqwBi" id="1MyzK_kWv1s" role="3uHU7w">
            <node concept="2OqwBi" id="1MyzK_kWulT" role="2Oq$k0">
              <node concept="1YBJjd" id="1MyzK_kWuiI" role="2Oq$k0">
                <ref role="1YBMHb" node="1MyzK_kWnD5" resolve="fsCombo" />
              </node>
              <node concept="3TrEf2" id="1MyzK_kWuDP" role="2OqNvi">
                <ref role="3Tt5mk" to="w348:3a_GB3TVZom" />
              </node>
            </node>
            <node concept="1mIQ4w" id="1MyzK_kWvfh" role="2OqNvi">
              <node concept="chp4Y" id="1MyzK_kWvuO" role="cj9EA">
                <ref role="cht4Q" to="w348:4kZc_K6uiut" resolve="WholeChip" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1MyzK_kWtBl" role="3uHU7B">
            <node concept="2OqwBi" id="1MyzK_kWt9k" role="2Oq$k0">
              <node concept="1YBJjd" id="1MyzK_kWt7v" role="2Oq$k0">
                <ref role="1YBMHb" node="1MyzK_kWnD5" resolve="fsCombo" />
              </node>
              <node concept="3TrEf2" id="1MyzK_kWtsI" role="2OqNvi">
                <ref role="3Tt5mk" to="w348:3a_GB3TVZom" />
              </node>
            </node>
            <node concept="3x8VRR" id="1MyzK_kWtWA" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="1MyzK_l7Dno" role="3cqZAp">
        <node concept="3clFbS" id="1MyzK_l7Dnr" role="3clFbx">
          <node concept="3cpWs8" id="1MyzK_l7Olh" role="3cqZAp">
            <node concept="3cpWsn" id="1MyzK_l7Olk" role="3cpWs9">
              <property role="TrG5h" value="gaProperties" />
              <node concept="3Tqbb2" id="1MyzK_l7Olf" role="1tU5fm">
                <ref role="ehGHo" to="w348:3v_Iv_HVvwz" resolve="GeneticAlgorithmParameters" />
              </node>
              <node concept="2OqwBi" id="1MyzK_l7P_S" role="33vP2m">
                <node concept="2OqwBi" id="1MyzK_l7OWO" role="2Oq$k0">
                  <node concept="2OqwBi" id="1MyzK_l7Oyq" role="2Oq$k0">
                    <node concept="1YBJjd" id="1MyzK_l7Oww" role="2Oq$k0">
                      <ref role="1YBMHb" node="1MyzK_kWnD5" resolve="fsCombo" />
                    </node>
                    <node concept="2Xjw5R" id="1MyzK_l7OSl" role="2OqNvi">
                      <node concept="1xMEDy" id="1MyzK_l7OSn" role="1xVPHs">
                        <node concept="chp4Y" id="1MyzK_l7OTc" role="ri$Ld">
                          <ref role="cht4Q" to="w348:1BOPt_Rb6Ug" resolve="FeatureSelectionChoices" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3TrEf2" id="1MyzK_l7PiG" role="2OqNvi">
                    <ref role="3Tt5mk" to="w348:1BOPt_RWcQ4" />
                  </node>
                </node>
                <node concept="3TrEf2" id="1MyzK_l7PVG" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:3v_Iv_HVvvE" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1MyzK_l7LSy" role="3cqZAp">
            <node concept="3clFbS" id="1MyzK_l7LSz" role="3clFbx">
              <node concept="2MkqsV" id="1MyzK_l7O6d" role="3cqZAp">
                <node concept="Xl_RD" id="1MyzK_l7O6v" role="2MkJ7o">
                  <property role="Xl_RC" value="Must Specify Genetic Algorithm Performance" />
                </node>
                <node concept="37vLTw" id="1MyzK_l7QXT" role="2OEOjV">
                  <ref role="3cqZAo" node="1MyzK_l7Olk" resolve="gaProperties" />
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="1MyzK_ladKL" role="3clFbw">
              <node concept="2OqwBi" id="1MyzK_ladUs" role="3uHU7B">
                <node concept="37vLTw" id="1MyzK_ladRn" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MyzK_l7Olk" resolve="gaProperties" />
                </node>
                <node concept="3x8VRR" id="1MyzK_lae9m" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="1MyzK_l7QAs" role="3uHU7w">
                <node concept="2OqwBi" id="1MyzK_l7Qan" role="2Oq$k0">
                  <node concept="37vLTw" id="1MyzK_l7Q2O" role="2Oq$k0">
                    <ref role="3cqZAo" node="1MyzK_l7Olk" resolve="gaProperties" />
                  </node>
                  <node concept="3TrEf2" id="1MyzK_l7QtB" role="2OqNvi">
                    <ref role="3Tt5mk" to="w348:3v_Iv_HVxhp" />
                  </node>
                </node>
                <node concept="3w_OXm" id="1MyzK_l7QPM" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="22lmx$" id="1MyzK_l7KND" role="3clFbw">
          <node concept="2OqwBi" id="1MyzK_l7Lwq" role="3uHU7w">
            <node concept="2OqwBi" id="1MyzK_l7KXu" role="2Oq$k0">
              <node concept="1YBJjd" id="1MyzK_l7KSH" role="2Oq$k0">
                <ref role="1YBMHb" node="1MyzK_kWnD5" resolve="fsCombo" />
              </node>
              <node concept="3TrEf2" id="1MyzK_l7Lkn" role="2OqNvi">
                <ref role="3Tt5mk" to="w348:3a_GB3TVZom" />
              </node>
            </node>
            <node concept="1mIQ4w" id="1MyzK_l7LHJ" role="2OqNvi">
              <node concept="chp4Y" id="1MyzK_l7LMY" role="cj9EA">
                <ref role="cht4Q" to="w348:4kZc_K3xsu9" resolve="GeneticAlgorithm" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1MyzK_l7Km0" role="3uHU7B">
            <node concept="2OqwBi" id="1MyzK_l7K2j" role="2Oq$k0">
              <node concept="1YBJjd" id="1MyzK_l7JZm" role="2Oq$k0">
                <ref role="1YBMHb" node="1MyzK_kWnD5" resolve="fsCombo" />
              </node>
              <node concept="3TrEf2" id="1MyzK_l7Kch" role="2OqNvi">
                <ref role="3Tt5mk" to="w348:3a_GB3TVZok" />
              </node>
            </node>
            <node concept="1mIQ4w" id="1MyzK_l7KD7" role="2OqNvi">
              <node concept="chp4Y" id="1MyzK_l7KEC" role="cj9EA">
                <ref role="cht4Q" to="w348:4kZc_K3xsu9" resolve="GeneticAlgorithm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1MyzK_kWnD5" role="1YuTPh">
      <property role="TrG5h" value="fsCombo" />
      <ref role="1YaFvo" to="w348:1BOPt_Rjk71" resolve="FeatureSelectionStrategy" />
    </node>
  </node>
  <node concept="18kY7G" id="1MyzK_lbQlv">
    <property role="TrG5h" value="check_expanded_Approach" />
    <node concept="3clFbS" id="1MyzK_lbQlw" role="18ibNy">
      <node concept="3cpWs8" id="1MyzK_lc1jh" role="3cqZAp">
        <node concept="3cpWsn" id="1MyzK_lc1jk" role="3cpWs9">
          <property role="TrG5h" value="methodList" />
          <node concept="2I9FWS" id="1MyzK_lc1jf" role="1tU5fm" />
          <node concept="2OqwBi" id="1MyzK_lc5uN" role="33vP2m">
            <node concept="2OqwBi" id="1MyzK_lc2JC" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_lc1F5" role="2Oq$k0">
                <node concept="2OqwBi" id="1MyzK_lc1nV" role="2Oq$k0">
                  <node concept="1YBJjd" id="1MyzK_lc1m1" role="2Oq$k0">
                    <ref role="1YBMHb" node="1MyzK_lbQly" resolve="approach" />
                  </node>
                  <node concept="3TrEf2" id="1MyzK_lc1wP" role="2OqNvi">
                    <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="1MyzK_lc1UE" role="2OqNvi">
                  <ref role="3TtcxE" to="w348:1BOPt_Rbsy0" />
                </node>
              </node>
              <node concept="13MTOL" id="1MyzK_lc4rv" role="2OqNvi">
                <ref role="13MTZf" to="w348:3a_GB3TVZok" />
              </node>
            </node>
            <node concept="ANE8D" id="1MyzK_lc6hD" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3clFbF" id="1MyzK_lc6_1" role="3cqZAp">
        <node concept="2OqwBi" id="1MyzK_lc763" role="3clFbG">
          <node concept="37vLTw" id="1MyzK_lc6_0" role="2Oq$k0">
            <ref role="3cqZAo" node="1MyzK_lc1jk" resolve="methodList" />
          </node>
          <node concept="X8dFx" id="1MyzK_lc9S9" role="2OqNvi">
            <node concept="2OqwBi" id="1MyzK_lcn7z" role="25WWJ7">
              <node concept="2OqwBi" id="1MyzK_lcgAw" role="2Oq$k0">
                <node concept="2OqwBi" id="1MyzK_lcdUy" role="2Oq$k0">
                  <node concept="2OqwBi" id="1MyzK_lcbVZ" role="2Oq$k0">
                    <node concept="1YBJjd" id="1MyzK_lcar4" role="2Oq$k0">
                      <ref role="1YBMHb" node="1MyzK_lbQly" resolve="approach" />
                    </node>
                    <node concept="3TrEf2" id="1MyzK_lccDd" role="2OqNvi">
                      <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="1MyzK_lce$p" role="2OqNvi">
                    <ref role="3TtcxE" to="w348:1BOPt_Rbsy0" />
                  </node>
                </node>
                <node concept="13MTOL" id="1MyzK_lcivE" role="2OqNvi">
                  <ref role="13MTZf" to="w348:3a_GB3TVZom" />
                </node>
              </node>
              <node concept="ANE8D" id="1MyzK_lcoOe" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbF" id="1MyzK_lcFAE" role="3cqZAp">
        <node concept="2OqwBi" id="1MyzK_lcHku" role="3clFbG">
          <node concept="37vLTw" id="1MyzK_lcFAD" role="2Oq$k0">
            <ref role="3cqZAo" node="1MyzK_lc1jk" resolve="methodList" />
          </node>
          <node concept="X8dFx" id="1MyzK_lcKEL" role="2OqNvi">
            <node concept="2OqwBi" id="1MyzK_ld5X2" role="25WWJ7">
              <node concept="2OqwBi" id="1MyzK_ld002" role="2Oq$k0">
                <node concept="2OqwBi" id="1MyzK_lcSBe" role="2Oq$k0">
                  <node concept="2OqwBi" id="1MyzK_lcMb1" role="2Oq$k0">
                    <node concept="1YBJjd" id="1MyzK_lcLK4" role="2Oq$k0">
                      <ref role="1YBMHb" node="1MyzK_lbQly" resolve="approach" />
                    </node>
                    <node concept="3TrEf2" id="1MyzK_lcOIP" role="2OqNvi">
                      <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="1MyzK_lcVpi" role="2OqNvi">
                    <ref role="3TtcxE" to="w348:1BOPt_Rbsy0" />
                  </node>
                </node>
                <node concept="13MTOL" id="1MyzK_ld3DW" role="2OqNvi">
                  <ref role="13MTZf" to="w348:4kZc_K51kLk" />
                </node>
              </node>
              <node concept="ANE8D" id="1MyzK_ld8QH" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbF" id="1MyzK_ldcVK" role="3cqZAp">
        <node concept="2OqwBi" id="1MyzK_ldehY" role="3clFbG">
          <node concept="37vLTw" id="1MyzK_ldcVJ" role="2Oq$k0">
            <ref role="3cqZAo" node="1MyzK_lc1jk" resolve="methodList" />
          </node>
          <node concept="X8dFx" id="1MyzK_ldht$" role="2OqNvi">
            <node concept="2OqwBi" id="1MyzK_ldmu4" role="25WWJ7">
              <node concept="2OqwBi" id="1MyzK_ldiC3" role="2Oq$k0">
                <node concept="1YBJjd" id="1MyzK_ldi9p" role="2Oq$k0">
                  <ref role="1YBMHb" node="1MyzK_lbQly" resolve="approach" />
                </node>
                <node concept="3TrEf2" id="1MyzK_ldkCH" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:4kZc_K5UTAw" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1MyzK_ldocW" role="2OqNvi">
                <ref role="3TtcxE" to="w348:4kZc_KaSIsY" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="1MyzK_ldsW2" role="3cqZAp" />
      <node concept="3cpWs8" id="1MyzK_lbZIe" role="3cqZAp">
        <node concept="3cpWsn" id="1MyzK_lbZIh" role="3cpWs9">
          <property role="TrG5h" value="fsProperties" />
          <node concept="3Tqbb2" id="1MyzK_lbZIc" role="1tU5fm">
            <ref role="ehGHo" to="w348:43loRlgjfMu" resolve="FeatureSelectionParameters" />
          </node>
          <node concept="2OqwBi" id="1MyzK_lc04G" role="33vP2m">
            <node concept="2OqwBi" id="1MyzK_lbZMh" role="2Oq$k0">
              <node concept="1YBJjd" id="1MyzK_lbZKn" role="2Oq$k0">
                <ref role="1YBMHb" node="1MyzK_lbQly" resolve="approach" />
              </node>
              <node concept="3TrEf2" id="1MyzK_lbZUo" role="2OqNvi">
                <ref role="3Tt5mk" to="w348:7dyeNdhdJ3E" />
              </node>
            </node>
            <node concept="3TrEf2" id="1MyzK_lc0km" role="2OqNvi">
              <ref role="3Tt5mk" to="w348:1BOPt_RWcQ4" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="1MyzK_ldupq" role="3cqZAp">
        <node concept="3cpWsn" id="1MyzK_ldupt" role="3cpWs9">
          <property role="TrG5h" value="csProperties" />
          <node concept="3Tqbb2" id="1MyzK_ldupo" role="1tU5fm">
            <ref role="ehGHo" to="w348:4kZc_K5UCJd" resolve="ClassificationParameters" />
          </node>
          <node concept="2OqwBi" id="1MyzK_ldxyr" role="33vP2m">
            <node concept="2OqwBi" id="1MyzK_ldwk3" role="2Oq$k0">
              <node concept="1YBJjd" id="1MyzK_ldwi9" role="2Oq$k0">
                <ref role="1YBMHb" node="1MyzK_lbQly" resolve="approach" />
              </node>
              <node concept="3TrEf2" id="1MyzK_ldxix" role="2OqNvi">
                <ref role="3Tt5mk" to="w348:4kZc_K5UTAw" />
              </node>
            </node>
            <node concept="3TrEf2" id="1MyzK_ldzCu" role="2OqNvi">
              <ref role="3Tt5mk" to="w348:4kZc_K5UHas" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="1MyzK_ldzDE" role="3cqZAp" />
      <node concept="2Gpval" id="1MyzK_lcsAf" role="3cqZAp">
        <node concept="2GrKxI" id="1MyzK_lcsAh" role="2Gsz3X">
          <property role="TrG5h" value="method" />
        </node>
        <node concept="37vLTw" id="1MyzK_lcvaS" role="2GsD0m">
          <ref role="3cqZAo" node="1MyzK_lc1jk" resolve="methodList" />
        </node>
        <node concept="3clFbS" id="1MyzK_lcsAl" role="2LFqv$">
          <node concept="3clFbJ" id="MO4Jskxuhu" role="3cqZAp">
            <node concept="3clFbS" id="MO4Jskxuhx" role="3clFbx">
              <node concept="3clFbJ" id="MO4JskxuGE" role="3cqZAp">
                <node concept="3clFbS" id="MO4JskxuGF" role="3clFbx">
                  <node concept="2MkqsV" id="MO4JskxuGG" role="3cqZAp">
                    <node concept="Xl_RD" id="MO4JskxuGH" role="2MkJ7o">
                      <property role="Xl_RC" value="Must expand, press enter" />
                    </node>
                    <node concept="37vLTw" id="MO4JskxuGI" role="2OEOjV">
                      <ref role="3cqZAo" node="1MyzK_lbZIh" resolve="fsProperties" />
                    </node>
                    <node concept="2OE7Q9" id="MO4JskxuGJ" role="2OEWyd">
                      <ref role="2OEe5H" to="w348:3a_GB3UQIv6" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="MO4JskxuGK" role="3clFbw">
                  <node concept="2OqwBi" id="MO4JskxuGL" role="2Oq$k0">
                    <node concept="37vLTw" id="MO4JskxuGM" role="2Oq$k0">
                      <ref role="3cqZAo" node="1MyzK_lbZIh" resolve="fsProperties" />
                    </node>
                    <node concept="3TrEf2" id="MO4JskxuGN" role="2OqNvi">
                      <ref role="3Tt5mk" to="w348:3a_GB3UQIv6" />
                    </node>
                  </node>
                  <node concept="3w_OXm" id="MO4JskxuGO" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="MO4Jskxuqd" role="3eNLev">
              <node concept="3clFbS" id="MO4Jskxuqf" role="3eOfB_">
                <node concept="3clFbJ" id="MO4JskxuNk" role="3cqZAp">
                  <node concept="3clFbS" id="MO4JskxuNl" role="3clFbx">
                    <node concept="2MkqsV" id="MO4JskxuNm" role="3cqZAp">
                      <node concept="Xl_RD" id="MO4JskxuNn" role="2MkJ7o">
                        <property role="Xl_RC" value="Must expand, press enter" />
                      </node>
                      <node concept="37vLTw" id="MO4JskxuNo" role="2OEOjV">
                        <ref role="3cqZAo" node="1MyzK_lbZIh" resolve="fsProperties" />
                      </node>
                      <node concept="2OE7Q9" id="MO4JskxuNp" role="2OEWyd">
                        <ref role="2OEe5H" to="w348:43loRlhqPGJ" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="MO4JskxuNq" role="3clFbw">
                    <node concept="2OqwBi" id="MO4JskxuNr" role="2Oq$k0">
                      <node concept="37vLTw" id="MO4JskxuNs" role="2Oq$k0">
                        <ref role="3cqZAo" node="1MyzK_lbZIh" resolve="fsProperties" />
                      </node>
                      <node concept="3TrEf2" id="MO4JskxuNt" role="2OqNvi">
                        <ref role="3Tt5mk" to="w348:43loRlhqPGJ" />
                      </node>
                    </node>
                    <node concept="3w_OXm" id="MO4JskxuNu" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="MO4JskxuKe" role="3eO9$A">
                <node concept="2GrUjf" id="MO4JskxuKf" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1MyzK_lcsAh" resolve="method" />
                </node>
                <node concept="1mIQ4w" id="MO4JskxuKg" role="2OqNvi">
                  <node concept="chp4Y" id="MO4JskxuKh" role="cj9EA">
                    <ref role="cht4Q" to="w348:1BOPt_RaTtC" resolve="Ttest" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="MO4JskxuqF" role="3eNLev">
              <node concept="3clFbS" id="MO4JskxuqH" role="3eOfB_">
                <node concept="3clFbJ" id="MO4JskxuTY" role="3cqZAp">
                  <node concept="3clFbS" id="MO4JskxuTZ" role="3clFbx">
                    <node concept="2MkqsV" id="MO4JskxuU0" role="3cqZAp">
                      <node concept="Xl_RD" id="MO4JskxuU1" role="2MkJ7o">
                        <property role="Xl_RC" value="Must expand, press enter" />
                      </node>
                      <node concept="37vLTw" id="MO4JskxuU2" role="2OEOjV">
                        <ref role="3cqZAo" node="1MyzK_lbZIh" resolve="fsProperties" />
                      </node>
                      <node concept="2OE7Q9" id="MO4JskxuU3" role="2OEWyd">
                        <ref role="2OEe5H" to="w348:3v_Iv_HVvvE" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="MO4JskxuU4" role="3clFbw">
                    <node concept="2OqwBi" id="MO4JskxuU5" role="2Oq$k0">
                      <node concept="37vLTw" id="MO4JskxuU6" role="2Oq$k0">
                        <ref role="3cqZAo" node="1MyzK_lbZIh" resolve="fsProperties" />
                      </node>
                      <node concept="3TrEf2" id="MO4JskxuU7" role="2OqNvi">
                        <ref role="3Tt5mk" to="w348:3v_Iv_HVvvE" />
                      </node>
                    </node>
                    <node concept="3w_OXm" id="MO4JskxuU8" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="MO4JskxuQS" role="3eO9$A">
                <node concept="2GrUjf" id="MO4JskxuQT" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1MyzK_lcsAh" resolve="method" />
                </node>
                <node concept="1mIQ4w" id="MO4JskxuQU" role="2OqNvi">
                  <node concept="chp4Y" id="MO4JskxuQV" role="cj9EA">
                    <ref role="cht4Q" to="w348:4kZc_K3xsu9" resolve="GeneticAlgorithm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="MO4JskxvVM" role="3eNLev">
              <node concept="3clFbS" id="MO4JskxvVO" role="3eOfB_">
                <node concept="3clFbJ" id="MO4Jskxw_k" role="3cqZAp">
                  <node concept="3clFbS" id="MO4Jskxw_l" role="3clFbx">
                    <node concept="2MkqsV" id="MO4Jskxw_m" role="3cqZAp">
                      <node concept="Xl_RD" id="MO4Jskxw_n" role="2MkJ7o">
                        <property role="Xl_RC" value="Must expand, press enter" />
                      </node>
                      <node concept="37vLTw" id="MO4Jskxw_o" role="2OEOjV">
                        <ref role="3cqZAo" node="1MyzK_lbZIh" resolve="fsProperties" />
                      </node>
                      <node concept="2OE7Q9" id="MO4Jskxw_p" role="2OEWyd">
                        <ref role="2OEe5H" to="w348:3v_Iv_HVlIM" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="MO4Jskxw_q" role="3clFbw">
                    <node concept="2OqwBi" id="MO4Jskxw_r" role="2Oq$k0">
                      <node concept="37vLTw" id="MO4Jskxw_s" role="2Oq$k0">
                        <ref role="3cqZAo" node="1MyzK_lbZIh" resolve="fsProperties" />
                      </node>
                      <node concept="3TrEf2" id="MO4Jskxw_t" role="2OqNvi">
                        <ref role="3Tt5mk" to="w348:3v_Iv_HVlIM" />
                      </node>
                    </node>
                    <node concept="3w_OXm" id="MO4Jskxw_u" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1MyzK_lcBAB" role="3eO9$A">
                <node concept="2GrUjf" id="1MyzK_lcBAC" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1MyzK_lcsAh" resolve="method" />
                </node>
                <node concept="1mIQ4w" id="1MyzK_lcBAD" role="2OqNvi">
                  <node concept="chp4Y" id="1MyzK_lcBJb" role="cj9EA">
                    <ref role="cht4Q" to="w348:3a_GB3UJx6V" resolve="FoldChange" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="MO4JskxACV" role="3eNLev">
              <node concept="3clFbS" id="MO4JskxACX" role="3eOfB_">
                <node concept="3clFbJ" id="MO4JskxBnS" role="3cqZAp">
                  <node concept="3clFbS" id="MO4JskxBnT" role="3clFbx">
                    <node concept="2MkqsV" id="MO4JskxBnU" role="3cqZAp">
                      <node concept="Xl_RD" id="MO4JskxBnV" role="2MkJ7o">
                        <property role="Xl_RC" value="Must expand, press enter" />
                      </node>
                      <node concept="37vLTw" id="MO4JskxBnW" role="2OEOjV">
                        <ref role="3cqZAo" node="1MyzK_lbZIh" resolve="fsProperties" />
                      </node>
                      <node concept="2OE7Q9" id="MO4JskxBnX" role="2OEWyd">
                        <ref role="2OEe5H" to="w348:79vlTg1Vl02" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="MO4JskxBnY" role="3clFbw">
                    <node concept="2OqwBi" id="MO4JskxBnZ" role="2Oq$k0">
                      <node concept="37vLTw" id="MO4JskxBo0" role="2Oq$k0">
                        <ref role="3cqZAo" node="1MyzK_lbZIh" resolve="fsProperties" />
                      </node>
                      <node concept="3TrEf2" id="MO4JskxBxH" role="2OqNvi">
                        <ref role="3Tt5mk" to="w348:79vlTg1Vl02" />
                      </node>
                    </node>
                    <node concept="3w_OXm" id="MO4JskxBo2" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="MO4JskxAZo" role="3eO9$A">
                <node concept="2GrUjf" id="MO4JskxAZp" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1MyzK_lcsAh" resolve="method" />
                </node>
                <node concept="1mIQ4w" id="MO4JskxAZq" role="2OqNvi">
                  <node concept="chp4Y" id="MO4JskxB1M" role="cj9EA">
                    <ref role="cht4Q" to="w348:79vlTg1UU6z" resolve="KendallTau" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="MO4JskxwXK" role="3eNLev">
              <node concept="3clFbS" id="MO4JskxwXM" role="3eOfB_">
                <node concept="3clFbJ" id="MO4JskxxGF" role="3cqZAp">
                  <node concept="3clFbS" id="MO4JskxxGG" role="3clFbx">
                    <node concept="2MkqsV" id="MO4JskxxGH" role="3cqZAp">
                      <node concept="Xl_RD" id="MO4JskxxGI" role="2MkJ7o">
                        <property role="Xl_RC" value="Must expand, press enter" />
                      </node>
                      <node concept="37vLTw" id="MO4JskxxGJ" role="2OEOjV">
                        <ref role="3cqZAo" node="1MyzK_lbZIh" resolve="fsProperties" />
                      </node>
                      <node concept="2OE7Q9" id="MO4JskxxGK" role="2OEWyd">
                        <ref role="2OEe5H" to="w348:4kZc_K4Ucr3" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="MO4JskxxGL" role="3clFbw">
                    <node concept="2OqwBi" id="MO4JskxxGM" role="2Oq$k0">
                      <node concept="37vLTw" id="MO4JskxxGN" role="2Oq$k0">
                        <ref role="3cqZAo" node="1MyzK_lbZIh" resolve="fsProperties" />
                      </node>
                      <node concept="3TrEf2" id="MO4JskxxGO" role="2OqNvi">
                        <ref role="3Tt5mk" to="w348:4kZc_K4Ucr3" />
                      </node>
                    </node>
                    <node concept="3w_OXm" id="MO4JskxxGP" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="MO4JskxxD_" role="3eO9$A">
                <node concept="2GrUjf" id="MO4JskxxDA" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1MyzK_lcsAh" resolve="method" />
                </node>
                <node concept="1mIQ4w" id="MO4JskxxDB" role="2OqNvi">
                  <node concept="chp4Y" id="MO4JskxxDC" role="cj9EA">
                    <ref role="cht4Q" to="w348:4kZc_K4S4Xg" resolve="Permutation" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="MO4Jskxy4Q" role="3eNLev">
              <node concept="3clFbS" id="MO4Jskxy4S" role="3eOfB_">
                <node concept="3clFbJ" id="MO4Jskxyt4" role="3cqZAp">
                  <node concept="3clFbS" id="MO4Jskxyt5" role="3clFbx">
                    <node concept="2MkqsV" id="MO4Jskxyt6" role="3cqZAp">
                      <node concept="Xl_RD" id="MO4Jskxyt7" role="2MkJ7o">
                        <property role="Xl_RC" value="Must expand, press enter" />
                      </node>
                      <node concept="37vLTw" id="MO4Jskxyt8" role="2OEOjV">
                        <ref role="3cqZAo" node="1MyzK_lbZIh" resolve="fsProperties" />
                      </node>
                      <node concept="2OE7Q9" id="MO4Jskxyt9" role="2OEWyd">
                        <ref role="2OEe5H" to="w348:4kZc_K3vcfA" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="MO4Jskxyta" role="3clFbw">
                    <node concept="2OqwBi" id="MO4Jskxytb" role="2Oq$k0">
                      <node concept="37vLTw" id="MO4Jskxytc" role="2Oq$k0">
                        <ref role="3cqZAo" node="1MyzK_lbZIh" resolve="fsProperties" />
                      </node>
                      <node concept="3TrEf2" id="MO4Jskxytd" role="2OqNvi">
                        <ref role="3Tt5mk" to="w348:4kZc_K3vcfA" />
                      </node>
                    </node>
                    <node concept="3w_OXm" id="MO4Jskxyte" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="MO4JskxypY" role="3eO9$A">
                <node concept="2GrUjf" id="MO4JskxypZ" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1MyzK_lcsAh" resolve="method" />
                </node>
                <node concept="1mIQ4w" id="MO4Jskxyq0" role="2OqNvi">
                  <node concept="chp4Y" id="MO4Jskxyq1" role="cj9EA">
                    <ref role="cht4Q" to="w348:4kZc_K3uP5f" resolve="MinMax" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="MO4JskxyOY" role="3eNLev">
              <node concept="3clFbS" id="MO4JskxyP0" role="3eOfB_">
                <node concept="3clFbJ" id="MO4JskxzkC" role="3cqZAp">
                  <node concept="3clFbS" id="MO4JskxzkD" role="3clFbx">
                    <node concept="2MkqsV" id="MO4JskxzkE" role="3cqZAp">
                      <node concept="Xl_RD" id="MO4JskxzkF" role="2MkJ7o">
                        <property role="Xl_RC" value="Must expand, press enter" />
                      </node>
                      <node concept="37vLTw" id="MO4JskxzkG" role="2OEOjV">
                        <ref role="3cqZAo" node="1MyzK_lbZIh" resolve="fsProperties" />
                      </node>
                      <node concept="2OE7Q9" id="MO4JskxzkH" role="2OEWyd">
                        <ref role="2OEe5H" to="w348:4kZc_K5BElT" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="MO4JskxzkI" role="3clFbw">
                    <node concept="2OqwBi" id="MO4JskxzkJ" role="2Oq$k0">
                      <node concept="37vLTw" id="MO4JskxzkK" role="2Oq$k0">
                        <ref role="3cqZAo" node="1MyzK_lbZIh" resolve="fsProperties" />
                      </node>
                      <node concept="3TrEf2" id="MO4JskxzkL" role="2OqNvi">
                        <ref role="3Tt5mk" to="w348:4kZc_K5BElT" />
                      </node>
                    </node>
                    <node concept="3w_OXm" id="MO4JskxzkM" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="MO4Jskxzhy" role="3eO9$A">
                <node concept="2GrUjf" id="MO4Jskxzhz" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1MyzK_lcsAh" resolve="method" />
                </node>
                <node concept="1mIQ4w" id="MO4Jskxzh$" role="2OqNvi">
                  <node concept="chp4Y" id="MO4Jskxzh_" role="cj9EA">
                    <ref role="cht4Q" to="w348:4kZc_K5uSoz" resolve="CoxReg" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="MO4JskxzGh" role="3eNLev">
              <node concept="3clFbS" id="MO4JskxzGj" role="3eOfB_">
                <node concept="3clFbJ" id="MO4Jskx$51" role="3cqZAp">
                  <node concept="3clFbS" id="MO4Jskx$52" role="3clFbx">
                    <node concept="2MkqsV" id="MO4Jskx$53" role="3cqZAp">
                      <node concept="Xl_RD" id="MO4Jskx$54" role="2MkJ7o">
                        <property role="Xl_RC" value="Must expand, press enter" />
                      </node>
                      <node concept="37vLTw" id="MO4Jskx$55" role="2OEOjV">
                        <ref role="3cqZAo" node="1MyzK_lbZIh" resolve="fsProperties" />
                      </node>
                      <node concept="2OE7Q9" id="MO4Jskx$56" role="2OEWyd">
                        <ref role="2OEe5H" to="w348:3v_Iv_IQMHe" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="MO4Jskx$57" role="3clFbw">
                    <node concept="2OqwBi" id="MO4Jskx$58" role="2Oq$k0">
                      <node concept="37vLTw" id="MO4Jskx$59" role="2Oq$k0">
                        <ref role="3cqZAo" node="1MyzK_lbZIh" resolve="fsProperties" />
                      </node>
                      <node concept="3TrEf2" id="MO4Jskx$5a" role="2OqNvi">
                        <ref role="3Tt5mk" to="w348:3v_Iv_IQMHe" />
                      </node>
                    </node>
                    <node concept="3w_OXm" id="MO4Jskx$5b" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="MO4Jskx$1V" role="3eO9$A">
                <node concept="2GrUjf" id="MO4Jskx$1W" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1MyzK_lcsAh" resolve="method" />
                </node>
                <node concept="1mIQ4w" id="MO4Jskx$1X" role="2OqNvi">
                  <node concept="chp4Y" id="MO4Jskx$1Y" role="cj9EA">
                    <ref role="cht4Q" to="w348:4kZc_K518eo" resolve="Pathway" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="MO4Jskx$sp" role="3eNLev">
              <node concept="3clFbS" id="MO4Jskx$sr" role="3eOfB_">
                <node concept="3clFbJ" id="MO4Jskx$Pq" role="3cqZAp">
                  <node concept="3clFbS" id="MO4Jskx$Pr" role="3clFbx">
                    <node concept="2MkqsV" id="MO4Jskx$Ps" role="3cqZAp">
                      <node concept="Xl_RD" id="MO4Jskx$Pt" role="2MkJ7o">
                        <property role="Xl_RC" value="Must expand, press enter" />
                      </node>
                      <node concept="37vLTw" id="MO4Jskx$Pu" role="2OEOjV">
                        <ref role="3cqZAo" node="1MyzK_ldupt" resolve="csProperties" />
                      </node>
                      <node concept="2OE7Q9" id="MO4Jskx$Pv" role="2OEWyd">
                        <ref role="2OEe5H" to="w348:4kZc_K5UDPk" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="MO4Jskx$Pw" role="3clFbw">
                    <node concept="2OqwBi" id="MO4Jskx$Px" role="2Oq$k0">
                      <node concept="37vLTw" id="MO4Jskx$Py" role="2Oq$k0">
                        <ref role="3cqZAo" node="1MyzK_ldupt" resolve="csProperties" />
                      </node>
                      <node concept="3TrEf2" id="MO4Jskx$Pz" role="2OqNvi">
                        <ref role="3Tt5mk" to="w348:4kZc_K5UDPk" />
                      </node>
                    </node>
                    <node concept="3w_OXm" id="MO4Jskx$P$" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="MO4Jskx$Mk" role="3eO9$A">
                <node concept="2GrUjf" id="MO4Jskx$Ml" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1MyzK_lcsAh" resolve="method" />
                </node>
                <node concept="1mIQ4w" id="MO4Jskx$Mm" role="2OqNvi">
                  <node concept="chp4Y" id="MO4Jskx$Mn" role="cj9EA">
                    <ref role="cht4Q" to="w348:6q92Kfr5JtA" resolve="SVM" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="MO4Jskx_cx" role="3eNLev">
              <node concept="3clFbS" id="MO4Jskx_cz" role="3eOfB_">
                <node concept="3clFbJ" id="MO4Jskx__N" role="3cqZAp">
                  <node concept="3clFbS" id="MO4Jskx__O" role="3clFbx">
                    <node concept="2MkqsV" id="MO4Jskx__P" role="3cqZAp">
                      <node concept="Xl_RD" id="MO4Jskx__Q" role="2MkJ7o">
                        <property role="Xl_RC" value="Must expand, press enter" />
                      </node>
                      <node concept="37vLTw" id="MO4Jskx__R" role="2OEOjV">
                        <ref role="3cqZAo" node="1MyzK_ldupt" resolve="csProperties" />
                      </node>
                      <node concept="2OE7Q9" id="MO4Jskx__S" role="2OEWyd">
                        <ref role="2OEe5H" to="w348:4kZc_K600g6" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="MO4Jskx__T" role="3clFbw">
                    <node concept="2OqwBi" id="MO4Jskx__U" role="2Oq$k0">
                      <node concept="37vLTw" id="MO4Jskx__V" role="2Oq$k0">
                        <ref role="3cqZAo" node="1MyzK_ldupt" resolve="csProperties" />
                      </node>
                      <node concept="3TrEf2" id="MO4Jskx__W" role="2OqNvi">
                        <ref role="3Tt5mk" to="w348:4kZc_K600g6" />
                      </node>
                    </node>
                    <node concept="3w_OXm" id="MO4Jskx__X" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="MO4Jskx_yH" role="3eO9$A">
                <node concept="2GrUjf" id="MO4Jskx_yI" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1MyzK_lcsAh" resolve="method" />
                </node>
                <node concept="1mIQ4w" id="MO4Jskx_yJ" role="2OqNvi">
                  <node concept="chp4Y" id="MO4Jskx_yK" role="cj9EA">
                    <ref role="cht4Q" to="w348:4kZc_KaSAzB" resolve="SVMTuneC" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="MO4Jskxurs" role="3clFbw">
              <node concept="2GrUjf" id="MO4Jskxurt" role="2Oq$k0">
                <ref role="2Gs0qQ" node="1MyzK_lcsAh" resolve="method" />
              </node>
              <node concept="1mIQ4w" id="MO4Jskxuru" role="2OqNvi">
                <node concept="chp4Y" id="MO4Jskxurv" role="cj9EA">
                  <ref role="cht4Q" to="w348:3a_GB3UphX2" resolve="SVMIterative" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1MyzK_lbQly" role="1YuTPh">
      <property role="TrG5h" value="approach" />
      <ref role="1YaFvo" to="w348:6q92Kfr5RCI" resolve="ModelingApproaches" />
    </node>
  </node>
  <node concept="18kY7G" id="1MyzK_le_1y">
    <property role="TrG5h" value="Directory_Names" />
    <node concept="3clFbS" id="1MyzK_le_1z" role="18ibNy">
      <node concept="3clFbJ" id="tvGbks7uhp" role="3cqZAp">
        <node concept="3clFbS" id="tvGbks7uhs" role="3clFbx">
          <node concept="3cpWs8" id="tvGbks5Rga" role="3cqZAp">
            <node concept="3cpWsn" id="tvGbks5Rgd" role="3cpWs9">
              <property role="TrG5h" value="invalidCharacter" />
              <node concept="10P_77" id="tvGbks5Rg8" role="1tU5fm" />
              <node concept="3clFbT" id="tvGbks5Rw$" role="33vP2m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="tvGbks5Qvv" role="3cqZAp">
            <node concept="2GrKxI" id="tvGbks5Qvx" role="2Gsz3X">
              <property role="TrG5h" value="letter" />
            </node>
            <node concept="2OqwBi" id="tvGbks5ZXI" role="2GsD0m">
              <node concept="2OqwBi" id="tvGbks5QGh" role="2Oq$k0">
                <node concept="1YBJjd" id="tvGbks5QD4" role="2Oq$k0">
                  <ref role="1YBMHb" node="1MyzK_le_20" resolve="project" />
                </node>
                <node concept="3TrcHB" id="tvGbks5QSt" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="liA8E" id="tvGbks60Zj" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~String.toCharArray():char[]" resolve="toCharArray" />
              </node>
            </node>
            <node concept="3clFbS" id="tvGbks5Qv_" role="2LFqv$">
              <node concept="3clFbF" id="tvGbks5RwP" role="3cqZAp">
                <node concept="37vLTI" id="tvGbks5RC8" role="3clFbG">
                  <node concept="37vLTw" id="tvGbks5RwO" role="37vLTJ">
                    <ref role="3cqZAo" node="tvGbks5Rgd" resolve="invalidCharacter" />
                  </node>
                  <node concept="22lmx$" id="tvGbks5S2$" role="37vLTx">
                    <node concept="37vLTw" id="tvGbks5RQe" role="3uHU7B">
                      <ref role="3cqZAo" node="tvGbks5Rgd" resolve="invalidCharacter" />
                    </node>
                    <node concept="1eOMI4" id="tvGbks5Tl0" role="3uHU7w">
                      <node concept="1Wc70l" id="tvGbks5VeX" role="1eOMHV">
                        <node concept="3fqX7Q" id="tvGbks5Vvl" role="3uHU7w">
                          <node concept="2YIFZM" id="tvGbks69Ax" role="3fr31v">
                            <ref role="1Pybhc" to="sdve:~StringUtils" resolve="StringUtils" />
                            <ref role="37wK5l" to="sdve:~StringUtils.containsAny(java.lang.String,java.lang.String):boolean" resolve="containsAny" />
                            <node concept="2YIFZM" id="tvGbks6aOX" role="37wK5m">
                              <ref role="37wK5l" to="e2lb:~String.valueOf(char):java.lang.String" resolve="valueOf" />
                              <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
                              <node concept="2GrUjf" id="tvGbks6b2T" role="37wK5m">
                                <ref role="2Gs0qQ" node="tvGbks5Qvx" resolve="letter" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="tvGbks69Az" role="37wK5m">
                              <property role="Xl_RC" value="_" />
                            </node>
                          </node>
                        </node>
                        <node concept="3fqX7Q" id="tvGbks5UQ1" role="3uHU7B">
                          <node concept="2YIFZM" id="tvGbks5UQ3" role="3fr31v">
                            <ref role="1Pybhc" to="sdve:~StringUtils" resolve="StringUtils" />
                            <ref role="37wK5l" to="sdve:~StringUtils.isAlphanumeric(java.lang.String):boolean" resolve="isAlphanumeric" />
                            <node concept="2YIFZM" id="tvGbks66wl" role="37wK5m">
                              <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
                              <ref role="37wK5l" to="e2lb:~String.valueOf(char):java.lang.String" resolve="valueOf" />
                              <node concept="2GrUjf" id="tvGbks67gE" role="37wK5m">
                                <ref role="2Gs0qQ" node="tvGbks5Qvx" resolve="letter" />
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
          <node concept="3clFbJ" id="tvGbks5zrU" role="3cqZAp">
            <node concept="3clFbS" id="tvGbks5zrX" role="3clFbx">
              <node concept="2MkqsV" id="tvGbks5AZj" role="3cqZAp">
                <node concept="Xl_RD" id="tvGbks5AZ_" role="2MkJ7o">
                  <property role="Xl_RC" value="Remove Special Characters from Project Name" />
                </node>
                <node concept="1YBJjd" id="tvGbks5CzZ" role="2OEOjV">
                  <ref role="1YBMHb" node="1MyzK_le_20" resolve="project" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="tvGbks6cu1" role="3clFbw">
              <ref role="3cqZAo" node="tvGbks5Rgd" resolve="invalidCharacter" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="tvGbks7v6D" role="3clFbw">
          <node concept="2OqwBi" id="tvGbks7u$q" role="2Oq$k0">
            <node concept="1YBJjd" id="tvGbks7ux_" role="2Oq$k0">
              <ref role="1YBMHb" node="1MyzK_le_20" resolve="project" />
            </node>
            <node concept="3TrcHB" id="tvGbks7uK6" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
          <node concept="17RvpY" id="tvGbks7vY1" role="2OqNvi" />
        </node>
      </node>
      <node concept="3clFbJ" id="1MyzK_le_2f" role="3cqZAp">
        <node concept="3clFbS" id="1MyzK_le_2g" role="3clFbx">
          <node concept="2MkqsV" id="1MyzK_leBbw" role="3cqZAp">
            <node concept="Xl_RD" id="1MyzK_leBbM" role="2MkJ7o">
              <property role="Xl_RC" value="Remove White Spaces From Project Name" />
            </node>
            <node concept="1YBJjd" id="1MyzK_leBgG" role="2OEOjV">
              <ref role="1YBMHb" node="1MyzK_le_20" resolve="project" />
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="tvGbks5A$o" role="3clFbw">
          <node concept="2OqwBi" id="1MyzK_leAdR" role="3uHU7w">
            <node concept="2OqwBi" id="1MyzK_le_hy" role="2Oq$k0">
              <node concept="1YBJjd" id="1MyzK_le_cy" role="2Oq$k0">
                <ref role="1YBMHb" node="1MyzK_le_20" resolve="project" />
              </node>
              <node concept="3TrcHB" id="1MyzK_le_S3" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="liA8E" id="1MyzK_leB38" role="2OqNvi">
              <ref role="37wK5l" to="e2lb:~String.matches(java.lang.String):boolean" resolve="matches" />
              <node concept="Xl_RD" id="1MyzK_leSFx" role="37wK5m">
                <property role="Xl_RC" value=".*\\s+.*" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4jYB9sy9QQY" role="3uHU7B">
            <node concept="2OqwBi" id="4jYB9sy9QgL" role="2Oq$k0">
              <node concept="1YBJjd" id="4jYB9sy9Qb7" role="2Oq$k0">
                <ref role="1YBMHb" node="1MyzK_le_20" resolve="project" />
              </node>
              <node concept="3TrcHB" id="4jYB9sy9QsP" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="17RvpY" id="4jYB9sy9RJg" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="1MyzK_leBlV" role="3cqZAp">
        <node concept="3clFbS" id="1MyzK_leBlY" role="3clFbx">
          <node concept="2MkqsV" id="1MyzK_leDQt" role="3cqZAp">
            <node concept="Xl_RD" id="1MyzK_leDQJ" role="2MkJ7o">
              <property role="Xl_RC" value="Remove White Spaces From Directory Name" />
            </node>
            <node concept="2OqwBi" id="1MyzK_leDWo" role="2OEOjV">
              <node concept="1YBJjd" id="1MyzK_leDUl" role="2Oq$k0">
                <ref role="1YBMHb" node="1MyzK_le_20" resolve="project" />
              </node>
              <node concept="3TrEf2" id="1MyzK_leE7U" role="2OqNvi">
                <ref role="3Tt5mk" to="w348:69ees3tIP8T" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="4jYB9sy9RNV" role="3clFbw">
          <node concept="2OqwBi" id="4jYB9sy9Tup" role="3uHU7B">
            <node concept="2OqwBi" id="4jYB9sy9SOq" role="2Oq$k0">
              <node concept="2OqwBi" id="4jYB9sy9RVW" role="2Oq$k0">
                <node concept="1YBJjd" id="4jYB9sy9RT3" role="2Oq$k0">
                  <ref role="1YBMHb" node="1MyzK_le_20" resolve="project" />
                </node>
                <node concept="3TrEf2" id="4jYB9sy9SmM" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:69ees3tIP8T" />
                </node>
              </node>
              <node concept="3TrcHB" id="4jYB9sy9T9E" role="2OqNvi">
                <ref role="3TsBF5" to="w348:2BpIVDBYfrR" resolve="directoryName" />
              </node>
            </node>
            <node concept="17RvpY" id="4jYB9sy9VZB" role="2OqNvi" />
          </node>
          <node concept="2OqwBi" id="1MyzK_leCTz" role="3uHU7w">
            <node concept="2OqwBi" id="1MyzK_leCnk" role="2Oq$k0">
              <node concept="2OqwBi" id="1MyzK_leBta" role="2Oq$k0">
                <node concept="1YBJjd" id="1MyzK_leBqR" role="2Oq$k0">
                  <ref role="1YBMHb" node="1MyzK_le_20" resolve="project" />
                </node>
                <node concept="3TrEf2" id="1MyzK_leCaK" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:69ees3tIP8T" />
                </node>
              </node>
              <node concept="3TrcHB" id="1MyzK_leCBD" role="2OqNvi">
                <ref role="3TsBF5" to="w348:2BpIVDBYfrR" resolve="directoryName" />
              </node>
            </node>
            <node concept="liA8E" id="1MyzK_leTKo" role="2OqNvi">
              <ref role="37wK5l" to="e2lb:~String.matches(java.lang.String):boolean" resolve="matches" />
              <node concept="Xl_RD" id="1MyzK_leTMa" role="37wK5m">
                <property role="Xl_RC" value=".*\\s+.*" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1MyzK_le_20" role="1YuTPh">
      <property role="TrG5h" value="project" />
      <ref role="1YaFvo" to="w348:2UUqZtvS4$K" resolve="Project" />
    </node>
  </node>
</model>

