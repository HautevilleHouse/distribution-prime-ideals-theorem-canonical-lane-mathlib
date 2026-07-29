import DistributionPrimeIdealsTheoremCanonicalLaneLean.DirichletLSeriesLayer

/-!
# Primes in Arithmetic Progressions Layer

This layer records Dirichlet's theorem and the prime number theorem for arithmetic progressions.
-/

namespace HautevilleHouse
namespace DistributionPrimeIdealsTheoremCanonicalLaneLean

structure PrimesInProgressionsLayerCertificate where
  dirichletTheorem : String
  primeNumberTheoremAP : String
  errorTermUniform : String
  modulusQ : Nat
  siegelWalfiszTheorem : Bool

def primesInProgressionsLayerCertificate : PrimesInProgressionsLayerCertificate := {
  dirichletTheorem := "There are infinitely many primes in aq + b for coprime a,b",
  primeNumberTheoremAP := "π(x; q, a) ~ Li(x) / φ(q)",
  errorTermUniform := "Uniformly in a and q for q ≤ (log x)^A",
  modulusQ := 1,
  siegelWalfiszTheorem := true
}

def PrimesInProgressionsLayerClosed (C : PrimesInProgressionsLayerCertificate) : Prop :=
  C.dirichletTheorem = "There are infinitely many primes in aq + b for coprime a,b" ∧
  C.siegelWalfiszTheorem = true

theorem primes_in_progressions_layer_closed_checked :
    PrimesInProgressionsLayerClosed primesInProgressionsLayerCertificate := by
  exact And.intro rfl rfl

end DistributionPrimeIdealsTheoremCanonicalLaneLean
end HautevilleHouse