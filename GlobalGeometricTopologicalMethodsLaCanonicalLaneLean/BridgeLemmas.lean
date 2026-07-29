import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGeometricTopologicalMethodsLaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeomTopWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GlobalGeometricTopologicalMethodsLaCanonicalLaneLean
end HautevilleHouse
