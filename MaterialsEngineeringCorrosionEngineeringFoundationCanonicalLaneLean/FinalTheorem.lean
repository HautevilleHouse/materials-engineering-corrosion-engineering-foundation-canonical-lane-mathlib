import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean.Crystallography
import MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean.PhaseDiagrams
import MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean.ElasticityFracture
import MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean.CorrosionKinetics

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object ≠ ∅

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedCorrosionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_corrosion_endgame (A : AdmissibleClass) :
    ConstrainedCorrosionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
