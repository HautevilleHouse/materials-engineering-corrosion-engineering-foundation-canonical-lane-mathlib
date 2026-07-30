import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean

structure PassivityModelPackage where
  passiveFilmThickness : Type u
  filmFormationPotential : Type v
  filmBreakdownPotential : Prop
  currentDensityInPassiveRange : Prop
  repassivationCapability : Prop

structure PassivityModelEvidence (M : PassivityModelPackage) where
  filmBreakdownPotentialClosed : M.filmBreakdownPotential
  currentDensityInPassiveRangeClosed : M.currentDensityInPassiveRange
  repassivationCapabilityClosed : M.repassivationCapability

def PassivityModelClosed (M : PassivityModelPackage) : Prop :=
  M.filmBreakdownPotential ∧ M.currentDensityInPassiveRange ∧ M.repassivationCapability

theorem passivity_model_closed_from_evidence (M : PassivityModelPackage)
    (E : PassivityModelEvidence M) : PassivityModelClosed M := by
  exact And.intro E.filmBreakdownPotentialClosed
    (And.intro E.currentDensityInPassiveRangeClosed E.repassivationCapabilityClosed)

end MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse