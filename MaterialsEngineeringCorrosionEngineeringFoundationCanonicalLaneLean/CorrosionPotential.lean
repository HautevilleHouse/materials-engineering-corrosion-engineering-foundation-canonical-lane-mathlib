import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean

structure CorrosionPotentialPackage where
  electrodePotential : Type u
  corrosionPotential : Type v
  potentialSweep : Prop
  openCircuitCondition : Prop
  polarizationCurveType : Prop

structure CorrosionPotentialEvidence (C : CorrosionPotentialPackage) where
  potentialSweepClosed : C.potentialSweep
  openCircuitConditionClosed : C.openCircuitCondition
  polarizationCurveTypeClosed : C.polarizationCurveType

def CorrosionPotentialClosed (C : CorrosionPotentialPackage) : Prop :=
  C.potentialSweep ∧ C.openCircuitCondition ∧ C.polarizationCurveType

theorem corrosion_potential_closed_from_evidence (C : CorrosionPotentialPackage)
    (E : CorrosionPotentialEvidence C) : CorrosionPotentialClosed C := by
  exact And.intro E.potentialSweepClosed
    (And.intro E.openCircuitConditionClosed E.polarizationCurveTypeClosed)

end MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse