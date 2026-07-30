import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  temperaturePressureSpace : Type u
  phases : Type v
  phaseBoundaries : Prop
  triplePoints : Prop
  criticalPoints : Prop
  gibbsPhaseRule : Prop
  leverRule : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  temperaturePressureSpaceIdentified : P.temperaturePressureSpace
  phasesIdentified : P.phases
  phaseBoundariesClosed : P.phaseBoundaries
  triplePointsClosed : P.triplePoints
  criticalPointsClosed : P.criticalPoints
  gibbsPhaseRuleClosed : P.gibbsPhaseRule
  leverRuleClosed : P.leverRule

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.temperaturePressureSpace ∧ P.phases ∧ P.phaseBoundaries ∧
  P.triplePoints ∧ P.criticalPoints ∧ P.gibbsPhaseRule ∧ P.leverRule

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.temperaturePressureSpaceIdentified
    (And.intro E.phasesIdentified
      (And.intro E.phaseBoundariesClosed
        (And.intro E.triplePointsClosed
          (And.intro E.criticalPointsClosed
            (And.intro E.gibbsPhaseRuleClosed E.leverRuleClosed)))))

end MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
