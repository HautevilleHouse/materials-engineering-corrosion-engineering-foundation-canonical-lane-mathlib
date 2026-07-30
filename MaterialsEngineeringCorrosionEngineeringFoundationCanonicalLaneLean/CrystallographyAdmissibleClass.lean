import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundation

structure CrystallographyAdmissibleObject where
  spaceGroup : String
  bravaisLattice : String
  unitCellVolume : ℝ
  symmetryOperatorCount : Nat
  latticeParametersMatch : Prop
  symmetryConstraintsSatisfied : Prop

structure AdmissibleClass where
  object : CrystallographyAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CrystallographyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringCorrosionEngineeringFoundation
end HautevilleHouse