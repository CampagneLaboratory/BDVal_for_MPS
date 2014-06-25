package org.campagnelab.bdval.plugin;

/*Generated by MPS */

import jetbrains.mps.make.facet.IFacet;
import java.util.List;
import jetbrains.mps.make.facet.ITarget;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.make.resources.IPropertiesPersistence;
import jetbrains.mps.make.facet.ITargetEx2;
import jetbrains.mps.make.script.IJob;
import jetbrains.mps.make.script.IResult;
import jetbrains.mps.make.resources.IResource;
import jetbrains.mps.make.script.IJobMonitor;
import jetbrains.mps.make.resources.IPropertiesAccessor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.util.ProgressMonitor;
import jetbrains.mps.smodel.resources.TResource;
import jetbrains.mps.make.script.IFeedback;
import java.util.Set;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import java.util.HashSet;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.project.SModuleOperations;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.project.facets.JavaModuleFacet;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.util.SNodeOperations;
import java.io.File;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.make.script.IConfig;
import jetbrains.mps.baseLanguage.tuples.runtime.Tuples;
import jetbrains.mps.make.script.IPropertiesPool;
import jetbrains.mps.baseLanguage.tuples.runtime.MultiTuple;
import java.util.Map;
import jetbrains.mps.internal.collections.runtime.MapSequence;

public class CopyXML_Facet extends IFacet.Stub {
  private List<ITarget> targets = ListSequence.fromList(new ArrayList<ITarget>());
  private IFacet.Name name = new IFacet.Name("org.campagnelab.bdval.CopyXML");

  public CopyXML_Facet() {
    ListSequence.fromList(targets).addElement(new CopyXML_Facet.Target_copy());
  }

  public Iterable<ITarget> targets() {
    return targets;
  }

  public Iterable<IFacet.Name> optional() {
    return null;
  }

  public Iterable<IFacet.Name> required() {
    return Sequence.fromArray(new IFacet.Name[]{new IFacet.Name("jetbrains.mps.lang.core.Generate"), new IFacet.Name("jetbrains.mps.make.facets.JavaCompile")});
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

  public static class Target_copy implements ITargetEx2 {
    private static final ITarget.Name name = new ITarget.Name("org.campagnelab.bdval.CopyXML.copy");

    public Target_copy() {
    }

    public IJob createJob() {
      return new IJob.Stub() {
        @Override
        public IResult execute(final Iterable<IResource> rawInput, final IJobMonitor monitor, final IPropertiesAccessor pa, @NotNull final ProgressMonitor progressMonitor) {
          Iterable<IResource> _output_lne71d_a0a = null;
          final Iterable<TResource> input = (Iterable<TResource>) (Iterable) rawInput;
          switch (0) {
            case 0:
              _output_lne71d_a0a = Sequence.fromIterable(_output_lne71d_a0a).concat(Sequence.fromIterable(Sequence.<IResource>singleton(new CopyXMLTuple(null, null))));
              progressMonitor.start("Copying XML files", 1);
              monitor.reportFeedback(new IFeedback.INFORMATION(String.valueOf("Copying XML files")));
              Set<SModule> compiledModules = SetSequence.fromSetWithValues(new HashSet<SModule>(), Sequence.fromIterable(input).select(new ISelector<TResource, SModule>() {
                public SModule select(TResource it) {
                  return it.module();
                }
              }).where(new IWhereFilter<SModule>() {
                public boolean accept(SModule it) {
                  return SModuleOperations.isCompileInMps(it);
                }
              }).distinct());
              for (SModule module : SetSequence.fromSet(compiledModules)) {
                for (SModel model : Sequence.fromIterable(module.getModels())) {
                  monitor.reportFeedback(new IFeedback.INFORMATION(String.valueOf("Model location: " + model.getSource().getLocation())));
                }
              }
              for (TResource tres : Sequence.fromIterable(input)) {
                JavaModuleFacet javaFacet = tres.module().getFacet(JavaModuleFacet.class);
                IFile classesGenFolder = javaFacet.getClassesGen().getDescendant(SNodeOperations.getModelLongName(tres.modelDescriptor()).replace(".", "/"));
                File sourceFolder;
                sourceFolder = new File(classesGenFolder.getPath());
                String targetFolder = null;
                for (SNode root : tres.modelDescriptor().getRootNodes()) {
                  {
                    SNode project = root;
                    if (jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations.isInstanceOf(project, "org.campagnelab.bdval.structure.Project")) {
                      SNode p = jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations.cast(root, "org.campagnelab.bdval.structure.Project");
                      targetFolder = SPropertyOperations.getString(SLinkOperations.getTarget(p, "properties", true), "outputLocation") + SPropertyOperations.getString(p, "name").replaceAll("\\s", "");
                      File targetFile = new File(targetFolder);
                      for (File fileInFolder : sourceFolder.listFiles()) {
                        FileUtil.copyFile(fileInFolder, targetFile);
                      }
                    }
                  }
                }
                _output_lne71d_a0a = Sequence.fromIterable(_output_lne71d_a0a).concat(Sequence.fromIterable(Sequence.<IResource>singleton(tres)));
              }
              progressMonitor.done();
              return new IResult.SUCCESS(_output_lne71d_a0a);
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
      return Sequence.fromArray(new ITarget.Name[]{new ITarget.Name("jetbrains.mps.lang.core.Generate.generate")});
    }

    public Iterable<ITarget.Name> notBefore() {
      return null;
    }

    public Iterable<ITarget.Name> before() {
      return null;
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
      return false;
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
      return cls.cast(new Parameters());
    }

    public <T> T createParameters(Class<T> cls, T copyFrom) {
      T t = createParameters(cls);
      if (t != null) {
        ((Tuples._1) t).assign((Tuples._1) copyFrom);
      }
      return t;
    }

    public int workEstimate() {
      return 10;
    }

    public static CopyXML_Facet.Target_copy.Parameters vars(IPropertiesPool ppool) {
      return ppool.properties(name, CopyXML_Facet.Target_copy.Parameters.class);
    }

    public static class Parameters extends MultiTuple._1<IFile> {
      public Parameters() {
        super();
      }

      public Parameters(IFile t) {
        super(t);
      }

      public IFile t(IFile value) {
        return super._0(value);
      }

      public IFile t() {
        return super._0();
      }

      @SuppressWarnings(value = "unchecked")
      public CopyXML_Facet.Target_copy.Parameters assignFrom(Tuples._1<IFile> from) {
        return (CopyXML_Facet.Target_copy.Parameters) super.assign(from);
      }
    }
  }

  public static class TargetProperties implements IPropertiesPersistence {
    public TargetProperties() {
    }

    public void storeValues(Map<String, String> store, IPropertiesPool properties) {
      {
        ITarget.Name name = new ITarget.Name("org.campagnelab.bdval.CopyXML.copy");
        if (properties.hasProperties(name)) {
          CopyXML_Facet.Target_copy.Parameters props = properties.properties(name, CopyXML_Facet.Target_copy.Parameters.class);
          MapSequence.fromMap(store).put("org.campagnelab.bdval.CopyXML.copy.t", null);
        }
      }
    }

    public void loadValues(Map<String, String> store, IPropertiesPool properties) {
      try {
        {
          ITarget.Name name = new ITarget.Name("org.campagnelab.bdval.CopyXML.copy");
          CopyXML_Facet.Target_copy.Parameters props = properties.properties(name, CopyXML_Facet.Target_copy.Parameters.class);
          if (MapSequence.fromMap(store).containsKey("org.campagnelab.bdval.CopyXML.copy.t")) {
            props.t(null);
          }
        }
      } catch (RuntimeException re) {
      }
    }
  }
}