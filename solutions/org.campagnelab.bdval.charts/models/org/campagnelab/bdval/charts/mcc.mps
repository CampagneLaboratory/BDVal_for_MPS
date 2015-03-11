<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fd287fb3-5cb6-4a4c-87db-faf1c4bce228(org.campagnelab.bdval.charts.mcc)">
  <persistence version="9" />
  <languages>
    <use id="5ec1cd3d-0a50-4049-a8fa-ae768d7baa25" name="org.campagnelab.mps.XChart" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
  </languages>
  <imports>
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="r80k" ref="f:java_stub#5ec1cd3d-0a50-4049-a8fa-ae768d7baa25#com.xeiam.xchart(org.campagnelab.mps.XChart/com.xeiam.xchart@java_stub)" />
    <import index="k7g3" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" />
    <import index="986b" ref="r:ec296f40-f73d-425d-b0d7-375a081142e4(org.campagnelab.mps.XChart.helpers)" />
    <import index="dbrf" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#javax.swing(JDK/javax.swing@java_stub)" />
    <import index="1t7x" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.awt(JDK/java.awt@java_stub)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
      </concept>
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="5ec1cd3d-0a50-4049-a8fa-ae768d7baa25" name="org.campagnelab.mps.XChart">
      <concept id="5270176140464602975" name="org.campagnelab.mps.XChart.structure.Page" flags="ng" index="2X0H8p">
        <child id="5270176140464602976" name="charts" index="2X0H8A" />
        <child id="5270176140465128127" name="columns" index="2X2EZT" />
      </concept>
      <concept id="5270176140465521300" name="org.campagnelab.mps.XChart.structure.FileRef" flags="ng" index="2X3aZi">
        <reference id="5270176140465524721" name="file" index="2X3aaR" />
        <child id="5270176140464602978" name="selectedColumns" index="2X0H8$" />
      </concept>
      <concept id="2202909375770356843" name="org.campagnelab.mps.XChart.structure.Chart" flags="ng" index="31Ii8c">
        <child id="7263499363579346634" name="style" index="1$ChNU" />
        <child id="6638345083849920387" name="dataSeries" index="3RtuKH" />
      </concept>
      <concept id="2202909375770410339" name="org.campagnelab.mps.XChart.structure.Histogram" flags="ng" index="31JBc4" />
      <concept id="2202909375770430359" name="org.campagnelab.mps.XChart.structure.DataFile" flags="ng" index="31JGnK">
        <property id="2202909375770434162" name="path" index="31JHgl" />
        <child id="2202909375770434164" name="columns" index="31JHgj" />
      </concept>
      <concept id="2202909375770430354" name="org.campagnelab.mps.XChart.structure.DelimitedFile" flags="ng" index="31JGnP">
        <property id="2202909375770898234" name="delimitor" index="31Cu5t" />
      </concept>
      <concept id="2202909375770435040" name="org.campagnelab.mps.XChart.structure.ColumnToDoubles" flags="ng" index="31JHe7">
        <reference id="2202909375770435043" name="column" index="31JHe4" />
        <reference id="2202909375770440403" name="file" index="31JJMO" />
      </concept>
      <concept id="2202909375770434159" name="org.campagnelab.mps.XChart.structure.Column" flags="ng" index="31JHg8" />
      <concept id="3597430320022583657" name="org.campagnelab.mps.XChart.structure.Tsvfile" flags="ng" index="3oLHET" />
      <concept id="7263499363579346599" name="org.campagnelab.mps.XChart.structure.ChartStyle" flags="ng" index="1$ChMn">
        <property id="5270176140465640107" name="height" index="2X4JZH" />
        <property id="5270176140465640105" name="width" index="2X4JZJ" />
        <property id="7263499363579462027" name="xAxisLabel" index="1$CMeV" />
        <property id="7263499363579462031" name="yAxisLabel" index="1$CMeZ" />
        <property id="6638345083846441451" name="title" index="3R09D5" />
      </concept>
      <concept id="6638345083850864456" name="org.campagnelab.mps.XChart.structure.DoublesReference" flags="ng" index="3Rh1jA">
        <reference id="6638345083850864457" name="doubles" index="3Rh1jB" />
      </concept>
      <concept id="6638345083849920489" name="org.campagnelab.mps.XChart.structure.DataSeries" flags="ng" index="3RtuL7">
        <child id="6638345083850864451" name="values" index="3Rh1jH" />
      </concept>
    </language>
  </registry>
  <node concept="3oLHET" id="3U_CVdMeQEI">
    <property role="31Cu5t" value="&#9;" />
    <property role="TrG5h" value="20140814-1710-restat-maqcii-submission.txt" />
    <property role="31JHgl" value="/Users/vmb34/Desktop/8-14/test2/20140814-1622-results/20140814-1710-restat-maqcii-submission.txt" />
    <node concept="31JHg8" id="6xChyvm8Kzu" role="31JHgj">
      <property role="TrG5h" value="OrganizationCode" />
    </node>
    <node concept="31JHg8" id="6xChyvm8Kzv" role="31JHgj">
      <property role="TrG5h" value="DatasetCode" />
    </node>
    <node concept="31JHg8" id="6xChyvm8Kzw" role="31JHgj">
      <property role="TrG5h" value="EndpointCode" />
    </node>
    <node concept="31JHg8" id="6xChyvm8Kzx" role="31JHgj">
      <property role="TrG5h" value="ExcelColumnHeader" />
    </node>
    <node concept="31JHg8" id="6xChyvm8Kzy" role="31JHgj">
      <property role="TrG5h" value="MCC" />
    </node>
    <node concept="31JHg8" id="6xChyvm8Kzz" role="31JHgj">
      <property role="TrG5h" value="Accuracy" />
    </node>
    <node concept="31JHg8" id="6xChyvm8Kz$" role="31JHgj">
      <property role="TrG5h" value="Sensitivity" />
    </node>
    <node concept="31JHg8" id="6xChyvm8Kz_" role="31JHgj">
      <property role="TrG5h" value="Specificity" />
    </node>
    <node concept="31JHg8" id="6xChyvm8KzA" role="31JHgj">
      <property role="TrG5h" value="AUC" />
    </node>
    <node concept="31JHg8" id="6xChyvm8KzB" role="31JHgj">
      <property role="TrG5h" value="RMSE" />
    </node>
    <node concept="31JHg8" id="6xChyvm8KzC" role="31JHgj">
      <property role="TrG5h" value="MCC_StdDev" />
    </node>
    <node concept="31JHg8" id="6xChyvm8KzD" role="31JHgj">
      <property role="TrG5h" value="Accuracy_StdDev" />
    </node>
    <node concept="31JHg8" id="6xChyvm8KzE" role="31JHgj">
      <property role="TrG5h" value="Sensitivity_StdDev" />
    </node>
    <node concept="31JHg8" id="6xChyvm8KzF" role="31JHgj">
      <property role="TrG5h" value="Specificity_StdDev" />
    </node>
    <node concept="31JHg8" id="6xChyvm8KzG" role="31JHgj">
      <property role="TrG5h" value="AUC_StdDev" />
    </node>
    <node concept="31JHg8" id="6xChyvm8KzH" role="31JHgj">
      <property role="TrG5h" value="RMSE_StdDev" />
    </node>
    <node concept="31JHg8" id="6xChyvm8KzI" role="31JHgj">
      <property role="TrG5h" value="SummaryNormalization" />
    </node>
    <node concept="31JHg8" id="6xChyvm8KzJ" role="31JHgj">
      <property role="TrG5h" value="FeatureSelectionMethod" />
    </node>
    <node concept="31JHg8" id="6xChyvm8KzK" role="31JHgj">
      <property role="TrG5h" value="NumberOfFeatureUsed" />
    </node>
    <node concept="31JHg8" id="6xChyvm8KzL" role="31JHgj">
      <property role="TrG5h" value="ClassificationAlgorithm" />
    </node>
    <node concept="31JHg8" id="6xChyvm8KzM" role="31JHgj">
      <property role="TrG5h" value="BatchEffectRemovalMethod" />
    </node>
    <node concept="31JHg8" id="6xChyvm8KzN" role="31JHgj">
      <property role="TrG5h" value="InternalValidation" />
    </node>
    <node concept="31JHg8" id="6xChyvm8KzO" role="31JHgj">
      <property role="TrG5h" value="ValidationIterations" />
    </node>
    <node concept="31JHg8" id="6xChyvm8KzP" role="31JHgj">
      <property role="TrG5h" value="ModelId" />
    </node>
    <node concept="31JHg8" id="6xChyvm8KzQ" role="31JHgj">
      <property role="TrG5h" value="Model-Series-Id" />
    </node>
    <node concept="31JHg8" id="6xChyvm8KzR" role="31JHgj">
      <property role="TrG5h" value="Label" />
    </node>
    <node concept="31JHg8" id="6xChyvm8KzS" role="31JHgj">
      <property role="TrG5h" value="combinedPerformance" />
    </node>
    <node concept="31JHg8" id="6xChyvm8KzT" role="31JHgj">
      <property role="TrG5h" value="bias" />
    </node>
    <node concept="31JHg8" id="6xChyvm8KzU" role="31JHgj">
      <property role="TrG5h" value="bias_StdDev" />
    </node>
  </node>
  <node concept="2X0H8p" id="3U_CVdMeQHn">
    <property role="TrG5h" value="Charts" />
    <node concept="31JBc4" id="3U_CVdMeQHR" role="2X0H8A">
      <node concept="1$ChMn" id="3U_CVdMeQHS" role="1$ChNU">
        <property role="2X4JZJ" value="350" />
        <property role="2X4JZH" value="250" />
        <property role="3R09D5" value="Cross Validation AUC" />
        <property role="TrG5h" value="AUC" />
        <property role="1$CMeV" value="AUC" />
        <property role="1$CMeZ" value=" " />
      </node>
      <node concept="3RtuL7" id="3U_CVdMeQHT" role="3RtuKH">
        <property role="TrG5h" value="data" />
        <node concept="3Rh1jA" id="3U_CVdMeQHU" role="3Rh1jH">
          <property role="TrG5h" value="x" />
          <ref role="3Rh1jB" node="3U_CVdMeQHq" resolve="AUC" />
        </node>
      </node>
    </node>
    <node concept="2X3aZi" id="3U_CVdMeQHo" role="2X2EZT">
      <ref role="2X3aaR" node="3U_CVdMeQEI" resolve="20140814-1710-restat-maqcii-submission.txt" />
      <node concept="31JHe7" id="3U_CVdMeQHq" role="2X0H8$">
        <property role="TrG5h" value="AUC" />
        <ref role="31JJMO" node="3U_CVdMeQEI" resolve="20140814-1710-restat-maqcii-submission.txt" />
        <ref role="31JHe4" node="6xChyvm8KzA" resolve="AUC" />
      </node>
      <node concept="31JHe7" id="3U_CVdMeQHw" role="2X0H8$">
        <property role="TrG5h" value="MCC" />
        <ref role="31JJMO" node="3U_CVdMeQEI" resolve="20140814-1710-restat-maqcii-submission.txt" />
        <ref role="31JHe4" node="6xChyvm8Kzy" resolve="MCC" />
      </node>
    </node>
    <node concept="31JBc4" id="3U_CVdMeQHz" role="2X0H8A">
      <node concept="1$ChMn" id="3U_CVdMeQH$" role="1$ChNU">
        <property role="2X4JZJ" value="350" />
        <property role="2X4JZH" value="250" />
        <property role="3R09D5" value="Cross Validation MCC" />
        <property role="TrG5h" value="MCC" />
        <property role="1$CMeV" value="MCC" />
        <property role="1$CMeZ" value=" " />
      </node>
      <node concept="3RtuL7" id="3U_CVdMeQH_" role="3RtuKH">
        <property role="TrG5h" value="data" />
        <node concept="3Rh1jA" id="3U_CVdMeQHA" role="3Rh1jH">
          <property role="TrG5h" value="x" />
          <ref role="3Rh1jB" node="3U_CVdMeQHw" resolve="MCC" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3U_CVdMeRwq">
    <property role="TrG5h" value="ChartViewer_Charts" />
    <property role="2bfB8j" value="true" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="3U_CVdMeRws" role="1B3o_S" />
    <node concept="2YIFZL" id="3U_CVdMeRwt" role="jymVt">
      <property role="TrG5h" value="buildCharts" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="3U_CVdMeRwu" role="3clF46">
        <property role="TrG5h" value="filenames" />
        <property role="3TUv4t" value="false" />
        <node concept="8X2XB" id="3U_CVdMeRww" role="1tU5fm">
          <node concept="3uibUv" id="3U_CVdMeRwv" role="8Xvag">
            <ref role="3uigEE" to="e2lb:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3U_CVdMeRwx" role="3clF47">
        <node concept="3cpWs8" id="3U_CVdMeRwz" role="3cqZAp">
          <node concept="3cpWsn" id="3U_CVdMeRwy" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="charts" />
            <node concept="3uibUv" id="3U_CVdMeRw$" role="1tU5fm">
              <ref role="3uigEE" to="k7g3:~ArrayList" resolve="ArrayList" />
              <node concept="3uibUv" id="3U_CVdMeRw_" role="11_B2D">
                <ref role="3uigEE" to="r80k:~Chart" resolve="Chart" />
              </node>
            </node>
            <node concept="2ShNRf" id="3U_CVdMeR_d" role="33vP2m">
              <node concept="1pGfFk" id="3U_CVdMeR_e" role="2ShVmc">
                <ref role="37wK5l" to="k7g3:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="3U_CVdMeRwB" role="1pMfVU">
                  <ref role="3uigEE" to="r80k:~Chart" resolve="Chart" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3U_CVdMeRwD" role="3cqZAp">
          <node concept="3cpWsn" id="3U_CVdMeRwC" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="filenameIndex" />
            <node concept="10Oyi0" id="3U_CVdMeRwE" role="1tU5fm" />
            <node concept="3cmrfG" id="3U_CVdMeRwF" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3U_CVdMeRwH" role="3cqZAp">
          <node concept="3cpWsn" id="3U_CVdMeRwG" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="numCharts" />
            <node concept="10Oyi0" id="3U_CVdMeRwI" role="1tU5fm" />
            <node concept="3cmrfG" id="3U_CVdMeRwJ" role="33vP2m">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="3U_CVdMeRwK" role="3cqZAp">
          <node concept="3clFbS" id="3U_CVdMeRwL" role="9aQI4">
            <node concept="3cpWs8" id="3U_CVdMeRwN" role="3cqZAp">
              <node concept="3cpWsn" id="3U_CVdMeRwM" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="chart" />
                <node concept="3uibUv" id="3U_CVdMeRwO" role="1tU5fm">
                  <ref role="3uigEE" to="r80k:~Chart" resolve="Chart" />
                </node>
                <node concept="10Nm6u" id="3U_CVdMeRwP" role="33vP2m" />
              </node>
            </node>
            <node concept="3cpWs8" id="3U_CVdMeRwR" role="3cqZAp">
              <node concept="3cpWsn" id="3U_CVdMeRwQ" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="filename" />
                <node concept="3uibUv" id="3U_CVdMeRwS" role="1tU5fm">
                  <ref role="3uigEE" to="e2lb:~String" resolve="String" />
                </node>
                <node concept="AH0OO" id="3U_CVdMeRwT" role="33vP2m">
                  <node concept="37vLTw" id="3U_CVdMeRwU" role="AHHXb">
                    <ref role="3cqZAo" node="3U_CVdMeRwu" resolve="filenames" />
                  </node>
                  <node concept="37vLTw" id="3U_CVdMeRwV" role="AHEQo">
                    <ref role="3cqZAo" node="3U_CVdMeRwC" resolve="filenameIndex" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="3U_CVdMeRwW" role="3cqZAp">
              <node concept="3clFbS" id="3U_CVdMeRwX" role="9aQI4">
                <node concept="3SKdUt" id="3U_CVdMeR_6" role="3cqZAp">
                  <node concept="3SKdUq" id="3U_CVdMeR_5" role="3SKWNk">
                    <property role="3SKdUp" value="Histogram BarChart " />
                  </node>
                </node>
                <node concept="3clFbF" id="3U_CVdMiRO_" role="3cqZAp">
                  <node concept="37vLTI" id="3U_CVdMiROA" role="3clFbG">
                    <node concept="2OqwBi" id="3U_CVdMiROB" role="37vLTx">
                      <node concept="2OqwBi" id="3U_CVdMiROC" role="2Oq$k0">
                        <node concept="2OqwBi" id="3U_CVdMiROD" role="2Oq$k0">
                          <node concept="2OqwBi" id="3U_CVdMiROE" role="2Oq$k0">
                            <node concept="2OqwBi" id="3U_CVdMiROF" role="2Oq$k0">
                              <node concept="2OqwBi" id="3U_CVdMiROG" role="2Oq$k0">
                                <node concept="2OqwBi" id="3U_CVdMiROH" role="2Oq$k0">
                                  <node concept="2OqwBi" id="3U_CVdMiROI" role="2Oq$k0">
                                    <node concept="2ShNRf" id="3U_CVdMiROJ" role="2Oq$k0">
                                      <node concept="1pGfFk" id="3U_CVdMiROK" role="2ShVmc">
                                        <ref role="37wK5l" to="r80k:~ChartBuilder.&lt;init&gt;()" resolve="ChartBuilder" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="3U_CVdMiROL" role="2OqNvi">
                                      <ref role="37wK5l" to="r80k:~ChartBuilder.chartType(com.xeiam.xchart.StyleManager$ChartType):com.xeiam.xchart.ChartBuilder" resolve="chartType" />
                                      <node concept="Rm8GO" id="3U_CVdMiROM" role="37wK5m">
                                        <ref role="1Px2BO" to="r80k:~StyleManager$ChartType" resolve="StyleManager.ChartType" />
                                        <ref role="Rm8GQ" to="r80k:~StyleManager$ChartType.Bar" resolve="Bar" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="3U_CVdMiRON" role="2OqNvi">
                                    <ref role="37wK5l" to="r80k:~ChartBuilder.width(int):com.xeiam.xchart.ChartBuilder" resolve="width" />
                                    <node concept="3cmrfG" id="3U_CVdMiROO" role="37wK5m">
                                      <property role="3cmrfH" value="350" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="3U_CVdMiROP" role="2OqNvi">
                                  <ref role="37wK5l" to="r80k:~ChartBuilder.height(int):com.xeiam.xchart.ChartBuilder" resolve="height" />
                                  <node concept="3cmrfG" id="3U_CVdMiROQ" role="37wK5m">
                                    <property role="3cmrfH" value="250" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="3U_CVdMiROR" role="2OqNvi">
                                <ref role="37wK5l" to="r80k:~ChartBuilder.theme(com.xeiam.xchart.StyleManager$ChartTheme):com.xeiam.xchart.ChartBuilder" resolve="theme" />
                                <node concept="Rm8GO" id="3U_CVdMiROS" role="37wK5m">
                                  <ref role="Rm8GQ" to="r80k:~StyleManager$ChartTheme.GGPlot2" resolve="GGPlot2" />
                                  <ref role="1Px2BO" to="r80k:~StyleManager$ChartTheme" resolve="StyleManager.ChartTheme" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="3U_CVdMiROT" role="2OqNvi">
                              <ref role="37wK5l" to="r80k:~ChartBuilder.title(java.lang.String):com.xeiam.xchart.ChartBuilder" resolve="title" />
                              <node concept="Xl_RD" id="3U_CVdMiROU" role="37wK5m">
                                <property role="Xl_RC" value="Cross Validation AUC" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="3U_CVdMiROV" role="2OqNvi">
                            <ref role="37wK5l" to="r80k:~ChartBuilder.xAxisTitle(java.lang.String):com.xeiam.xchart.ChartBuilder" resolve="xAxisTitle" />
                            <node concept="Xl_RD" id="3U_CVdMiROW" role="37wK5m">
                              <property role="Xl_RC" value="AUC" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="3U_CVdMiROX" role="2OqNvi">
                          <ref role="37wK5l" to="r80k:~ChartBuilder.yAxisTitle(java.lang.String):com.xeiam.xchart.ChartBuilder" resolve="yAxisTitle" />
                          <node concept="Xl_RD" id="3U_CVdMiROY" role="37wK5m">
                            <property role="Xl_RC" value="" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="3U_CVdMiROZ" role="2OqNvi">
                        <ref role="37wK5l" to="r80k:~ChartBuilder.build():com.xeiam.xchart.Chart" resolve="build" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3U_CVdMiRP0" role="37vLTJ">
                      <ref role="3cqZAo" node="3U_CVdMeRwM" resolve="chart" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3U_CVdMeRxp" role="3cqZAp">
                  <node concept="2OqwBi" id="3U_CVdMeRxq" role="3clFbG">
                    <node concept="2OqwBi" id="3U_CVdMeR_k" role="2Oq$k0">
                      <node concept="37vLTw" id="3U_CVdMeR_j" role="2Oq$k0">
                        <ref role="3cqZAo" node="3U_CVdMeRwM" resolve="chart" />
                      </node>
                      <node concept="liA8E" id="3U_CVdMeR_l" role="2OqNvi">
                        <ref role="37wK5l" to="r80k:~Chart.getStyleManager():com.xeiam.xchart.StyleManager" resolve="getStyleManager" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3U_CVdMeRxs" role="2OqNvi">
                      <ref role="37wK5l" to="r80k:~StyleManager.setLegendVisible(boolean):void" resolve="setLegendVisible" />
                      <node concept="3clFbT" id="3U_CVdMeRxt" role="37wK5m">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3U_CVdMiXDP" role="3cqZAp">
                  <node concept="2OqwBi" id="3U_CVdMiXDQ" role="3clFbG">
                    <node concept="2OqwBi" id="3U_CVdMiXDR" role="2Oq$k0">
                      <node concept="37vLTw" id="3U_CVdMiXDS" role="2Oq$k0">
                        <ref role="3cqZAo" node="3U_CVdMeRwM" resolve="chart" />
                      </node>
                      <node concept="liA8E" id="3U_CVdMiXDT" role="2OqNvi">
                        <ref role="37wK5l" to="r80k:~Chart.getStyleManager():com.xeiam.xchart.StyleManager" resolve="getStyleManager" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3U_CVdMiXDU" role="2OqNvi">
                      <ref role="37wK5l" to="r80k:~StyleManager.setLegendPosition(com.xeiam.xchart.StyleManager$LegendPosition):void" resolve="setLegendPosition" />
                      <node concept="Rm8GO" id="3U_CVdMiXDV" role="37wK5m">
                        <ref role="1Px2BO" to="r80k:~StyleManager$LegendPosition" resolve="StyleManager.LegendPosition" />
                        <ref role="Rm8GQ" to="r80k:~StyleManager$LegendPosition.InsideN" resolve="InsideN" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3U_CVdMeRx$" role="3cqZAp">
                  <node concept="3cpWsn" id="3U_CVdMeRxz" role="3cpWs9">
                    <property role="3TUv4t" value="false" />
                    <property role="TrG5h" value="x" />
                    <node concept="3uibUv" id="3U_CVdMeRx_" role="1tU5fm">
                      <ref role="3uigEE" to="k7g3:~ArrayList" resolve="ArrayList" />
                      <node concept="3uibUv" id="3U_CVdMeRxA" role="11_B2D">
                        <ref role="3uigEE" to="e2lb:~Double" resolve="Double" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="3U_CVdMeR_r" role="33vP2m">
                      <node concept="1pGfFk" id="3U_CVdMeR_s" role="2ShVmc">
                        <ref role="37wK5l" to="k7g3:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                        <node concept="3uibUv" id="3U_CVdMeRxC" role="1pMfVU">
                          <ref role="3uigEE" to="e2lb:~Double" resolve="Double" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3U_CVdMeRxE" role="3cqZAp">
                  <node concept="3cpWsn" id="3U_CVdMeRxD" role="3cpWs9">
                    <property role="3TUv4t" value="false" />
                    <property role="TrG5h" value="y" />
                    <node concept="3uibUv" id="3U_CVdMeRxF" role="1tU5fm">
                      <ref role="3uigEE" to="k7g3:~ArrayList" resolve="ArrayList" />
                      <node concept="3uibUv" id="3U_CVdMeRxG" role="11_B2D">
                        <ref role="3uigEE" to="e2lb:~Double" resolve="Double" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="3U_CVdMeR_t" role="33vP2m">
                      <node concept="1pGfFk" id="3U_CVdMeR_u" role="2ShVmc">
                        <ref role="37wK5l" to="k7g3:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                        <node concept="3uibUv" id="3U_CVdMeRxI" role="1pMfVU">
                          <ref role="3uigEE" to="e2lb:~Double" resolve="Double" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3U_CVdMiZ5D" role="3cqZAp">
                  <node concept="3cpWsn" id="3U_CVdMiZ5E" role="3cpWs9">
                    <property role="TrG5h" value="doubles" />
                    <node concept="10Q1$e" id="3U_CVdMiZ5F" role="1tU5fm">
                      <node concept="10P55v" id="3U_CVdMiZ5G" role="10Q1$1" />
                    </node>
                    <node concept="2YIFZM" id="3U_CVdMiZ5H" role="33vP2m">
                      <ref role="37wK5l" to="986b:7XxitGzdaOG" resolve="load" />
                      <ref role="1Pybhc" to="986b:7XxitGzdaOF" resolve="ColumnLoader" />
                      <node concept="37vLTw" id="3U_CVdMiZ5I" role="37wK5m">
                        <ref role="3cqZAo" node="3U_CVdMeRwQ" resolve="filename" />
                      </node>
                      <node concept="Xl_RD" id="3U_CVdMiZ5J" role="37wK5m">
                        <property role="Xl_RC" value="AUC" />
                      </node>
                      <node concept="Xl_RD" id="3U_CVdMiZ5K" role="37wK5m">
                        <property role="Xl_RC" value="\t" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3U_CVdMiZ5L" role="3cqZAp">
                  <node concept="2YIFZM" id="3U_CVdMiZ5M" role="3clFbG">
                    <ref role="1Pybhc" to="986b:7XxitGzdaLC" resolve="BinHelper" />
                    <ref role="37wK5l" to="986b:7XxitGzdaNa" resolve="bin" />
                    <node concept="37vLTw" id="3U_CVdMiZ5N" role="37wK5m">
                      <ref role="3cqZAo" node="3U_CVdMiZ5E" resolve="doubles" />
                    </node>
                    <node concept="37vLTw" id="3U_CVdMiZ5O" role="37wK5m">
                      <ref role="3cqZAo" node="3U_CVdMeRxz" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="3U_CVdMiZ5P" role="37wK5m">
                      <ref role="3cqZAo" node="3U_CVdMeRxD" resolve="y" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3U_CVdMeRxW" role="3cqZAp">
                  <node concept="2OqwBi" id="3U_CVdMeR_z" role="3clFbG">
                    <node concept="37vLTw" id="3U_CVdMeR_y" role="2Oq$k0">
                      <ref role="3cqZAo" node="3U_CVdMeRwM" resolve="chart" />
                    </node>
                    <node concept="liA8E" id="3U_CVdMeR_$" role="2OqNvi">
                      <ref role="37wK5l" to="r80k:~Chart.addSeries(java.lang.String,java.util.Collection,java.util.Collection):com.xeiam.xchart.Series" resolve="addSeries" />
                      <node concept="Xl_RD" id="3U_CVdMeR__" role="37wK5m">
                        <property role="Xl_RC" value="series" />
                      </node>
                      <node concept="37vLTw" id="3U_CVdMeR_A" role="37wK5m">
                        <ref role="3cqZAo" node="3U_CVdMeRxz" resolve="x" />
                      </node>
                      <node concept="37vLTw" id="3U_CVdMeR_B" role="37wK5m">
                        <ref role="3cqZAo" node="3U_CVdMeRxD" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3U_CVdMeRy1" role="3cqZAp">
              <node concept="3y3z36" id="3U_CVdMeRy2" role="3clFbw">
                <node concept="37vLTw" id="3U_CVdMeRy3" role="3uHU7B">
                  <ref role="3cqZAo" node="3U_CVdMeRwM" resolve="chart" />
                </node>
                <node concept="10Nm6u" id="3U_CVdMeRy4" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="3U_CVdMeRy6" role="3clFbx">
                <node concept="3clFbF" id="3U_CVdMeRy7" role="3cqZAp">
                  <node concept="2OqwBi" id="3U_CVdMeR_E" role="3clFbG">
                    <node concept="37vLTw" id="3U_CVdMeR_D" role="2Oq$k0">
                      <ref role="3cqZAo" node="3U_CVdMeRwy" resolve="charts" />
                    </node>
                    <node concept="liA8E" id="3U_CVdMeR_F" role="2OqNvi">
                      <ref role="37wK5l" to="k7g3:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                      <node concept="37vLTw" id="3U_CVdMeR_G" role="37wK5m">
                        <ref role="3cqZAo" node="3U_CVdMeRwM" resolve="chart" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3U_CVdMeRya" role="3cqZAp">
              <node concept="3uNrnE" id="3U_CVdMeRyb" role="3clFbG">
                <node concept="37vLTw" id="3U_CVdMeRyc" role="2$L3a6">
                  <ref role="3cqZAo" node="3U_CVdMeRwC" resolve="filenameIndex" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3U_CVdMeRyd" role="3cqZAp">
              <node concept="3clFbC" id="3U_CVdMeRye" role="3clFbw">
                <node concept="37vLTw" id="3U_CVdMeRyf" role="3uHU7B">
                  <ref role="3cqZAo" node="3U_CVdMeRwC" resolve="filenameIndex" />
                </node>
                <node concept="37vLTw" id="3U_CVdMeRyg" role="3uHU7w">
                  <ref role="3cqZAo" node="3U_CVdMeRwG" resolve="numCharts" />
                </node>
              </node>
              <node concept="3clFbS" id="3U_CVdMeRyi" role="3clFbx">
                <node concept="3clFbF" id="3U_CVdMeRyj" role="3cqZAp">
                  <node concept="37vLTI" id="3U_CVdMeRyk" role="3clFbG">
                    <node concept="37vLTw" id="3U_CVdMeRyl" role="37vLTJ">
                      <ref role="3cqZAo" node="3U_CVdMeRwC" resolve="filenameIndex" />
                    </node>
                    <node concept="3cmrfG" id="3U_CVdMeRym" role="37vLTx">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="3U_CVdMeRyn" role="3cqZAp">
          <node concept="3clFbS" id="3U_CVdMeRyo" role="9aQI4">
            <node concept="3cpWs8" id="3U_CVdMeRyq" role="3cqZAp">
              <node concept="3cpWsn" id="3U_CVdMeRyp" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="chart" />
                <node concept="3uibUv" id="3U_CVdMeRyr" role="1tU5fm">
                  <ref role="3uigEE" to="r80k:~Chart" resolve="Chart" />
                </node>
                <node concept="10Nm6u" id="3U_CVdMeRys" role="33vP2m" />
              </node>
            </node>
            <node concept="3cpWs8" id="3U_CVdMeRyu" role="3cqZAp">
              <node concept="3cpWsn" id="3U_CVdMeRyt" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="filename" />
                <node concept="3uibUv" id="3U_CVdMeRyv" role="1tU5fm">
                  <ref role="3uigEE" to="e2lb:~String" resolve="String" />
                </node>
                <node concept="AH0OO" id="3U_CVdMeRyw" role="33vP2m">
                  <node concept="37vLTw" id="3U_CVdMeRyx" role="AHHXb">
                    <ref role="3cqZAo" node="3U_CVdMeRwu" resolve="filenames" />
                  </node>
                  <node concept="37vLTw" id="3U_CVdMeRyy" role="AHEQo">
                    <ref role="3cqZAo" node="3U_CVdMeRwC" resolve="filenameIndex" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="3U_CVdMeRyz" role="3cqZAp">
              <node concept="3clFbS" id="3U_CVdMeRy$" role="9aQI4">
                <node concept="3SKdUt" id="3U_CVdMeR_8" role="3cqZAp">
                  <node concept="3SKdUq" id="3U_CVdMeR_7" role="3SKWNk">
                    <property role="3SKdUp" value="Histogram BarChart " />
                  </node>
                </node>
                <node concept="3clFbF" id="3U_CVdMifbG" role="3cqZAp">
                  <node concept="37vLTI" id="3U_CVdMigWS" role="3clFbG">
                    <node concept="2OqwBi" id="3U_CVdMiAeU" role="37vLTx">
                      <node concept="2OqwBi" id="3U_CVdMi$aq" role="2Oq$k0">
                        <node concept="2OqwBi" id="3U_CVdMixyv" role="2Oq$k0">
                          <node concept="2OqwBi" id="3U_CVdMiudb" role="2Oq$k0">
                            <node concept="2OqwBi" id="3U_CVdMirGD" role="2Oq$k0">
                              <node concept="2OqwBi" id="3U_CVdMipVj" role="2Oq$k0">
                                <node concept="2OqwBi" id="3U_CVdMioFV" role="2Oq$k0">
                                  <node concept="2OqwBi" id="3U_CVdMiiMS" role="2Oq$k0">
                                    <node concept="2ShNRf" id="3U_CVdMihtz" role="2Oq$k0">
                                      <node concept="1pGfFk" id="3U_CVdMiihX" role="2ShVmc">
                                        <ref role="37wK5l" to="r80k:~ChartBuilder.&lt;init&gt;()" resolve="ChartBuilder" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="3U_CVdMiiU7" role="2OqNvi">
                                      <ref role="37wK5l" to="r80k:~ChartBuilder.chartType(com.xeiam.xchart.StyleManager$ChartType):com.xeiam.xchart.ChartBuilder" resolve="chartType" />
                                      <node concept="Rm8GO" id="3U_CVdMio9R" role="37wK5m">
                                        <ref role="Rm8GQ" to="r80k:~StyleManager$ChartType.Bar" resolve="Bar" />
                                        <ref role="1Px2BO" to="r80k:~StyleManager$ChartType" resolve="StyleManager.ChartType" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="3U_CVdMioPc" role="2OqNvi">
                                    <ref role="37wK5l" to="r80k:~ChartBuilder.width(int):com.xeiam.xchart.ChartBuilder" resolve="width" />
                                    <node concept="3cmrfG" id="3U_CVdMipnA" role="37wK5m">
                                      <property role="3cmrfH" value="350" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="3U_CVdMiq6h" role="2OqNvi">
                                  <ref role="37wK5l" to="r80k:~ChartBuilder.height(int):com.xeiam.xchart.ChartBuilder" resolve="height" />
                                  <node concept="3cmrfG" id="3U_CVdMiqDI" role="37wK5m">
                                    <property role="3cmrfH" value="250" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="3U_CVdMismb" role="2OqNvi">
                                <ref role="37wK5l" to="r80k:~ChartBuilder.theme(com.xeiam.xchart.StyleManager$ChartTheme):com.xeiam.xchart.ChartBuilder" resolve="theme" />
                                <node concept="Rm8GO" id="3U_CVdMitCU" role="37wK5m">
                                  <ref role="Rm8GQ" to="r80k:~StyleManager$ChartTheme.GGPlot2" resolve="GGPlot2" />
                                  <ref role="1Px2BO" to="r80k:~StyleManager$ChartTheme" resolve="StyleManager.ChartTheme" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="3U_CVdMiuUt" role="2OqNvi">
                              <ref role="37wK5l" to="r80k:~ChartBuilder.title(java.lang.String):com.xeiam.xchart.ChartBuilder" resolve="title" />
                              <node concept="Xl_RD" id="3U_CVdMivwA" role="37wK5m">
                                <property role="Xl_RC" value="Cross Validation MCC" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="3U_CVdMiyj5" role="2OqNvi">
                            <ref role="37wK5l" to="r80k:~ChartBuilder.xAxisTitle(java.lang.String):com.xeiam.xchart.ChartBuilder" resolve="xAxisTitle" />
                            <node concept="Xl_RD" id="3U_CVdMiyV1" role="37wK5m">
                              <property role="Xl_RC" value="MCC" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="3U_CVdMi$Yy" role="2OqNvi">
                          <ref role="37wK5l" to="r80k:~ChartBuilder.yAxisTitle(java.lang.String):com.xeiam.xchart.ChartBuilder" resolve="yAxisTitle" />
                          <node concept="Xl_RD" id="3U_CVdMi_Cq" role="37wK5m">
                            <property role="Xl_RC" value="" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="3U_CVdMiAAA" role="2OqNvi">
                        <ref role="37wK5l" to="r80k:~ChartBuilder.build():com.xeiam.xchart.Chart" resolve="build" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3U_CVdMigr2" role="37vLTJ">
                      <ref role="3cqZAo" node="3U_CVdMeRyp" resolve="chart" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3U_CVdMeRz0" role="3cqZAp">
                  <node concept="2OqwBi" id="3U_CVdMeRz1" role="3clFbG">
                    <node concept="2OqwBi" id="3U_CVdMeR_L" role="2Oq$k0">
                      <node concept="37vLTw" id="3U_CVdMeR_K" role="2Oq$k0">
                        <ref role="3cqZAo" node="3U_CVdMeRyp" resolve="chart" />
                      </node>
                      <node concept="liA8E" id="3U_CVdMeR_M" role="2OqNvi">
                        <ref role="37wK5l" to="r80k:~Chart.getStyleManager():com.xeiam.xchart.StyleManager" resolve="getStyleManager" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3U_CVdMeRz3" role="2OqNvi">
                      <ref role="37wK5l" to="r80k:~StyleManager.setLegendVisible(boolean):void" resolve="setLegendVisible" />
                      <node concept="3clFbT" id="3U_CVdMeRz4" role="37wK5m">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3U_CVdMiCK8" role="3cqZAp">
                  <node concept="2OqwBi" id="3U_CVdMiDMk" role="3clFbG">
                    <node concept="2OqwBi" id="3U_CVdMiCW1" role="2Oq$k0">
                      <node concept="37vLTw" id="3U_CVdMiCK7" role="2Oq$k0">
                        <ref role="3cqZAo" node="3U_CVdMeRyp" resolve="chart" />
                      </node>
                      <node concept="liA8E" id="3U_CVdMiDwT" role="2OqNvi">
                        <ref role="37wK5l" to="r80k:~Chart.getStyleManager():com.xeiam.xchart.StyleManager" resolve="getStyleManager" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3U_CVdMiE6z" role="2OqNvi">
                      <ref role="37wK5l" to="r80k:~StyleManager.setLegendPosition(com.xeiam.xchart.StyleManager$LegendPosition):void" resolve="setLegendPosition" />
                      <node concept="Rm8GO" id="3U_CVdMiEWj" role="37wK5m">
                        <ref role="Rm8GQ" to="r80k:~StyleManager$LegendPosition.InsideN" resolve="InsideN" />
                        <ref role="1Px2BO" to="r80k:~StyleManager$LegendPosition" resolve="StyleManager.LegendPosition" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3U_CVdMeRzb" role="3cqZAp">
                  <node concept="3cpWsn" id="3U_CVdMeRza" role="3cpWs9">
                    <property role="3TUv4t" value="false" />
                    <property role="TrG5h" value="x" />
                    <node concept="3uibUv" id="3U_CVdMeRzc" role="1tU5fm">
                      <ref role="3uigEE" to="k7g3:~ArrayList" resolve="ArrayList" />
                      <node concept="3uibUv" id="3U_CVdMeRzd" role="11_B2D">
                        <ref role="3uigEE" to="e2lb:~Double" resolve="Double" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="3U_CVdMeR_S" role="33vP2m">
                      <node concept="1pGfFk" id="3U_CVdMeR_T" role="2ShVmc">
                        <ref role="37wK5l" to="k7g3:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                        <node concept="3uibUv" id="3U_CVdMeRzf" role="1pMfVU">
                          <ref role="3uigEE" to="e2lb:~Double" resolve="Double" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3U_CVdMeRzh" role="3cqZAp">
                  <node concept="3cpWsn" id="3U_CVdMeRzg" role="3cpWs9">
                    <property role="3TUv4t" value="false" />
                    <property role="TrG5h" value="y" />
                    <node concept="3uibUv" id="3U_CVdMeRzi" role="1tU5fm">
                      <ref role="3uigEE" to="k7g3:~ArrayList" resolve="ArrayList" />
                      <node concept="3uibUv" id="3U_CVdMeRzj" role="11_B2D">
                        <ref role="3uigEE" to="e2lb:~Double" resolve="Double" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="3U_CVdMeR_U" role="33vP2m">
                      <node concept="1pGfFk" id="3U_CVdMeR_V" role="2ShVmc">
                        <ref role="37wK5l" to="k7g3:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                        <node concept="3uibUv" id="3U_CVdMeRzl" role="1pMfVU">
                          <ref role="3uigEE" to="e2lb:~Double" resolve="Double" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3U_CVdMiGG8" role="3cqZAp">
                  <node concept="3cpWsn" id="3U_CVdMiGGb" role="3cpWs9">
                    <property role="TrG5h" value="doubles" />
                    <node concept="10Q1$e" id="3U_CVdMiHr4" role="1tU5fm">
                      <node concept="10P55v" id="3U_CVdMiGG6" role="10Q1$1" />
                    </node>
                    <node concept="2YIFZM" id="3U_CVdMiIt9" role="33vP2m">
                      <ref role="37wK5l" to="986b:7XxitGzdaOG" resolve="load" />
                      <ref role="1Pybhc" to="986b:7XxitGzdaOF" resolve="ColumnLoader" />
                      <node concept="37vLTw" id="3U_CVdMiIJ3" role="37wK5m">
                        <ref role="3cqZAo" node="3U_CVdMeRyt" resolve="filename" />
                      </node>
                      <node concept="Xl_RD" id="3U_CVdMiJla" role="37wK5m">
                        <property role="Xl_RC" value="MCC" />
                      </node>
                      <node concept="Xl_RD" id="3U_CVdMiKfL" role="37wK5m">
                        <property role="Xl_RC" value="\t" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3U_CVdMiLXZ" role="3cqZAp">
                  <node concept="2YIFZM" id="3U_CVdMiMZA" role="3clFbG">
                    <ref role="37wK5l" to="986b:7XxitGzdaNa" resolve="bin" />
                    <ref role="1Pybhc" to="986b:7XxitGzdaLC" resolve="BinHelper" />
                    <node concept="37vLTw" id="3U_CVdMiNgK" role="37wK5m">
                      <ref role="3cqZAo" node="3U_CVdMiGGb" resolve="doubles" />
                    </node>
                    <node concept="37vLTw" id="3U_CVdMiNO7" role="37wK5m">
                      <ref role="3cqZAo" node="3U_CVdMeRza" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="3U_CVdMiOaM" role="37wK5m">
                      <ref role="3cqZAo" node="3U_CVdMeRzg" resolve="y" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3U_CVdMeRzz" role="3cqZAp">
                  <node concept="2OqwBi" id="3U_CVdMeRA0" role="3clFbG">
                    <node concept="37vLTw" id="3U_CVdMeR_Z" role="2Oq$k0">
                      <ref role="3cqZAo" node="3U_CVdMeRyp" resolve="chart" />
                    </node>
                    <node concept="liA8E" id="3U_CVdMeRA1" role="2OqNvi">
                      <ref role="37wK5l" to="r80k:~Chart.addSeries(java.lang.String,java.util.Collection,java.util.Collection):com.xeiam.xchart.Series" resolve="addSeries" />
                      <node concept="Xl_RD" id="3U_CVdMeRA2" role="37wK5m">
                        <property role="Xl_RC" value="series" />
                      </node>
                      <node concept="37vLTw" id="3U_CVdMeRA3" role="37wK5m">
                        <ref role="3cqZAo" node="3U_CVdMeRza" resolve="x" />
                      </node>
                      <node concept="37vLTw" id="3U_CVdMeRA4" role="37wK5m">
                        <ref role="3cqZAo" node="3U_CVdMeRzg" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3U_CVdMeRzC" role="3cqZAp">
              <node concept="3y3z36" id="3U_CVdMeRzD" role="3clFbw">
                <node concept="37vLTw" id="3U_CVdMeRzE" role="3uHU7B">
                  <ref role="3cqZAo" node="3U_CVdMeRyp" resolve="chart" />
                </node>
                <node concept="10Nm6u" id="3U_CVdMeRzF" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="3U_CVdMeRzH" role="3clFbx">
                <node concept="3clFbF" id="3U_CVdMeRzI" role="3cqZAp">
                  <node concept="2OqwBi" id="3U_CVdMeRA7" role="3clFbG">
                    <node concept="37vLTw" id="3U_CVdMeRA6" role="2Oq$k0">
                      <ref role="3cqZAo" node="3U_CVdMeRwy" resolve="charts" />
                    </node>
                    <node concept="liA8E" id="3U_CVdMeRA8" role="2OqNvi">
                      <ref role="37wK5l" to="k7g3:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                      <node concept="37vLTw" id="3U_CVdMeRA9" role="37wK5m">
                        <ref role="3cqZAo" node="3U_CVdMeRyp" resolve="chart" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3U_CVdMeRzL" role="3cqZAp">
              <node concept="3uNrnE" id="3U_CVdMeRzM" role="3clFbG">
                <node concept="37vLTw" id="3U_CVdMeRzN" role="2$L3a6">
                  <ref role="3cqZAo" node="3U_CVdMeRwC" resolve="filenameIndex" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3U_CVdMeRzO" role="3cqZAp">
              <node concept="3clFbC" id="3U_CVdMeRzP" role="3clFbw">
                <node concept="37vLTw" id="3U_CVdMeRzQ" role="3uHU7B">
                  <ref role="3cqZAo" node="3U_CVdMeRwC" resolve="filenameIndex" />
                </node>
                <node concept="37vLTw" id="3U_CVdMeRzR" role="3uHU7w">
                  <ref role="3cqZAo" node="3U_CVdMeRwG" resolve="numCharts" />
                </node>
              </node>
              <node concept="3clFbS" id="3U_CVdMeRzT" role="3clFbx">
                <node concept="3clFbF" id="3U_CVdMeRzU" role="3cqZAp">
                  <node concept="37vLTI" id="3U_CVdMeRzV" role="3clFbG">
                    <node concept="37vLTw" id="3U_CVdMeRzW" role="37vLTJ">
                      <ref role="3cqZAo" node="3U_CVdMeRwC" resolve="filenameIndex" />
                    </node>
                    <node concept="3cmrfG" id="3U_CVdMeRzX" role="37vLTx">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3U_CVdMeRzY" role="3cqZAp">
          <node concept="37vLTw" id="3U_CVdMeRzZ" role="3cqZAk">
            <ref role="3cqZAo" node="3U_CVdMeRwy" resolve="charts" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3U_CVdMeR$0" role="1B3o_S" />
      <node concept="3uibUv" id="3U_CVdMeR$1" role="3clF45">
        <ref role="3uigEE" to="k7g3:~ArrayList" resolve="ArrayList" />
        <node concept="3uibUv" id="3U_CVdMeR$2" role="11_B2D">
          <ref role="3uigEE" to="r80k:~Chart" resolve="Chart" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="3U_CVdMeR$3" role="jymVt">
      <property role="TrG5h" value="view" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="3U_CVdMeR$4" role="3clF46">
        <property role="TrG5h" value="filenames" />
        <property role="3TUv4t" value="false" />
        <node concept="8X2XB" id="3U_CVdMeR$6" role="1tU5fm">
          <node concept="3uibUv" id="3U_CVdMeR$5" role="8Xvag">
            <ref role="3uigEE" to="e2lb:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3U_CVdMeR$7" role="3clF47">
        <node concept="3cpWs8" id="3U_CVdMeR$9" role="3cqZAp">
          <node concept="3cpWsn" id="3U_CVdMeR$8" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="charts" />
            <node concept="3uibUv" id="3U_CVdMeR$a" role="1tU5fm">
              <ref role="3uigEE" to="k7g3:~ArrayList" resolve="ArrayList" />
              <node concept="3uibUv" id="3U_CVdMeR$b" role="11_B2D">
                <ref role="3uigEE" to="r80k:~Chart" resolve="Chart" />
              </node>
            </node>
            <node concept="1rXfSq" id="3U_CVdMeR$c" role="33vP2m">
              <ref role="37wK5l" node="3U_CVdMeRwt" resolve="buildCharts" />
              <node concept="37vLTw" id="3U_CVdMeR$d" role="37wK5m">
                <ref role="3cqZAo" node="3U_CVdMeR$4" resolve="filenames" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3U_CVdMhYu_" role="3cqZAp">
          <node concept="3cpWsn" id="3U_CVdMhYuA" role="3cpWs9">
            <property role="TrG5h" value="wrapper" />
            <node concept="3uibUv" id="3U_CVdMhYuB" role="1tU5fm">
              <ref role="3uigEE" to="986b:7YP$8fwZx1K" resolve="CustomSwingWrapper" />
            </node>
            <node concept="2ShNRf" id="3U_CVdMhYKg" role="33vP2m">
              <node concept="1pGfFk" id="3U_CVdMi3cT" role="2ShVmc">
                <ref role="37wK5l" to="986b:7YP$8fwZx2l" resolve="CustomSwingWrapper" />
                <node concept="37vLTw" id="3U_CVdMi3iY" role="37wK5m">
                  <ref role="3cqZAo" node="3U_CVdMeR$8" resolve="charts" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3U_CVdMeR$j" role="3cqZAp">
          <node concept="2OqwBi" id="3U_CVdMeRAc" role="3clFbG">
            <node concept="37vLTw" id="3U_CVdMeRAb" role="2Oq$k0">
              <ref role="3cqZAo" node="3U_CVdMhYuA" resolve="wrapper" />
            </node>
            <node concept="liA8E" id="3U_CVdMeRAd" role="2OqNvi">
              <ref role="37wK5l" to="986b:7YP$8fx0J8V" resolve="setOnClose" />
              <node concept="10M0yZ" id="3U_CVdMeZCF" role="37wK5m">
                <ref role="1PxDUh" to="dbrf:~JFrame" resolve="JFrame" />
                <ref role="3cqZAo" to="dbrf:~WindowConstants.DISPOSE_ON_CLOSE" resolve="DISPOSE_ON_CLOSE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3U_CVdMeR$m" role="3cqZAp">
          <node concept="2OqwBi" id="3U_CVdMf5g5" role="3clFbG">
            <node concept="37vLTw" id="3U_CVdMf5g4" role="2Oq$k0">
              <ref role="3cqZAo" node="3U_CVdMhYuA" resolve="wrapper" />
            </node>
            <node concept="liA8E" id="3U_CVdMf5g6" role="2OqNvi">
              <ref role="37wK5l" to="986b:7YP$8fwZx4$" resolve="displayChartMatrix" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3U_CVdMeR$o" role="1B3o_S" />
      <node concept="3cqZAl" id="3U_CVdMeR$p" role="3clF45" />
      <node concept="P$JXv" id="3U_CVdMeR$q" role="lGtFl">
        <node concept="TZ5HA" id="3U_CVdMeR_9" role="TZ5H$">
          <node concept="1dT_AC" id="3U_CVdMeR_a" role="1dT_Ay">
            <property role="1dT_AB" value="Returns a JFrame with the charts that display the content of the files." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="3U_CVdMeR$r" role="jymVt">
      <property role="TrG5h" value="panel" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="3U_CVdMeR$s" role="3clF46">
        <property role="TrG5h" value="filenames" />
        <property role="3TUv4t" value="false" />
        <node concept="8X2XB" id="3U_CVdMeR$u" role="1tU5fm">
          <node concept="3uibUv" id="3U_CVdMeR$t" role="8Xvag">
            <ref role="3uigEE" to="e2lb:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3U_CVdMeR$v" role="3clF47">
        <node concept="3cpWs8" id="3U_CVdMeR$x" role="3cqZAp">
          <node concept="3cpWsn" id="3U_CVdMeR$w" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="charts" />
            <node concept="3uibUv" id="3U_CVdMeR$y" role="1tU5fm">
              <ref role="3uigEE" to="k7g3:~ArrayList" resolve="ArrayList" />
              <node concept="3uibUv" id="3U_CVdMeR$z" role="11_B2D">
                <ref role="3uigEE" to="r80k:~Chart" resolve="Chart" />
              </node>
            </node>
            <node concept="1rXfSq" id="3U_CVdMeR$$" role="33vP2m">
              <ref role="37wK5l" node="3U_CVdMeRwt" resolve="buildCharts" />
              <node concept="37vLTw" id="3U_CVdMeR$_" role="37wK5m">
                <ref role="3cqZAo" node="3U_CVdMeR$s" resolve="filenames" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3U_CVdMiaaI" role="3cqZAp">
          <node concept="3cpWsn" id="3U_CVdMiaaJ" role="3cpWs9">
            <property role="TrG5h" value="wrapper" />
            <node concept="3uibUv" id="3U_CVdMiaaK" role="1tU5fm">
              <ref role="3uigEE" to="986b:7YP$8fwZx1K" resolve="CustomSwingWrapper" />
            </node>
            <node concept="2ShNRf" id="3U_CVdMiatt" role="33vP2m">
              <node concept="1pGfFk" id="3U_CVdMiats" role="2ShVmc">
                <ref role="37wK5l" to="986b:7YP$8fwZx2l" resolve="CustomSwingWrapper" />
                <node concept="37vLTw" id="3U_CVdMiazD" role="37wK5m">
                  <ref role="3cqZAo" node="3U_CVdMeR$w" resolve="charts" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3U_CVdMeR$F" role="3cqZAp">
          <node concept="2OqwBi" id="3U_CVdMeZCO" role="3cqZAk">
            <node concept="37vLTw" id="3U_CVdMeZCN" role="2Oq$k0">
              <ref role="3cqZAo" node="3U_CVdMiaaJ" resolve="wrapper" />
            </node>
            <node concept="liA8E" id="3U_CVdMeZCP" role="2OqNvi">
              <ref role="37wK5l" to="986b:62UWPSfwXSQ" resolve="getChartMatrixPanel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3U_CVdMeR$H" role="1B3o_S" />
      <node concept="3uibUv" id="3U_CVdMeR$I" role="3clF45">
        <ref role="3uigEE" to="dbrf:~JPanel" resolve="JPanel" />
      </node>
      <node concept="P$JXv" id="3U_CVdMeR$J" role="lGtFl">
        <node concept="TZ5HA" id="3U_CVdMeR_b" role="TZ5H$">
          <node concept="1dT_AC" id="3U_CVdMeR_c" role="1dT_Ay">
            <property role="1dT_AB" value="Returns a JPanel with the charts that display the content of the files." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="3U_CVdMeR$K" role="jymVt">
      <property role="TrG5h" value="main" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="3U_CVdMeR$L" role="3clF46">
        <property role="TrG5h" value="args" />
        <property role="3TUv4t" value="false" />
        <node concept="10Q1$e" id="3U_CVdMeR$N" role="1tU5fm">
          <node concept="3uibUv" id="3U_CVdMeR$M" role="10Q1$1">
            <ref role="3uigEE" to="e2lb:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3U_CVdMeR$O" role="3clF47">
        <node concept="3clFbF" id="3U_CVdMeR$P" role="3cqZAp">
          <node concept="1rXfSq" id="3U_CVdMeR$Q" role="3clFbG">
            <ref role="37wK5l" node="3U_CVdMeR$3" resolve="view" />
            <node concept="37vLTw" id="3U_CVdMeR$R" role="37wK5m">
              <ref role="3cqZAo" node="3U_CVdMeR$L" resolve="args" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3U_CVdMeR$S" role="1B3o_S" />
      <node concept="3cqZAl" id="3U_CVdMeR$T" role="3clF45" />
    </node>
  </node>
</model>

