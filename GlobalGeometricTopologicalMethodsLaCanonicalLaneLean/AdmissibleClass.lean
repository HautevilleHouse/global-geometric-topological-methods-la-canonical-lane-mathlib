import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGeometricTopologicalMethodsLaCanonicalLaneLean

structure AdmissibleClass where
  object : GeomTopAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GeomTopWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GlobalGeometricTopologicalMethodsLaCanonicalLaneLean
end HautevilleHouse
