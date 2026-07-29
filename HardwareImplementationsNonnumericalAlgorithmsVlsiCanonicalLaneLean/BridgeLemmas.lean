import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HardwareImplementationsNonnumericalAlgorithmsVlsiCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.admits

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.admits

end HardwareImplementationsNonnumericalAlgorithmsVlsiCanonicalLaneLean
end HautevilleHouse