import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean

structure CreviceCorrosionPackage where
  creviceGeometry : Type u
  criticalCrevicePotential : Type v
  oxygenDepletion : Prop
  phDropWithinCrevice : Prop
  chlorideConcentrationEffect : Prop

structure CreviceCorrosionEvidence (C : CreviceCorrosionPackage) where
  oxygenDepletionClosed : C.oxygenDepletion
  phDropWithinCreviceClosed : C.phDropWithinCrevice
  chlorideConcentrationEffectClosed : C.chlorideConcentrationEffect

def CreviceCorrosionClosed (C : CreviceCorrosionPackage) : Prop :=
  C.oxygenDepletion ∧ C.phDropWithinCrevice ∧ C.chlorideConcentrationEffect

theorem crevice_corrosion_closed_from_evidence (C : CreviceCorrosionPackage)
    (E : CreviceCorrosionEvidence C) : CreviceCorrosionClosed C := by
  exact And.intro E.oxygenDepletionClosed
    (And.intro E.phDropWithinCreviceClosed E.chlorideConcentrationEffectClosed)

end MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse