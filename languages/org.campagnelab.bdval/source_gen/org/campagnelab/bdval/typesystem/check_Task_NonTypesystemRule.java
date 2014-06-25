package org.campagnelab.bdval.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.messageTargets.ReferenceMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.ITranslator2;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.SModelUtil_new;

public class check_Task_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public check_Task_NonTypesystemRule() {
  }

  public void applyRule(final SNode task, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    int numCategories = ListSequence.fromList(SLinkOperations.getTargets(task, "categoryReference", true)).count();
    if (numCategories < 2) {
      {
        MessageTarget errorTarget = new NodeMessageTarget();
        errorTarget = new ReferenceMessageTarget("categoryReference");
        IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(task, "Must test at least two categories", "r:03143f03-46ae-4107-a067-34f5026aa223(org.campagnelab.bdval.typesystem)", "7083662764436561354", null, errorTarget);
      }
    }
    if (numCategories > 2 && numCategories != ListSequence.fromList(SLinkOperations.getTargets(SNodeOperations.getAncestor(task, "org.campagnelab.bdval.structure.Project", false, false), "endpoint", true)).translate(new ITranslator2<SNode, SNode>() {
      public Iterable<SNode> translate(SNode it) {
        return SLinkOperations.getTargets(it, "categories", true);
      }
    }).count()) {
      {
        MessageTarget errorTarget = new NodeMessageTarget();
        errorTarget = new ReferenceMessageTarget("categoryReference");
        IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(task, "If testing more than two categories then must test all categories for that endpoint", "r:03143f03-46ae-4107-a067-34f5026aa223(org.campagnelab.bdval.typesystem)", "7083662764437684262", null, errorTarget);
      }
    }
    final Wrappers._int counter = new Wrappers._int();
    ListSequence.fromList(SLinkOperations.getTargets(task, "categoryReference", true)).visitAll(new IVisitor<SNode>() {
      public void visit(final SNode category) {
        counter.value = 0;
        ListSequence.fromList(SLinkOperations.getTargets(task, "categoryReference", true)).visitAll(new IVisitor<SNode>() {
          public void visit(SNode category2) {
            if (SPropertyOperations.getString(SLinkOperations.getTarget(category, "endpointCategory", false), "name") == SPropertyOperations.getString(SLinkOperations.getTarget(category2, "endpointCategory", false), "name")) {
              counter.value++;
            }
          }
        });
        if (counter.value != 1) {
          {
            MessageTarget errorTarget = new NodeMessageTarget();
            IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(category, "Cannot test duplicate conditions", "r:03143f03-46ae-4107-a067-34f5026aa223(org.campagnelab.bdval.typesystem)", "7083662764437764381", null, errorTarget);
          }
        }
      }
    });
  }

  public String getApplicableConceptFQName() {
    return "org.campagnelab.bdval.structure.Task";
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