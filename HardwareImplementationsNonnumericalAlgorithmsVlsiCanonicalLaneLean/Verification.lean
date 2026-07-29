import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HardwareImplementationsNonnumericalAlgorithmsVlsiCanonicalLaneLean

structure EquivalenceCheck where
  circuitA : String
  circuitB : String
  passed : Bool
deriving Repr, DecidableEq

structure FormalProperty where
  invariant : String
  verified : Bool
deriving Repr, DecidableEq

def verificationClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end HautevilleHouse.HardwareImplementationsNonnumericalAlgorithmsVlsiCanonicalLaneLean
end HautevilleHouse
