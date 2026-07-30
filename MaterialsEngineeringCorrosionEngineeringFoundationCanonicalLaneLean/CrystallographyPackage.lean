import MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean

structure CrystallographyPackage where
  latticeStructure : Type u
  bravaisLattice : Prop
  unitCellGeometry : Prop
  symmetryGroup : Prop
  defectDensity : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClosed : C.bravaisLattice
  unitCellGeometryClosed : C.unitCellGeometry
  symmetryGroupClosed : C.symmetryGroup
  defectDensityClosed : C.defectDensity

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLattice ∧ C.unitCellGeometry ∧ C.symmetryGroup ∧ C.defectDensity

theorem crystallography_closed_from_evidence (C : CrystallographyPackage)
    (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClosed
    (And.intro E.unitCellGeometryClosed
      (And.intro E.symmetryGroupClosed E.defectDensityClosed))

end MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse