import MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean.FractureMechanicsPackage

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundation

structure CorrosionKineticsPackage (A : AdmissibleClass) (P : PhaseDiagramsPackage A)
    (Epkg : ElasticityMechanicsPackage A P) (F : FractureMechanicsPackage A P Epkg) where
  electrodeKineticsModeled : Prop
  passivationBreakdownCondition : Prop
  corrosionRatePredicted : Prop
  environmentInteractionCaptured : Prop

structure CorrosionKineticsEvidence (A : AdmissibleClass) (P : PhaseDiagramsPackage A)
    (Epkg : ElasticityMechanicsPackage A P) (F : FractureMechanicsPackage A P Epkg)
    (C : CorrosionKineticsPackage A P Epkg F) where
  electrodeKineticsClosed : C.electrodeKineticsModeled
  passivationBreakdownClosed : C.passivationBreakdownCondition
  corrosionRateClosed : C.corrosionRatePredicted
  environmentInteractionClosed : C.environmentInteractionCaptured

def CorrosionKineticsClosed (A : AdmissibleClass) (P : PhaseDiagramsPackage A)
    (Epkg : ElasticityMechanicsPackage A P) (F : FractureMechanicsPackage A P Epkg)
    (C : CorrosionKineticsPackage A P Epkg F) : Prop :=
  C.electrodeKineticsModeled ∧ C.passivationBreakdownCondition ∧ C.corrosionRatePredicted ∧ C.environmentInteractionCaptured

theorem corrosion_kinetics_closed_from_evidence (A : AdmissibleClass) (P : PhaseDiagramsPackage A)
    (Epkg : ElasticityMechanicsPackage A P) (F : FractureMechanicsPackage A P Epkg)
    (C : CorrosionKineticsPackage A P Epkg F) (E : CorrosionKineticsEvidence A P Epkg F C) :
    CorrosionKineticsClosed A P Epkg F C := by
  exact And.intro E.electrodeKineticsClosed
    (And.intro E.passivationBreakdownClosed
      (And.intro E.corrosionRateClosed E.environmentInteractionClosed))

end MaterialsEngineeringCorrosionEngineeringFoundation
end HautevilleHouse