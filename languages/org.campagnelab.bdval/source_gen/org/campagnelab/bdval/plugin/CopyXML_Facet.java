package org.campagnelab.bdval.plugin;

/*Generated by MPS */

import jetbrains.mps.make.facet.IFacet;
import java.util.List;
import jetbrains.mps.make.facet.ITarget;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.make.resources.IPropertiesPersistence;
import jetbrains.mps.make.facet.ITargetEx;
import jetbrains.mps.make.script.IJob;
import jetbrains.mps.make.script.IResult;
import jetbrains.mps.make.resources.IResource;
import jetbrains.mps.make.script.IJobMonitor;
import jetbrains.mps.make.resources.IPropertiesAccessor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.util.ProgressMonitor;
import jetbrains.mps.smodel.resources.TResource;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import java.io.File;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.project.SModuleOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import java.util.Collection;
import org.apache.commons.io.FileUtils;
import java.util.Iterator;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.make.script.IConfig;
import java.util.Map;
import jetbrains.mps.make.script.IPropertiesPool;

public class CopyXML_Facet extends IFacet.Stub {
  private List<ITarget> targets = ListSequence.fromList(new ArrayList<ITarget>());
  private IFacet.Name name = new IFacet.Name("org.campagnelab.bdval.CopyXML");

  public CopyXML_Facet() {
    ListSequence.fromList(targets).addElement(new CopyXML_Facet.Target_copyXml());
  }

  public Iterable<ITarget> targets() {
    return targets;
  }

  public Iterable<IFacet.Name> optional() {
    return null;
  }

  public Iterable<IFacet.Name> required() {
    return Sequence.fromArray(new IFacet.Name[]{new IFacet.Name("jetbrains.mps.lang.core.Generate"), new IFacet.Name("jetbrains.mps.lang.core.TextGen")});
  }

  public Iterable<IFacet.Name> extended() {
    return null;
  }

  public IFacet.Name getName() {
    return this.name;
  }

  public IPropertiesPersistence propertiesPersistence() {
    return new CopyXML_Facet.TargetProperties();
  }

  public static class Target_copyXml implements ITargetEx {
    private static final ITarget.Name name = new ITarget.Name("org.campagnelab.bdval.CopyXML.copyXml");

    public Target_copyXml() {
    }

    public IJob createJob() {
      return new IJob.Stub() {
        @Override
        public IResult execute(final Iterable<IResource> rawInput, final IJobMonitor monitor, final IPropertiesAccessor pa, @NotNull final ProgressMonitor progressMonitor) {
          Iterable<IResource> _output_lne71d_a0a = null;
          final Iterable<TResource> input = (Iterable<TResource>) (Iterable) rawInput;
          switch (0) {
            case 0:
              final Wrappers._T<String> outputPath = new Wrappers._T<String>();
              final Wrappers._T<String> destinationPath = new Wrappers._T<String>();
              final Wrappers._T<String> projectName = new Wrappers._T<String>();
              final String[] xml = {"xml"};
              final Wrappers._T<List<File>> matchingFiles = new Wrappers._T<List<File>>();
              final Wrappers._long lastModified = new Wrappers._long();
              final Wrappers._T<File> choice = new Wrappers._T<File>();

              Sequence.fromIterable(input).visitAll(new IVisitor<TResource>() {
                public void visit(final TResource tres) {
                  for (final SModel model : Sequence.fromIterable(tres.module().getModels())) {
                    tres.modelDescriptor().getRepository().getModelAccess().runReadAction(new Runnable() {
                      public void run() {
                        try {
                          for (SNode rootNodes : Sequence.fromIterable(tres.modelDescriptor().getRootNodes())) {
                            {
                              SNode project = rootNodes;
                              if (SNodeOperations.isInstanceOf(project, "org.campagnelab.bdval.structure.Project")) {
                                matchingFiles.value = new ArrayList<File>();
                                lastModified.value = Long.MIN_VALUE;
                                choice.value = null;
                                outputPath.value = SModuleOperations.getOutputPathFor(model);
                                destinationPath.value = SPropertyOperations.getString(SLinkOperations.getTarget(project, "properties", true), "outputLocation");
                                projectName.value = SPropertyOperations.getString(project, "name");
                                Collection files = FileUtils.listFiles(new File(outputPath.value), xml, true);
                                for (Iterator iterator = files.iterator(); iterator.hasNext();) {
                                  File currFile = (File) iterator.next();
                                  if (currFile.getName().equals(projectName.value + ".xml")) {
                                    matchingFiles.value.add(currFile);
                                  }
                                }
                                for (File file : ListSequence.fromList(matchingFiles.value)) {
                                  if (file.lastModified() > lastModified.value) {
                                    choice.value = file;
                                    lastModified.value = file.lastModified();
                                  }
                                }
                                FileUtil.copyFile(choice.value, new File(destinationPath.value + "/" + projectName.value + "/" + projectName.value + "Run.command"));
                              }
                            }
                          }
                        } catch (Exception e) {
                          throw new Error("Error copying XML file into correct folder");
                        }
                      }
                    });
                  }
                }
              });
            default:
              return new IResult.SUCCESS(_output_lne71d_a0a);
          }
        }
      };
    }

    public IConfig createConfig() {
      return null;
    }

    public Iterable<ITarget.Name> notAfter() {
      return null;
    }

    public Iterable<ITarget.Name> after() {
      return Sequence.fromArray(new ITarget.Name[]{new ITarget.Name("jetbrains.mps.lang.core.TextGen.textGen")});
    }

    public Iterable<ITarget.Name> notBefore() {
      return null;
    }

    public Iterable<ITarget.Name> before() {
      return Sequence.fromArray(new ITarget.Name[]{new ITarget.Name("jetbrains.mps.make.facets.Make.reconcile")});
    }

    public ITarget.Name getName() {
      return name;
    }

    public boolean isOptional() {
      return false;
    }

    public boolean requiresInput() {
      return true;
    }

    public boolean producesOutput() {
      return true;
    }

    public Iterable<Class<? extends IResource>> expectedInput() {
      List<Class<? extends IResource>> rv = ListSequence.fromList(new ArrayList<Class<? extends IResource>>());
      ListSequence.fromList(rv).addElement(TResource.class);
      return rv;
    }

    public Iterable<Class<? extends IResource>> expectedOutput() {
      return null;
    }

    public <T> T createParameters(Class<T> cls) {
      return null;
    }

    public <T> T createParameters(Class<T> cls, T copyFrom) {
      T t = createParameters(cls);
      return t;
    }
  }

  public static class TargetProperties implements IPropertiesPersistence {
    public TargetProperties() {
    }

    public void storeValues(Map<String, String> store, IPropertiesPool properties) {
    }

    public void loadValues(Map<String, String> store, IPropertiesPool properties) {
      try {
      } catch (RuntimeException re) {
      }
    }
  }
}
