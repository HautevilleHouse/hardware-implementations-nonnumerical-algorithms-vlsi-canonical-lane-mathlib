import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HardwareImplementationsNonnumericalAlgorithmsVlsiCanonicalLaneLean

structure GlobalRouting where
  netlist : List String
  costFunction : Nat
  topologyOk : Prop

def routingAdmitted (g : GlobalRouting) : AdmissibleClass :=
  { arch := { routingGraph := (), cellLibrary := (), clockTree := () },
    admits := True.intro,
    endpointSatisfied := g.topologyOk,
    remainderRecorded := ¬ g.topologyOk,
    gateWitness := Or.inl (by trivial)
  }

theorem routing_bridge_closed (g : GlobalRouting) : bridgeClosed (routingAdmitted g) := by
  exact True.intro

theorem routing_gate_closed (g : GlobalRouting) : gateClosed (routingAdmitted g) := by
  unfold routingAdmitted
  exact Or.inl (by trivial)

end HardwareImplementationsNonnumericalAlgorithmsVlsiCanonicalLaneLean
end HautevilleHouse