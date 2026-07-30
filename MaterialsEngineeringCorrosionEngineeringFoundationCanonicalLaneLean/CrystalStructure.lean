import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean

structure CrystalStructurePackage where
  bravaisLattice : Type u
  latticeParameters : Type v
  atomicBasis : Type w
  symmetryGroup : Prop
  xrayDiffractionPattern : Prop
  symmetryGroupClosed : symmetryGroup
  xrayDiffractionPatternClosed : xrayDiffractionPattern

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  symmetryGroupClosed : C.symmetryGroup
  xrayDiffractionPatternClosed : C.xrayDiffractionPattern

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.symmetryGroup ∧ C.xrayDiffractionPattern

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage) (E : CrystalStructureEvidence C) : CrystalStructureClosed C := by
  exact And.intro E.symmetryGroupClosed E.xrayDiffractionPatternClosed

end MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse