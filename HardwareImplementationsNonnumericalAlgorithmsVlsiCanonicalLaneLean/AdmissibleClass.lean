import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HardwareImplementationsNonnumericalAlgorithmsVlsiCanonicalLaneLean

structure VlsiArchitecture where
  routingGraph : Type
  cellLibrary : Type
  clockTree : Type

def admitsOnChip (arch : VlsiArchitecture) : Prop := True

structure AdmissibleClass where
  arch : VlsiArchitecture
  admits : admitsOnChip arch
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end HardwareImplementationsNonnumericalAlgorithmsVlsiCanonicalLaneLean
end HautevilleHouse