import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean

structure PourbaixDiagramPackage where
  phRange : Type u
  potentialRange : Type v
  stabilityRegions : Prop
  corrosionRegions : Prop
  passivationRegions : Prop

structure PourbaixDiagramEvidence (P : PourbaixDiagramPackage) where
  stabilityRegionsClosed : P.stabilityRegions
  corrosionRegionsClosed : P.corrosionRegions
  passivationRegionsClosed : P.passivationRegions

def PourbaixDiagramClosed (P : PourbaixDiagramPackage) : Prop :=
  P.stabilityRegions ∧ P.corrosionRegions ∧ P.passivationRegions

theorem pourbaix_diagram_closed_from_evidence (P : PourbaixDiagramPackage)
    (E : PourbaixDiagramEvidence P) : PourbaixDiagramClosed P := by
  exact And.intro E.stabilityRegionsClosed
    (And.intro E.corrosionRegionsClosed E.passivationRegionsClosed)

end MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse