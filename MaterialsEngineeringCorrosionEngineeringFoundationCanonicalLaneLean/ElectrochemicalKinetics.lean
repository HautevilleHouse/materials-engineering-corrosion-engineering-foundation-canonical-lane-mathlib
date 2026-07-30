import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean

structure ElectrochemicalKineticsPackage where
  exchangeCurrentDensity : Type u
  tafelSlope : Type v
  chargeTransferCoefficient : Prop
  activationOverpotential : Prop
  massTransportContribution : Prop

structure ElectrochemicalKineticsEvidence (K : ElectrochemicalKineticsPackage) where
  chargeTransferCoefficientClosed : K.chargeTransferCoefficient
  activationOverpotentialClosed : K.activationOverpotential
  massTransportContributionClosed : K.massTransportContribution

def ElectrochemicalKineticsClosed (K : ElectrochemicalKineticsPackage) : Prop :=
  K.chargeTransferCoefficient ∧ K.activationOverpotential ∧ K.massTransportContribution

theorem electrochemical_kinetics_closed_from_evidence (K : ElectrochemicalKineticsPackage)
    (E : ElectrochemicalKineticsEvidence K) : ElectrochemicalKineticsClosed K := by
  exact And.intro E.chargeTransferCoefficientClosed
    (And.intro E.activationOverpotentialClosed E.massTransportContributionClosed)

end MaterialsEngineeringCorrosionEngineeringFoundationCanonicalLaneLean
end HautevilleHouse