import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GlobalGeometricTopologicalMethodsLaCanonicalLaneLean

structure GeomTopSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GeomTopAdmittedObject where
  space : GeomTopSpace
  closedManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

def GeomTopWitnessClosed (O : GeomTopAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end GlobalGeometricTopologicalMethodsLaCanonicalLaneLean
end HautevilleHouse
