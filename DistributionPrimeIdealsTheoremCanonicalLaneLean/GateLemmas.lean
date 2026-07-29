import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionPrimeIdealsTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DistributionPrimeIdealsTheoremCanonicalLaneLean
end HautevilleHouse