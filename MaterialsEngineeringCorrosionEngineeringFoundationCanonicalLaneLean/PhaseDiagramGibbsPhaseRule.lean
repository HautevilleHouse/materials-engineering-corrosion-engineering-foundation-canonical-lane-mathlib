import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean

structure GibbsPhaseRulePackage where
  components : Nat
  phases : Nat
  degreesOfFreedom : Nat
  equilibriumCondition : Prop
  phaseBoundary : Prop

structure GibbsPhaseRuleEvidence (G : GibbsPhaseRulePackage) where
  equilibriumConditionClosed : G.equilibriumCondition
  phaseBoundaryClosed : G.phaseBoundary

def GibbsPhaseRuleClosed (G : GibbsPhaseRulePackage) : Prop :=
  G.equilibriumCondition ∧ G.phaseBoundary

theorem gibbs_phase_rule_closed_from_evidence (G : GibbsPhaseRulePackage) (E : GibbsPhaseRuleEvidence G) : GibbsPhaseRuleClosed G := by
  exact And.intro E.equilibriumConditionClosed E.phaseBoundaryClosed

end MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
