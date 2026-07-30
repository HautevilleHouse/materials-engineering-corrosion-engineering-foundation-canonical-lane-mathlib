import MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundation

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MaterialsEngineeringCorrosionEngineeringFoundation
end HautevilleHouse