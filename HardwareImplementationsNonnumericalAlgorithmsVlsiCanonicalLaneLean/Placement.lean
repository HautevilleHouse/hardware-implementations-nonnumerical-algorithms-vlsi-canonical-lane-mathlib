import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HardwareImplementationsNonnumericalAlgorithmsVlsiCanonicalLaneLean

structure PlacementCoordinate where
  x : Nat
  y : Nat
deriving Repr, DecidableEq

structure CellPlacement where
  cellName : String
  location : PlacementCoordinate
  orientation : String
deriving Repr, DecidableEq

structure PlacementResult where
  placements : List CellPlacement
  wirelength : Nat
  overlapFree : Prop
deriving Repr, DecidableEq

def placementClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end HautevilleHouse.HardwareImplementationsNonnumericalAlgorithmsVlsiCanonicalLaneLean
end HautevilleHouse
