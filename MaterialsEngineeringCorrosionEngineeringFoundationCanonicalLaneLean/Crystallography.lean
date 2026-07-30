import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLattice : Type u
  unitCellGeometry : Prop
  symmetryGroup : Type v
  millerIndices : Type w
  latticeParameters : Prop
  atomicPositions : Prop
  spaceGroupDetermined : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeIdentified : C.bravaisLattice
  unitCellGeometryClosed : C.unitCellGeometry
  symmetryGroupDetermined : C.symmetryGroup
  millerIndicesDefined : C.millerIndices
  latticeParametersClosed : C.latticeParameters
  atomicPositionsClosed : C.atomicPositions
  spaceGroupDeterminedClosed : C.spaceGroupDetermined

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLattice ∧ C.unitCellGeometry ∧ C.symmetryGroup ∧
  C.millerIndices ∧ C.latticeParameters ∧ C.atomicPositions ∧ C.spaceGroupDetermined

theorem crystallography_closed_from_evidence (C : CrystallographyPackage)
    (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeIdentified
    (And.intro E.unitCellGeometryClosed
      (And.intro E.symmetryGroupDetermined
        (And.intro E.millerIndicesDefined
          (And.intro E.latticeParametersClosed
            (And.intro E.atomicPositionsClosed E.spaceGroupDeterminedClosed)))))

end MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
