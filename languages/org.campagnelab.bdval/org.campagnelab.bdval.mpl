<?xml version="1.0" encoding="UTF-8"?>
<language namespace="org.campagnelab.bdval" uuid="35dbc0f6-2677-4e81-9b75-548a3c2b6d9b" version="0">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot location="languageModels" />
    </modelRoot>
    <modelRoot contentPath="${org.campagnelab.bdval.home}" type="java_classes">
      <sourceRoot location="languages/lib/bdval.jar" />
      <sourceRoot location="languages/lib/edu.mssm.crover.tables.jar" />
      <sourceRoot location="languages/lib/fastutil-6.5.13.jar" />
      <sourceRoot location="languages/lib/ant-launcher.jar" />
    </modelRoot>
  </models>
  <accessoryModels />
  <generators>
    <generator name="" generatorUID="org.campagnelab.bdval#8663900622048200163" uuid="e5d28b19-97bd-4db7-ab8f-e8d2349a95c3">
      <models>
        <modelRoot contentPath="${module}" type="default">
          <sourceRoot location="generator/template" />
        </modelRoot>
      </models>
      <external-templates />
      <dependencies>
        <dependency reexport="true">847a3235-09f9-403c-b6a9-1c294a212e92(Ant)</dependency>
        <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
        <dependency reexport="false">6ed54515-acc8-4d1e-a16c-9fd6cfe951ea(MPS.Core)</dependency>
        <dependency reexport="true">268ae620-360b-4da4-bb01-fad761632e6c(jetbrains.mps.ant.execution)</dependency>
        <dependency reexport="false">f8e20673-3f65-44e9-84c0-c4a4b6ede37e(jetbrains.mps.make.facets)</dependency>
        <dependency reexport="false">a1250a4d-c090-42c3-ad7c-d298a3357dd4(jetbrains.mps.make.runtime)</dependency>
        <dependency reexport="false">df9d410f-2ebb-43f7-893a-483a4f085250(jetbrains.mps.smodel.resources)</dependency>
      </dependencies>
      <usedLanguages>
        <usedLanguage>f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</usedLanguage>
        <usedLanguage>f2801650-65d5-424e-bb1b-463a8781b786(jetbrains.mps.baseLanguage.javadoc)</usedLanguage>
        <usedLanguage>760a0a8c-eabb-4521-8bfd-65db761a9ba3(jetbrains.mps.baseLanguage.logging)</usedLanguage>
        <usedLanguage>479c7a8c-02f9-43b5-9139-d910cb22f298(jetbrains.mps.core.xml)</usedLanguage>
        <usedLanguage>af65afd8-f0dd-4942-87d9-63a55f2a9db1(jetbrains.mps.lang.behavior)</usedLanguage>
        <usedLanguage>b401a680-8325-4110-8fd3-84331ff25bef(jetbrains.mps.lang.generator)</usedLanguage>
        <usedLanguage>d7706f63-9be2-479c-a3da-ae92af1e64d5(jetbrains.mps.lang.generator.generationContext)</usedLanguage>
        <usedLanguage>28f9e497-3b42-4291-aeba-0a1039153ab1(jetbrains.mps.lang.plugin)</usedLanguage>
        <usedLanguage>13744753-c81f-424a-9c1b-cf8943bf4e86(jetbrains.mps.lang.sharedConcepts)</usedLanguage>
        <usedLanguage>c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)</usedLanguage>
        <usedLanguage>696c1165-4a59-463b-bc5d-902caab85dd0(jetbrains.mps.make.facet)</usedLanguage>
      </usedLanguages>
      <usedDevKits>
        <usedDevKit>fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)</usedDevKit>
      </usedDevKits>
      <languageVersions>
        <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" fqName="jetbrains.mps.baseLanguage" version="1" />
        <language id="ed6d7656-532c-4bc2-81d1-af945aeb8280" fqName="jetbrains.mps.baseLanguage.blTypes" version="0" />
        <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" fqName="jetbrains.mps.baseLanguage.classifiers" version="0" />
        <language id="fd392034-7849-419d-9071-12563d152375" fqName="jetbrains.mps.baseLanguage.closures" version="0" />
        <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" fqName="jetbrains.mps.baseLanguage.collections" version="0" />
        <language id="f2801650-65d5-424e-bb1b-463a8781b786" fqName="jetbrains.mps.baseLanguage.javadoc" version="1" />
        <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" fqName="jetbrains.mps.baseLanguage.logging" version="0" />
        <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" fqName="jetbrains.mps.baseLanguage.tuples" version="0" />
        <language id="479c7a8c-02f9-43b5-9139-d910cb22f298" fqName="jetbrains.mps.core.xml" version="0" />
        <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" fqName="jetbrains.mps.lang.behavior" version="0" />
        <language id="fe9d76d7-5809-45c9-ae28-a40915b4d6ff" fqName="jetbrains.mps.lang.checkedName" version="0" />
        <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" fqName="jetbrains.mps.lang.core" version="1" />
        <language id="b401a680-8325-4110-8fd3-84331ff25bef" fqName="jetbrains.mps.lang.generator" version="0" />
        <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" fqName="jetbrains.mps.lang.generator.generationContext" version="0" />
        <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" fqName="jetbrains.mps.lang.plugin" version="0" />
        <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" fqName="jetbrains.mps.lang.quotation" version="0" />
        <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" fqName="jetbrains.mps.lang.sharedConcepts" version="0" />
        <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" fqName="jetbrains.mps.lang.smodel" version="0" />
        <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" fqName="jetbrains.mps.lang.structure" version="0" />
        <language id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" fqName="jetbrains.mps.lang.traceable" version="0" />
        <language id="696c1165-4a59-463b-bc5d-902caab85dd0" fqName="jetbrains.mps.make.facet" version="0" />
        <language id="95f8a3e6-f994-4ca0-a65e-763c9bae2d3b" fqName="jetbrains.mps.make.script" version="0" />
      </languageVersions>
      <mapping-priorities />
    </generator>
  </generators>
  <stubModelEntries>
    <stubModelEntry path="${org.campagnelab.bdval.home}/languages/lib/bdval.jar" />
    <stubModelEntry path="${org.campagnelab.bdval.home}/languages/lib/edu.mssm.crover.tables.jar" />
    <stubModelEntry path="${org.campagnelab.bdval.home}/languages/lib/fastutil-6.5.13.jar" />
    <stubModelEntry path="${org.campagnelab.bdval.home}/languages/lib/ant-launcher.jar" />
  </stubModelEntries>
  <sourcePath />
  <dependencies>
    <dependency reexport="false">df9d410f-2ebb-43f7-893a-483a4f085250(jetbrains.mps.smodel.resources)</dependency>
    <dependency reexport="false">28f9e497-3b42-4291-aeba-0a1039153ab1(jetbrains.mps.lang.plugin)</dependency>
    <dependency reexport="false">20d83b64-d10f-48d1-990d-513b574c4956(org.campagnelab.background)</dependency>
    <dependency reexport="false">2b3d76b7-a9ea-44f6-8a30-283c3ffb5f0a(org.campagnelab.ui.code)</dependency>
    <dependency reexport="false">f8e20673-3f65-44e9-84c0-c4a4b6ede37e(jetbrains.mps.make.facets)</dependency>
    <dependency reexport="true">2f2bc319-bf05-438e-93e1-ff8b5e6fc5f7(org.campagnelab.bdval.runtime)</dependency>
    <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
    <dependency reexport="false">656823ce-3459-4971-ad0b-b6ab119258e1(org.campagnelab.bdval.charts)</dependency>
    <dependency reexport="false">847a3235-09f9-403c-b6a9-1c294a212e92(Ant)</dependency>
    <dependency reexport="false">a1250a4d-c090-42c3-ad7c-d298a3357dd4(jetbrains.mps.make.runtime)</dependency>
    <dependency reexport="false">798100da-4f0a-421a-b991-71f8c50ce5d2(jetbrains.mps.build)</dependency>
    <dependency reexport="false">5ec1cd3d-0a50-4049-a8fa-ae768d7baa25(org.campagnelab.mps.XChart)</dependency>
    <dependency reexport="false">4caf0310-491e-41f5-8a9b-2006b3a94898(jetbrains.mps.execution.util)</dependency>
    <dependency reexport="false">8865b7a8-5271-43d3-884c-6fd1d9cfdd34(MPS.OpenAPI)</dependency>
  </dependencies>
  <usedLanguages>
    <usedLanguage>f2801650-65d5-424e-bb1b-463a8781b786(jetbrains.mps.baseLanguage.javadoc)</usedLanguage>
    <usedLanguage>aee9cad2-acd4-4608-aef2-0004f6a1cdbd(jetbrains.mps.lang.actions)</usedLanguage>
    <usedLanguage>af65afd8-f0dd-4942-87d9-63a55f2a9db1(jetbrains.mps.lang.behavior)</usedLanguage>
    <usedLanguage>3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1(jetbrains.mps.lang.constraints)</usedLanguage>
    <usedLanguage>18bc6592-03a6-4e29-a83a-7ff23bde13ba(jetbrains.mps.lang.editor)</usedLanguage>
    <usedLanguage>d7a92d38-f7db-40d0-8431-763b0c3c9f20(jetbrains.mps.lang.intentions)</usedLanguage>
    <usedLanguage>28f9e497-3b42-4291-aeba-0a1039153ab1(jetbrains.mps.lang.plugin)</usedLanguage>
    <usedLanguage>13744753-c81f-424a-9c1b-cf8943bf4e86(jetbrains.mps.lang.sharedConcepts)</usedLanguage>
    <usedLanguage>c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)</usedLanguage>
    <usedLanguage>b83431fe-5c8f-40bc-8a36-65e25f4dd253(jetbrains.mps.lang.textGen)</usedLanguage>
    <usedLanguage>7a5dda62-9140-4668-ab76-d5ed1746f2b2(jetbrains.mps.lang.typesystem)</usedLanguage>
    <usedLanguage>696c1165-4a59-463b-bc5d-902caab85dd0(jetbrains.mps.make.facet)</usedLanguage>
    <usedLanguage>95f8a3e6-f994-4ca0-a65e-763c9bae2d3b(jetbrains.mps.make.script)</usedLanguage>
    <usedLanguage>20d83b64-d10f-48d1-990d-513b574c4956(org.campagnelab.background)</usedLanguage>
    <usedLanguage>c1ba4037-e4db-47d8-8b61-b3c805b648f2(org.campagnelab.ui)</usedLanguage>
  </usedLanguages>
  <usedDevKits>
    <usedDevKit>fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)</usedDevKit>
  </usedDevKits>
  <languageVersions>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" fqName="jetbrains.mps.baseLanguage" version="1" />
    <language id="ed6d7656-532c-4bc2-81d1-af945aeb8280" fqName="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" fqName="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <language id="fd392034-7849-419d-9071-12563d152375" fqName="jetbrains.mps.baseLanguage.closures" version="0" />
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" fqName="jetbrains.mps.baseLanguage.collections" version="0" />
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" fqName="jetbrains.mps.baseLanguage.javadoc" version="1" />
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" fqName="jetbrains.mps.baseLanguage.logging" version="0" />
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" fqName="jetbrains.mps.baseLanguage.tuples" version="0" />
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" fqName="jetbrains.mps.lang.actions" version="0" />
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" fqName="jetbrains.mps.lang.behavior" version="0" />
    <language id="fe9d76d7-5809-45c9-ae28-a40915b4d6ff" fqName="jetbrains.mps.lang.checkedName" version="0" />
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" fqName="jetbrains.mps.lang.constraints" version="0" />
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" fqName="jetbrains.mps.lang.core" version="1" />
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" fqName="jetbrains.mps.lang.editor" version="0" />
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" fqName="jetbrains.mps.lang.intentions" version="0" />
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" fqName="jetbrains.mps.lang.plugin" version="0" />
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" fqName="jetbrains.mps.lang.quotation" version="0" />
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" fqName="jetbrains.mps.lang.sharedConcepts" version="0" />
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" fqName="jetbrains.mps.lang.smodel" version="0" />
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" fqName="jetbrains.mps.lang.structure" version="0" />
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" fqName="jetbrains.mps.lang.textGen" version="0" />
    <language id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" fqName="jetbrains.mps.lang.traceable" version="0" />
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" fqName="jetbrains.mps.lang.typesystem" version="0" />
    <language id="696c1165-4a59-463b-bc5d-902caab85dd0" fqName="jetbrains.mps.make.facet" version="0" />
    <language id="95f8a3e6-f994-4ca0-a65e-763c9bae2d3b" fqName="jetbrains.mps.make.script" version="0" />
    <language id="20d83b64-d10f-48d1-990d-513b574c4956" fqName="org.campagnelab.background" version="0" />
    <language id="c1ba4037-e4db-47d8-8b61-b3c805b648f2" fqName="org.campagnelab.ui" version="0" />
  </languageVersions>
  <extendedLanguages>
    <extendedLanguage>4caf0310-491e-41f5-8a9b-2006b3a94898(jetbrains.mps.execution.util)</extendedLanguage>
    <extendedLanguage>f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</extendedLanguage>
  </extendedLanguages>
</language>

