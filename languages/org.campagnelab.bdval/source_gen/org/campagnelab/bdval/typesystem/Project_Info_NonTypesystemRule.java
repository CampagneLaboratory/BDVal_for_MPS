package org.campagnelab.bdval.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.smodel.SModelUtil_new;

public class Project_Info_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public Project_Info_NonTypesystemRule() {
  }

  public void applyRule(final SNode project, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    if (isEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(project, "properties", true), "bdvalDirectory", true), "directoryLocation"))) {
      {
        MessageTarget errorTarget = new NodeMessageTarget();
        IErrorReporter _reporter_2309309498 = typeCheckingContext.reportInfo(SLinkOperations.getTarget(SLinkOperations.getTarget(project, "properties", true), "bdvalDirectory", true), "Directory", "r:03143f03-46ae-4107-a067-34f5026aa223(org.campagnelab.bdval.typesystem)", "6380268605224317111", null, errorTarget);
      }
    }
  }

  public String getApplicableConceptFQName() {
    return "org.campagnelab.bdval.structure.Project";
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

  private static boolean isEmptyString(String str) {
    return str == null || str.length() == 0;
  }
}
