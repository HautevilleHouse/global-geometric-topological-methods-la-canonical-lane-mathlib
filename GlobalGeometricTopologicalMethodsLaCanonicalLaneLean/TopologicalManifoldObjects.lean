import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGeometricTopologicalMethodsLaCanonicalLaneLean

structure TopologicalManifold where
  carrier : Type u
  topology : TopologicalSpace carrier
  hausdorff : Prop
  secondCountable : Prop
  locallyEuclidean : Prop

structure AdmittedTopologicalObject where
  manifold : TopologicalManifold
  dimension : ℕ
  closed : Prop
  oriented : Prop
  conclusion : Prop

def TopologicalWitnessClosed (O : AdmittedTopologicalObject) : Prop :=
  O.conclusion

end GlobalGeometricTopologicalMethodsLaCanonicalLaneLean
end HautevilleHouse