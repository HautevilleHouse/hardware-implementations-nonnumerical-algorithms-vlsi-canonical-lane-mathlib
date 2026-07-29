import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HardwareImplementationsNonnumericalAlgorithmsVlsiCanonicalLaneLean

structure VlsiSignal where
  name : String
  width : Nat
  signed : Bool
deriving Repr, DecidableEq

structure VlsiCell where
  name : String
  inputs : List VlsiSignal
  outputs : List VlsiSignal
  delay : Nat
deriving Repr, DecidableEq

structure CircuitGraph where
  cells : List VlsiCell
  wires : List (String × String)
deriving Repr, DecidableEq

structure NonnumericalAlgorithm where
  name : String
  inputFormat : String
  steps : List String
deriving Repr, DecidableEq

end HautevilleHouse.HardwareImplementationsNonnumericalAlgorithmsVlsiCanonicalLaneLean
end HautevilleHouse
