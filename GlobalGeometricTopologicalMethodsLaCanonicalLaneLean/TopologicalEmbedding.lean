import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGeometricTopologicalMethodsLaCanonicalLaneLean

structure TopologicalEmbeddingPackage where
  sourceSpace : Type u
  targetSpace : Type v
  sourceTopology : TopologicalSpace sourceSpace
  targetTopology : TopologicalSpace targetSpace
  embeddingMap : sourceSpace → targetSpace
  embeddingContinuous : Prop
  embeddingInjective : Prop
  embeddingOpenMap : Prop
  embeddingClosed : Prop

structure TopologicalEmbeddingEvidence (E : TopologicalEmbeddingPackage) where
  embeddingContinuousClosed : E.embeddingContinuous
  embeddingInjectiveClosed : E.embeddingInjective
  embeddingOpenMapClosed : E.embeddingOpenMap
  embeddingClosedClosed : E.embeddingClosed

def TopologicalEmbeddingClosed (E : TopologicalEmbeddingPackage) : Prop :=
  E.embeddingContinuous ∧ E.embeddingInjective ∧
  E.embeddingOpenMap ∧ E.embeddingClosed

theorem topological_embedding_closed_from_evidence
    (E : TopologicalEmbeddingPackage) (Ev : TopologicalEmbeddingEvidence E) :
    TopologicalEmbeddingClosed E := by
  exact And.intro Ev.embeddingContinuousClosed
    (And.intro Ev.embeddingInjectiveClosed
      (And.intro Ev.embeddingOpenMapClosed Ev.embeddingClosedClosed))

end GlobalGeometricTopologicalMethodsLaCanonicalLaneLean
end HautevilleHouse