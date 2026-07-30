import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean

structure StressStrainPackage where
  stressTensor : Type u
  strainTensor : Type v
  constitutiveLaw : Prop
  elasticModuli : Prop
  yieldCondition : Prop

structure StressStrainEvidence (S : StressStrainPackage) where
  constitutiveLawClosed : S.constitutiveLaw
  elasticModuliClosed : S.elasticModuli
  yieldConditionClosed : S.yieldCondition

def StressStrainClosed (S : StressStrainPackage) : Prop :=
  S.constitutiveLaw ∧ S.elasticModuli ∧ S.yieldCondition

theorem stress_strain_closed_from_evidence (S : StressStrainPackage) (E : StressStrainEvidence S) : StressStrainClosed S := by
  exact And.intro E.constitutiveLawClosed (And.intro E.elasticModuliClosed E.yieldConditionClosed)

end MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
