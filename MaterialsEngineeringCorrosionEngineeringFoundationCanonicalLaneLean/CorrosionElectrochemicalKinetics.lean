import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean

structure ElectrochemicalKineticsPackage where
  electrodePotential : Type u
  currentDensity : Type v
  tafelEquation : Prop
  polarizationCurve : Prop
  corrosionRate : Prop

structure ElectrochemicalKineticsEvidence (E : ElectrochemicalKineticsPackage) where
  tafelEquationClosed : E.tafelEquation
  polarizationCurveClosed : E.polarizationCurve
  corrosionRateClosed : E.corrosionRate

def ElectrochemicalKineticsClosed (E : ElectrochemicalKineticsPackage) : Prop :=
  E.tafelEquation ∧ E.polarizationCurve ∧ E.corrosionRate

theorem electrochemical_kinetics_closed_from_evidence (E : ElectrochemicalKineticsPackage) (Ev : ElectrochemicalKineticsEvidence E) : ElectrochemicalKineticsClosed E := by
  exact And.intro Ev.tafelEquationClosed (And.intro Ev.polarizationCurveClosed Ev.corrosionRateClosed)

end MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
