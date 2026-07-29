import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HardwareImplementationsNonnumericalAlgorithmsVlsiCanonicalLaneLean

structure PartitionResult where
  partA : List String
  partB : List String
  cutSize : Nat
deriving Repr, DecidableEq

structure PartitionAlgorithm where
  name : String
  iterative : Bool

def partitionClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end HautevilleHouse.HardwareImplementationsNonnumericalAlgorithmsVlsiCanonicalLaneLean
end HautevilleHouse
