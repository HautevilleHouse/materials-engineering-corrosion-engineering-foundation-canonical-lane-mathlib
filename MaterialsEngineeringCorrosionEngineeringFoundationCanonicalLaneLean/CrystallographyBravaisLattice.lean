import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean

structure BravaisLatticePackage where
  latticeVectors : Type u
  basisAtoms : Type v
  primitiveCellVolume : Prop
  symmetryGroup : Prop
  latticeParameters : Prop

structure BravaisLatticeEvidence (B : BravaisLatticePackage) where
  primitiveCellVolumeClosed : B.primitiveCellVolume
  symmetryGroupClosed : B.symmetryGroup
  latticeParametersClosed : B.latticeParameters

def BravaisLatticeClosed (B : BravaisLatticePackage) : Prop :=
  B.primitiveCellVolume ∧ B.symmetryGroup ∧ B.latticeParameters

theorem bravais_lattice_closed_from_evidence (B : BravaisLatticePackage) (E : BravaisLatticeEvidence B) : BravaisLatticeClosed B := by
  exact And.intro E.primitiveCellVolumeClosed (And.intro E.symmetryGroupClosed E.latticeParametersClosed)

end MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
