import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean.CrystallographyAdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundation

def CrystallographyWitnessClosed (O : CrystallographyAdmissibleObject) : Prop :=
  O.latticeParametersMatch ∧ O.symmetryConstraintsSatisfied

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CrystallographyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  refine And.intro ?_ ?_
  · exact A.object.latticeParametersMatch
  · exact A.object.symmetryConstraintsSatisfied

end MaterialsEngineeringCorrosionEngineeringFoundation
end HautevilleHouse