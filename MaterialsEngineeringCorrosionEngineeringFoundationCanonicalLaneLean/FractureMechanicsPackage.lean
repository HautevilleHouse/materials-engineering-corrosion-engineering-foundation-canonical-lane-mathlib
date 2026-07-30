import MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean.ElasticityMechanicsPackage

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundation

structure FractureMechanicsPackage (A : AdmissibleClass) (P : PhaseDiagramsPackage A)
    (Epkg : ElasticityMechanicsPackage A P) where
  stressIntensityFactorComputed : Prop
  crackPropagationCriterion : Prop
  fractureToughnessMeasured : Prop
  parisLawValid : Prop

structure FractureMechanicsEvidence (A : AdmissibleClass) (P : PhaseDiagramsPackage A)
    (Epkg : ElasticityMechanicsPackage A P) (F : FractureMechanicsPackage A P Epkg) where
  stressIntensityFactorClosed : F.stressIntensityFactorComputed
  crackPropagationCriterionClosed : F.crackPropagationCriterion
  fractureToughnessClosed : F.fractureToughnessMeasured
  parisLawClosed : F.parisLawValid

def FractureMechanicsClosed (A : AdmissibleClass) (P : PhaseDiagramsPackage A)
    (Epkg : ElasticityMechanicsPackage A P) (F : FractureMechanicsPackage A P Epkg) : Prop :=
  F.stressIntensityFactorComputed ∧ F.crackPropagationCriterion ∧ F.fractureToughnessMeasured ∧ F.parisLawValid

theorem fracture_mechanics_closed_from_evidence (A : AdmissibleClass) (P : PhaseDiagramsPackage A)
    (Epkg : ElasticityMechanicsPackage A P) (F : FractureMechanicsPackage A P Epkg)
    (E : FractureMechanicsEvidence A P Epkg F) : FractureMechanicsClosed A P Epkg F := by
  exact And.intro E.stressIntensityFactorClosed
    (And.intro E.crackPropagationCriterionClosed
      (And.intro E.fractureToughnessClosed E.parisLawClosed))

end MaterialsEngineeringCorrosionEngineeringFoundation
end HautevilleHouse