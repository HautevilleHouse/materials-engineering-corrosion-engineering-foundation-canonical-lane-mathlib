import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  components : Type u
  phases : Type v
  phaseBoundaries : Prop
  gibbsFreeEnergy : Prop
  leverRule : Prop
  phaseBoundariesClosed : phaseBoundaries
  gibbsFreeEnergyClosed : gibbsFreeEnergy
  leverRuleClosed : leverRule

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy
  leverRuleClosed : P.leverRule

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaries ∧ P.gibbsFreeEnergy ∧ P.leverRule

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesClosed (And.intro E.gibbsFreeEnergyClosed E.leverRuleClosed)

end MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse