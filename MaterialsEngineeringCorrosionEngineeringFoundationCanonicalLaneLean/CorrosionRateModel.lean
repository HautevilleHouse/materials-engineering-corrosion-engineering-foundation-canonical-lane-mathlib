import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean

structure CorrosionRateModelPackage where
  faradayConstant : Type u
  equivalentWeight : Type v
  densityOfMaterial : Prop
  currentDensityCorrosion : Prop
  penetrationRate : Prop

structure CorrosionRateModelEvidence (R : CorrosionRateModelPackage) where
  densityOfMaterialClosed : R.densityOfMaterial
  currentDensityCorrosionClosed : R.currentDensityCorrosion
  penetrationRateClosed : R.penetrationRate

def CorrosionRateModelClosed (R : CorrosionRateModelPackage) : Prop :=
  R.densityOfMaterial ∧ R.currentDensityCorrosion ∧ R.penetrationRate

theorem corrosion_rate_model_closed_from_evidence (R : CorrosionRateModelPackage)
    (E : CorrosionRateModelEvidence R) : CorrosionRateModelClosed R := by
  exact And.intro E.densityOfMaterialClosed
    (And.intro E.currentDensityCorrosionClosed E.penetrationRateClosed)

end MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse