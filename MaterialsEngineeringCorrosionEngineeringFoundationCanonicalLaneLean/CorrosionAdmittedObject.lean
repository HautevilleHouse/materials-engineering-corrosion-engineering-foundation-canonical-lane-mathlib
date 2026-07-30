import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean

structure CorrosionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CorrosionAdmittedObject where
  space : CorrosionSpace
  metallicStructure : Prop
  corrosiveEnvironment : Prop
  electrochemicalModel : Prop
  passivationLayer : Prop
  conclusion : passivationLayer

structure CorrosionEndgameState where
  object : CorrosionAdmittedObject

def CorrosionWitnessClosed (O : CorrosionAdmittedObject) : Prop :=
  O.passivationLayer

end MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse