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
import jetbrains.mps.smodel.resources.GResource;
import jetbrains.mps.make.script.IConfig;
import jetbrains.mps.baseLanguage.tuples.runtime.Tuples;
import jetbrains.mps.make.script.IPropertiesPool;
import jetbrains.mps.baseLanguage.tuples.runtime.MultiTuple;
import java.util.AbstractList;
import java.util.Map;
import jetbrains.mps.internal.collections.runtime.MapSequence;

public class getInfo_Facet extends IFacet.Stub {
  private List<ITarget> targets = ListSequence.fromList(new ArrayList<ITarget>());
  private IFacet.Name name = new IFacet.Name("org.campagnelab.bdval.getInfo");

  public getInfo_Facet() {
    ListSequence.fromList(targets).addElement(new getInfo_Facet.Target_extract());
  }

  public Iterable<ITarget> targets() {
    return targets;
  }

  public Iterable<IFacet.Name> optional() {
    return null;
  }

  public Iterable<IFacet.Name> required() {
    return Sequence.fromArray(new IFacet.Name[]{new IFacet.Name("org.campagnelab.bdval.CopyXML"), new IFacet.Name("jetbrains.mps.lang.core.Generate")});
  }

  public Iterable<IFacet.Name> extended() {
    return null;
  }

  public IFacet.Name getName() {
    return this.name;
  }

  public IPropertiesPersistence propertiesPersistence() {
    return new getInfo_Facet.TargetProperties();
  }

  public static class Target_extract implements ITargetEx {
    private static final ITarget.Name name = new ITarget.Name("org.campagnelab.bdval.getInfo.extract");

    public Target_extract() {
    }

    public IJob createJob() {
      return new IJob.Stub() {
        @Override
        public IResult execute(final Iterable<IResource> rawInput, final IJobMonitor monitor, final IPropertiesAccessor pa, @NotNull final ProgressMonitor progressMonitor) {
          Iterable<IResource> _output_yw3i4y_a0a = null;
          final Iterable<GResource> input = (Iterable<GResource>) (Iterable) rawInput;
          switch (0) {
            case 0:
              vars(pa.global()).projectNames(new ArrayList());
              vars(pa.global()).outputLocation(new ArrayList());
              vars(pa.global()).projectNames().add("Name");
              vars(pa.global()).outputLocation().add("Location");
            default:
              return new IResult.SUCCESS(_output_yw3i4y_a0a);
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
      return Sequence.fromArray(new ITarget.Name[]{new ITarget.Name("jetbrains.mps.lang.core.TextGen.textGen")});
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
      ListSequence.fromList(rv).addElement(GResource.class);
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
        ((Tuples._2) t).assign((Tuples._2) copyFrom);
      }
      return t;
    }

    public static getInfo_Facet.Target_extract.Parameters vars(IPropertiesPool ppool) {
      return ppool.properties(name, getInfo_Facet.Target_extract.Parameters.class);
    }

    public static class Parameters extends MultiTuple._2<ArrayList, AbstractList> {
      public Parameters() {
        super();
      }

      public Parameters(ArrayList projectNames, AbstractList outputLocation) {
        super(projectNames, outputLocation);
      }

      public ArrayList projectNames(ArrayList value) {
        return super._0(value);
      }

      public AbstractList outputLocation(AbstractList value) {
        return super._1(value);
      }

      public ArrayList projectNames() {
        return super._0();
      }

      public AbstractList outputLocation() {
        return super._1();
      }

      @SuppressWarnings(value = "unchecked")
      public getInfo_Facet.Target_extract.Parameters assignFrom(Tuples._2<ArrayList, AbstractList> from) {
        return (getInfo_Facet.Target_extract.Parameters) super.assign(from);
      }
    }
  }

  public static class TargetProperties implements IPropertiesPersistence {
    public TargetProperties() {
    }

    public void storeValues(Map<String, String> store, IPropertiesPool properties) {
      {
        ITarget.Name name = new ITarget.Name("org.campagnelab.bdval.getInfo.extract");
        if (properties.hasProperties(name)) {
          getInfo_Facet.Target_extract.Parameters props = properties.properties(name, getInfo_Facet.Target_extract.Parameters.class);
          MapSequence.fromMap(store).put("org.campagnelab.bdval.getInfo.extract.projectNames", null);
          MapSequence.fromMap(store).put("org.campagnelab.bdval.getInfo.extract.outputLocation", null);
        }
      }
    }

    public void loadValues(Map<String, String> store, IPropertiesPool properties) {
      try {
        {
          ITarget.Name name = new ITarget.Name("org.campagnelab.bdval.getInfo.extract");
          getInfo_Facet.Target_extract.Parameters props = properties.properties(name, getInfo_Facet.Target_extract.Parameters.class);
          if (MapSequence.fromMap(store).containsKey("org.campagnelab.bdval.getInfo.extract.projectNames")) {
            props.projectNames(null);
          }
          if (MapSequence.fromMap(store).containsKey("org.campagnelab.bdval.getInfo.extract.outputLocation")) {
            props.outputLocation(null);
          }
        }
      } catch (RuntimeException re) {
      }
    }
  }
}
