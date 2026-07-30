import MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean.PhaseDiagramPackage

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean

structure ElasticityFracturePackage {C : CrystallographyPackage}
    {P : PhaseDiagramPackage C} where
  stressStrainRelation : Prop
  elasticModuli : Prop
  fractureToughness : Prop
  corrosionAssistedCracking : Prop

structure ElasticityFractureEvidence {C : CrystallographyPackage}
    {P : PhaseDiagramPackage C} (E : ElasticityFracturePackage C P) where
  stressStrainRelationClosed : E.stressStrainRelation
  elasticModuliClosed : E.elasticModuli
  fractureToughnessClosed : E.fractureToughness
  corrosionAssistedCrackingClosed : E.corrosionAssistedCracking

def ElasticityFractureClosed {C : CrystallographyPackage}
    {P : PhaseDiagramPackage C} (E : ElasticityFracturePackage C P) : Prop :=
  E.stressStrainRelation ∧ E.elasticModuli ∧ E.fractureToughness ∧ E.corrosionAssistedCracking

theorem elasticity_fracture_closed_from_evidence {C : CrystallographyPackage}
    {P : PhaseDiagramPackage C} (Epkg : ElasticityFracturePackage C P)
    (Ev : ElasticityFractureEvidence Epkg) : ElasticityFractureClosed Epkg := by
  exact And.intro Ev.stressStrainRelationClosed
    (And.intro Ev.elasticModuliClosed
      (And.intro Ev.fractureToughnessClosed Ev.corrosionAssistedCrackingClosed))

end MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse