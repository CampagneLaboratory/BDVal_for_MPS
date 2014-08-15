package org.campagnelab.bdval.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.BaseIntentionsDescriptor;
import jetbrains.mps.project.structure.modules.ModuleReference;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.intentions.IntentionsManager;

public class IntentionsDescriptor extends BaseIntentionsDescriptor {
  public IntentionsDescriptor() {
    super(new ModuleReference("35dbc0f6-2677-4e81-9b75-548a3c2b6d9b(org.campagnelab.bdval)"), PersistenceFacade.getInstance().createModelReference("r:f3ea1e25-aab8-445d-9fb9-090b3b3258bf(org.campagnelab.bdval.intentions)"));
  }

  public void init() {
    IntentionsManager.getInstance().registerIntentionFactory(new ClearCategories_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new ExtractEndpoints_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new LoadCIDs_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new LoadInput_Intention());
  }
}
