import MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean.CrystallographyAdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundation

structure PhaseDiagramsPackage (A : AdmissibleClass) where
  phaseBoundaryDefined : Prop
  gibbsEnergyMinimized : Prop
  leverRuleValid : Prop
  tttDiagramComplete : Prop

structure PhaseDiagramsEvidence (A : AdmissibleClass) (P : PhaseDiagramsPackage A) where
  phaseBoundaryDefinedClosed : P.phaseBoundaryDefined
  gibbsEnergyMinimizedClosed : P.gibbsEnergyMinimized
  leverRuleValidClosed : P.leverRuleValid
  tttDiagramCompleteClosed : P.tttDiagramComplete

def PhaseDiagramsClosed (A : AdmissibleClass) (P : PhaseDiagramsPackage A) : Prop :=
  P.phaseBoundaryDefined ∧ P.gibbsEnergyMinimized ∧ P.leverRuleValid ∧ P.tttDiagramComplete

theorem phase_diagrams_closed_from_evidence (A : AdmissibleClass) (P : PhaseDiagramsPackage A)
    (E : PhaseDiagramsEvidence A P) : PhaseDiagramsClosed A P := by
  exact And.intro E.phaseBoundaryDefinedClosed
    (And.intro E.gibbsEnergyMinimizedClosed
      (And.intro E.leverRuleValidClosed E.tttDiagramCompleteClosed))

end MaterialsEngineeringCorrosionEngineeringFoundation
end HautevilleHouse