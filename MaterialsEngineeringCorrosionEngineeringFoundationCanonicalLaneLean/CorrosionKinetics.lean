import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean

structure CorrosionKineticsPackage where
  electrochemicalCell : Type u
  electrodePotentials : Type v
  currentDensity : Prop
  tafelLaw : Prop
  corrosionRate : Prop
  pittingPotential : Prop
  passivationLayer : Prop

structure CorrosionKineticsEvidence (C : CorrosionKineticsPackage) where
  electrochemicalCellIdentified : C.electrochemicalCell
  electrodePotentialsDefined : C.electrodePotentials
  currentDensityClosed : C.currentDensity
  tafelLawClosed : C.tafelLaw
  corrosionRateClosed : C.corrosionRate
  pittingPotentialClosed : C.pittingPotential
  passivationLayerClosed : C.passivationLayer

def CorrosionKineticsClosed (C : CorrosionKineticsPackage) : Prop :=
  C.electrochemicalCell ∧ C.electrodePotentials ∧ C.currentDensity ∧
  C.tafelLaw ∧ C.corrosionRate ∧ C.pittingPotential ∧ C.passivationLayer

theorem corrosion_kinetics_closed_from_evidence (C : CorrosionKineticsPackage)
    (E : CorrosionKineticsEvidence C) : CorrosionKineticsClosed C := by
  exact And.intro E.electrochemicalCellIdentified
    (And.intro E.electrodePotentialsDefined
      (And.intro E.currentDensityClosed
        (And.intro E.tafelLawClosed
          (And.intro E.corrosionRateClosed
            (And.intro E.pittingPotentialClosed E.passivationLayerClosed)))))

end MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
