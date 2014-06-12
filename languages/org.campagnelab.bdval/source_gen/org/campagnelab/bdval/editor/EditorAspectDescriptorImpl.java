package org.campagnelab.bdval.editor;

/*Generated by MPS */

import jetbrains.mps.openapi.editor.descriptor.EditorAspectDescriptor;
import java.util.Collection;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import java.util.Arrays;
import java.util.Collections;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditorComponent;

public class EditorAspectDescriptorImpl implements EditorAspectDescriptor {


  public Collection<ConceptEditor> getEditors(ConceptDescriptor descriptor) {
    switch (Arrays.binarySearch(stringSwitchCases_xbvbvu_a0a0b, descriptor.getConceptFqName())) {
      case 0:
        return Collections.<ConceptEditor>singletonList(new CIDs_Editor());
      case 1:
        return Collections.<ConceptEditor>singletonList(new CategoryReference_Editor());
      case 2:
        return Collections.<ConceptEditor>singletonList(new DataSet_Editor());
      case 3:
        return Collections.<ConceptEditor>singletonList(new DisplayRow_Editor());
      case 4:
        return Collections.<ConceptEditor>singletonList(new DisplayValue_Editor());
      case 5:
        return Collections.<ConceptEditor>singletonList(new Endpoint_Editor());
      case 6:
        return Collections.<ConceptEditor>singletonList(new EndpointCategory_Editor());
      case 7:
        return Collections.<ConceptEditor>singletonList(new Input_Editor());
      case 8:
        return Collections.<ConceptEditor>singletonList(new Platform_Editor());
      case 9:
        return Collections.<ConceptEditor>singletonList(new Project_Editor());
      case 10:
        return Collections.<ConceptEditor>singletonList(new Properties_Editor());
      case 11:
        return Collections.<ConceptEditor>singletonList(new Sample_Editor());
      case 12:
        return Collections.<ConceptEditor>singletonList(new Task_Editor());
      case 13:
        return Collections.<ConceptEditor>singletonList(new Test_Editor());
      default:
    }
    return Collections.<ConceptEditor>emptyList();
  }

  public Collection<ConceptEditorComponent> getEditorComponents(ConceptDescriptor descriptor, String editorComponentId) {
    return Collections.<ConceptEditorComponent>emptyList();
  }



  private static String[] stringSwitchCases_xbvbvu_a0a0b = new String[]{"org.campagnelab.bdval.structure.CIDs", "org.campagnelab.bdval.structure.CategoryReference", "org.campagnelab.bdval.structure.DataSet", "org.campagnelab.bdval.structure.DisplayRow", "org.campagnelab.bdval.structure.DisplayValue", "org.campagnelab.bdval.structure.Endpoint", "org.campagnelab.bdval.structure.EndpointCategory", "org.campagnelab.bdval.structure.Input", "org.campagnelab.bdval.structure.Platform", "org.campagnelab.bdval.structure.Project", "org.campagnelab.bdval.structure.Properties", "org.campagnelab.bdval.structure.Sample", "org.campagnelab.bdval.structure.Task", "org.campagnelab.bdval.structure.Test"};
}
