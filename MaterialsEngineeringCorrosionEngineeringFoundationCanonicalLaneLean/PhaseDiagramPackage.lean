import MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean.CrystallographyPackage

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean

structure PhaseDiagramPackage {C : CrystallographyPackage} where
  phaseBoundaries : Prop
  temperatureComposition : Prop
  solubilityLimits : Prop
  corrosionProductStability : Prop

structure PhaseDiagramEvidence {C : CrystallographyPackage}
    (P : PhaseDiagramPackage C) where
  phaseBoundariesClosed : P.phaseBoundaries
  temperatureCompositionClosed : P.temperatureComposition
  solubilityLimitsClosed : P.solubilityLimits
  corrosionProductStabilityClosed : P.corrosionProductStability

def PhaseDiagramClosed {C : CrystallographyPackage}
    (P : PhaseDiagramPackage C) : Prop :=
  P.phaseBoundaries ∧ P.temperatureComposition ∧ P.solubilityLimits ∧ P.corrosionProductStability

theorem phase_diagram_closed_from_evidence {C : CrystallographyPackage}
    (P : PhaseDiagramPackage C) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesClosed
    (And.intro E.temperatureCompositionClosed
      (And.intro E.solubilityLimitsClosed E.corrosionProductStabilityClosed))

end MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse