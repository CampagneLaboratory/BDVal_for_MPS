<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:17e9f31b-143c-411f-b7e6-f8bc4e4f06dd(org.campagnelab.bdval.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="w348" ref="r:91a4ef63-e30e-4b86-bcdc-748a33d96fa7(org.campagnelab.bdval.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="8966504967485224688" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode" flags="nn" index="2rP1CM" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="1213100494875" name="referent" index="1Mr941" />
      </concept>
      <concept id="1148684180339" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Factory" flags="in" index="1MUpDS" />
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="1148687345559" name="searchScopeFactory" index="1N6uqs" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
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
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
    </language>
  </registry>
  <node concept="1M2fIO" id="69ees3rVE8D">
    <property role="3GE5qa" value="dataset" />
    <ref role="1M2myG" to="w348:69ees3rMbdi" resolve="CategoryReference" />
    <node concept="1N5Pfh" id="69ees3rVE8E" role="1Mr941">
      <ref role="1N5Vy1" to="w348:69ees3rMbdj" />
      <node concept="1MUpDS" id="69ees3rVE9m" role="1N6uqs">
        <node concept="3clFbS" id="69ees3rVE9o" role="2VODD2">
          <node concept="3clFbF" id="69ees3rWJPO" role="3cqZAp">
            <node concept="2OqwBi" id="69ees3rWUuD" role="3clFbG">
              <node concept="2OqwBi" id="69ees3rWSfU" role="2Oq$k0">
                <node concept="2OqwBi" id="69ees3rXHbn" role="2Oq$k0">
                  <node concept="2OqwBi" id="69ees3rWKz_" role="2Oq$k0">
                    <node concept="2rP1CM" id="69ees3rWQMF" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="69ees3rYtkX" role="2OqNvi">
                      <node concept="1xMEDy" id="69ees3rYtkZ" role="1xVPHs">
                        <node concept="chp4Y" id="69ees3rYu2r" role="ri$Ld">
                          <ref role="cht4Q" to="w348:67x0xp6glH2" resolve="DataSet" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3TrEf2" id="69ees3rXIcI" role="2OqNvi">
                    <ref role="3Tt5mk" to="w348:69ees3rLBNe" />
                  </node>
                </node>
                <node concept="3TrEf2" id="69ees3rWTeE" role="2OqNvi">
                  <ref role="3Tt5mk" to="w348:69ees3rM0Ol" />
                </node>
              </node>
              <node concept="3Tsc0h" id="69ees3rWVuB" role="2OqNvi">
                <ref role="3TtcxE" to="w348:69ees3rKdch" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="23lUIT96Czo">
    <property role="3GE5qa" value="dataset" />
    <ref role="1M2myG" to="w348:67x0xp6iM8y" resolve="Sample" />
    <node concept="1N5Pfh" id="23lUIT96C$t" role="1Mr941">
      <ref role="1N5Vy1" to="w348:69ees3rLOXZ" />
      <node concept="1MUpDS" id="23lUIT992nx" role="1N6uqs">
        <node concept="3clFbS" id="23lUIT992ny" role="2VODD2">
          <node concept="3cpWs6" id="23lUIT9cuJA" role="3cqZAp">
            <node concept="2OqwBi" id="23lUIT9977h" role="3cqZAk">
              <node concept="2OqwBi" id="23lUIT996e7" role="2Oq$k0">
                <node concept="2OqwBi" id="23lUIT995Ok" role="2Oq$k0">
                  <node concept="2OqwBi" id="23lUIT995wO" role="2Oq$k0">
                    <node concept="2rP1CM" id="23lUIT995u2" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="23lUIT995HA" role="2OqNvi">
                      <node concept="1xMEDy" id="23lUIT995HC" role="1xVPHs">
                        <node concept="chp4Y" id="23lUIT995JV" role="ri$Ld">
                          <ref role="cht4Q" to="w348:67x0xp6glH2" resolve="DataSet" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3TrEf2" id="23lUIT9960q" role="2OqNvi">
                    <ref role="3Tt5mk" to="w348:69ees3rLBNe" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="23lUIT996w9" role="2OqNvi">
                  <ref role="3TtcxE" to="w348:69ees3rMbdl" />
                </node>
              </node>
              <node concept="ANE8D" id="23lUIT998PD" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3v_Iv_JgWPG">
    <property role="3GE5qa" value="dataset" />
    <ref role="1M2myG" to="w348:69ees3rLBNq" resolve="Task" />
    <node concept="1N5Pfh" id="3v_Iv_JgXAa" role="1Mr941">
      <ref role="1N5Vy1" to="w348:69ees3rM0Ol" />
      <node concept="1MUpDS" id="3v_Iv_Jh6sq" role="1N6uqs">
        <node concept="3clFbS" id="3v_Iv_Jh6sr" role="2VODD2">
          <node concept="3clFbF" id="3v_Iv_Jh7zS" role="3cqZAp">
            <node concept="2OqwBi" id="3v_Iv_Jh809" role="3clFbG">
              <node concept="2OqwBi" id="3v_Iv_Jh7Dn" role="2Oq$k0">
                <node concept="2rP1CM" id="3v_Iv_Jh7zR" role="2Oq$k0" />
                <node concept="2Xjw5R" id="3v_Iv_Jh7PZ" role="2OqNvi">
                  <node concept="1xMEDy" id="3v_Iv_Jh7Q1" role="1xVPHs">
                    <node concept="chp4Y" id="3v_Iv_Jh7RU" role="ri$Ld">
                      <ref role="cht4Q" to="w348:2UUqZtvS4$K" resolve="Project" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Tsc0h" id="3v_Iv_Jh8aX" role="2OqNvi">
                <ref role="3TtcxE" to="w348:69ees3rL_dv" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

