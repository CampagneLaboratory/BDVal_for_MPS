package org.campagnelab.bdval.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import java.io.File;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.messageTargets.PropertyMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.errors.BaseQuickFixProvider;
import jetbrains.mps.smodel.SModelUtil_new;

public class check_Directory_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public check_Directory_NonTypesystemRule() {
  }

  public void applyRule(final SNode directory, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    if (isNotEmptyString(SPropertyOperations.getString(directory, "directoryLocation")) && !(new File(SPropertyOperations.getString(directory, "directoryLocation")).isDirectory())) {
      {
        MessageTarget errorTarget = new NodeMessageTarget();
        errorTarget = new PropertyMessageTarget("directoryLocation");
        IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(directory, "Location does not point to an existing directory", "r:03143f03-46ae-4107-a067-34f5026aa223(org.campagnelab.bdval.typesystem)", "1911754720568106156", null, errorTarget);
      }
    }
    if (isNotEmptyString(SPropertyOperations.getString(directory, "directoryLocation")) && new File(SPropertyOperations.getString(directory, "directoryLocation")).isDirectory() && SPropertyOperations.getString(directory, "directoryLocation").endsWith("/")) {
      {
        MessageTarget errorTarget = new NodeMessageTarget();
        errorTarget = new PropertyMessageTarget("directoryLocation");
        IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(directory, "Remove '/' from end of directory location", "r:03143f03-46ae-4107-a067-34f5026aa223(org.campagnelab.bdval.typesystem)", "1911754720579127982", null, errorTarget);
        {
          BaseQuickFixProvider intentionProvider = new BaseQuickFixProvider("org.campagnelab.bdval.typesystem.TrimDirectory_QuickFix", false);
          _reporter_2309309498.addIntentionProvider(intentionProvider);
        }
      }
    }

  }

  public String getApplicableConceptFQName() {
    return "org.campagnelab.bdval.structure.Directory";
  }

  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    {
      boolean b = SModelUtil_new.isAssignableConcept(argument.getConcept().getQualifiedName(), this.getApplicableConceptFQName());
      return new IsApplicableStatus(b, null);
    }
  }

  public boolean overrides() {
    return false;
  }

  private static boolean isNotEmptyString(String str) {
    return str != null && str.length() > 0;
  }
}
