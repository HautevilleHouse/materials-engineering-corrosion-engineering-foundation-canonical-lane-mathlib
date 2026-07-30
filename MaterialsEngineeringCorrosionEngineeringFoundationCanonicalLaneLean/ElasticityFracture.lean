import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean

structure ElasticityFracturePackage where
  stressTensor : Type u
  strainTensor : Type v
  elasticModulus : Prop
  poissonRatio : Prop
  fractureToughness : Prop
  stressConcentration : Prop
  parisLaw : Prop

structure ElasticityFractureEvidence (E : ElasticityFracturePackage) where
  stressTensorDefined : E.stressTensor
  strainTensorDefined : E.strainTensor
  elasticModulusClosed : E.elasticModulus
  poissonRatioClosed : E.poissonRatio
  fractureToughnessClosed : E.fractureToughness
  stressConcentrationClosed : E.stressConcentration
  parisLawClosed : E.parisLaw

def ElasticityFractureClosed (E : ElasticityFracturePackage) : Prop :=
  E.stressTensor ∧ E.strainTensor ∧ E.elasticModulus ∧
  E.poissonRatio ∧ E.fractureToughness ∧ E.stressConcentration ∧ E.parisLaw

theorem elasticity_fracture_closed_from_evidence (E : ElasticityFracturePackage)
    (Ev : ElasticityFractureEvidence E) : ElasticityFractureClosed E := by
  exact And.intro Ev.stressTensorDefined
    (And.intro Ev.strainTensorDefined
      (And.intro Ev.elasticModulusClosed
        (And.intro Ev.poissonRatioClosed
          (And.intro Ev.fractureToughnessClosed
            (And.intro Ev.stressConcentrationClosed Ev.parisLawClosed)))))

end MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
