package org.campagnelab.bdval.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.smodel.SModelUtil_new;

public class check_FeatureSelections_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public check_FeatureSelections_NonTypesystemRule() {
  }

  public void applyRule(final SNode fsCombo, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    if (SNodeOperations.isInstanceOf(SLinkOperations.getTarget(fsCombo, "step1", true), "org.campagnelab.bdval.structure.WholeChip") && (SLinkOperations.getTarget(fsCombo, "step2", true) != null)) {
      {
        MessageTarget errorTarget = new NodeMessageTarget();
        IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(fsCombo, "Cannot select second feature selection strategy with Whole Chip", "r:03143f03-46ae-4107-a067-34f5026aa223(org.campagnelab.bdval.typesystem)", "2063368849531719224", null, errorTarget);
      }
    }
    if ((SLinkOperations.getTarget(fsCombo, "step2", true) != null) && SNodeOperations.isInstanceOf(SLinkOperations.getTarget(fsCombo, "step2", true), "org.campagnelab.bdval.structure.WholeChip")) {
      {
        MessageTarget errorTarget = new NodeMessageTarget();
        IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(fsCombo, "Cannot have Whole Chip as second feature selection strategy", "r:03143f03-46ae-4107-a067-34f5026aa223(org.campagnelab.bdval.typesystem)", "2063368849531730214", null, errorTarget);
      }
    }
    if (SNodeOperations.isInstanceOf(SLinkOperations.getTarget(fsCombo, "step1", true), "org.campagnelab.bdval.structure.GeneticAlgorithm") || SNodeOperations.isInstanceOf(SLinkOperations.getTarget(fsCombo, "step2", true), "org.campagnelab.bdval.structure.GeneticAlgorithm")) {
      SNode gaProperties = SLinkOperations.getTarget(SLinkOperations.getTarget(SNodeOperations.getAncestor(fsCombo, "org.campagnelab.bdval.structure.FeatureSelectionChoices", false, false), "parameters", true), "geneticAlgorithm", true);
      if ((gaProperties != null) && (SLinkOperations.getTarget(gaProperties, "performance", true) == null)) {
        {
          MessageTarget errorTarget = new NodeMessageTarget();
          IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(gaProperties, "Must Specify Genetic Algorithm Performance", "r:03143f03-46ae-4107-a067-34f5026aa223(org.campagnelab.bdval.typesystem)", "2063368849534697869", null, errorTarget);
        }
      }
    }
  }

  public String getApplicableConceptFQName() {
    return "org.campagnelab.bdval.structure.FeatureSelectionStrategy";
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
}
