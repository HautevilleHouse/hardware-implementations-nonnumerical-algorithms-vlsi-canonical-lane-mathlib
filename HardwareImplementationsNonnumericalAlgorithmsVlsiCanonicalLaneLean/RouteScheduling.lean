import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HardwareImplementationsNonnumericalAlgorithmsVlsiCanonicalLaneLean

structure RoutingResource where
  capacity : Nat
  used : Nat
deriving Repr, DecidableEq

structure Net where
  source : String
  sinks : List String
  requiredDelay : Nat
deriving Repr, DecidableEq

structure RouteAssignment where
  net : Net
  assigned : Bool
  resourceUsed : RoutingResource
deriving Repr, DecidableEq

def routeClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end HautevilleHouse.HardwareImplementationsNonnumericalAlgorithmsVlsiCanonicalLaneLean
end HautevilleHouse
