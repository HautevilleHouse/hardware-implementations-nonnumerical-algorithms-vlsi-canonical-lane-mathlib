import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HardwareImplementationsNonnumericalAlgorithmsVlsiCanonicalLaneLean

structure ClockTreeSynthesis where
  topology : List (Nat × Nat)
  skew : Float
  powerOk : Prop

def clockAdmitted (c : ClockTreeSynthesis) : AdmissibleClass :=
  { arch := { routingGraph := (), cellLibrary := (), clockTree := () },
    admits := True.intro,
    endpointSatisfied := c.powerOk,
    remainderRecorded := ¬ c.powerOk,
    gateWitness := Or.inl (by trivial)
  }

theorem clock_bridge_closed (c : ClockTreeSynthesis) : bridgeClosed (clockAdmitted c) := by
  exact True.intro

theorem clock_gate_closed (c : ClockTreeSynthesis) : gateClosed (clockAdmitted c) := by
  unfold clockAdmitted
  exact Or.inl (by trivial)

end HardwareImplementationsNonnumericalAlgorithmsVlsiCanonicalLaneLean
end HautevilleHouse