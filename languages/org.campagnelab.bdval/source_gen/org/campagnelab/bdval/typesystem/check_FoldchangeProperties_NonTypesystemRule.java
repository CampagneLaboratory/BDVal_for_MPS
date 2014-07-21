package org.campagnelab.bdval.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.messageTargets.PropertyMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.smodel.SModelUtil_new;

public class check_FoldchangeProperties_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public check_FoldchangeProperties_NonTypesystemRule() {
  }

  public void applyRule(final SNode foldchangeProperties, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    if (isNotEmptyString(SPropertyOperations.getString(foldchangeProperties, "phi")) && !(SPropertyOperations.getString(foldchangeProperties, "phi").matches("\\d+(\\.\\d+)?"))) {
      {
        MessageTarget errorTarget = new NodeMessageTarget();
        errorTarget = new PropertyMessageTarget("phi");
        IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(foldchangeProperties, "Must enter valid number ex) 0.05", "r:03143f03-46ae-4107-a067-34f5026aa223(org.campagnelab.bdval.typesystem)", "6525722185899940488", null, errorTarget);
      }
    }
  }

  public String getApplicableConceptFQName() {
    return "org.campagnelab.bdval.structure.FoldchangeProperties";
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
