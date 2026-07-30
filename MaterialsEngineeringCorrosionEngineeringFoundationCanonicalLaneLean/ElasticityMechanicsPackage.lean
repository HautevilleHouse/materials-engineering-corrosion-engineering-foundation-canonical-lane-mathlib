import MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean.PhaseDiagramsPackage

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundation

structure ElasticityMechanicsPackage (A : AdmissibleClass) (P : PhaseDiagramsPackage A) where
  stressStrainConstitutive : Prop
  elasticModuliDefined : Prop
  equilibriumEquations : Prop
  boundaryConditionsApplied : Prop

structure ElasticityMechanicsEvidence (A : AdmissibleClass) (P : PhaseDiagramsPackage A)
    (E : ElasticityMechanicsPackage A P) where
  stressStrainConstitutiveClosed : E.stressStrainConstitutive
  elasticModuliDefinedClosed : E.elasticModuliDefined
  equilibriumEquationsClosed : E.equilibriumEquations
  boundaryConditionsAppliedClosed : E.boundaryConditionsApplied

def ElasticityMechanicsClosed (A : AdmissibleClass) (P : PhaseDiagramsPackage A)
    (E : ElasticityMechanicsPackage A P) : Prop :=
  E.stressStrainConstitutive ∧ E.elasticModuliDefined ∧ E.equilibriumEquations ∧ E.boundaryConditionsApplied

theorem elasticity_mechanics_closed_from_evidence (A : AdmissibleClass) (P : PhaseDiagramsPackage A)
    (Epkg : ElasticityMechanicsPackage A P) (Ev : ElasticityMechanicsEvidence A P Epkg) :
    ElasticityMechanicsClosed A P Epkg := by
  exact And.intro Ev.stressStrainConstitutiveClosed
    (And.intro Ev.elasticModuliDefinedClosed
      (And.intro Ev.equilibriumEquationsClosed Ev.boundaryConditionsAppliedClosed))

end MaterialsEngineeringCorrosionEngineeringFoundation
end HautevilleHouse