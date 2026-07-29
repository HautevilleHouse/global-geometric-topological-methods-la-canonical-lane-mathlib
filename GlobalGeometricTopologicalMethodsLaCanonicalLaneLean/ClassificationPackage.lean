import HautevilleHouse.GlobalGeometricTopologicalMethodsLaCanonicalLaneLean.DualityBridgeLemmas

namespace HautevilleHouse
namespace GlobalGeometricTopologicalMethodsLaCanonicalLaneLean

structure ClassificationPackage where
  target : Type u
  targetTopology : TopologicalSpace target
  classificationTheorem : Prop
  invariancePrinciple : Prop
  duality : Prop
  bridgeEvidence : bridgeClosed (AdmissibleClass.mk (AdmittedTopologicalObject.mk (TopologicalManifold.mk target inferInstance (by trivial) (by trivial) (by trivial)) 0 (by trivial) (by trivial) (by trivial)) (by trivial) (by trivial) (Or.inl (by trivial)))

structure ClassificationEvidence (C : ClassificationPackage) where
  classificationTheoremClosed : C.classificationTheorem
  invariancePrincipleClosed : C.invariancePrinciple
  dualityClosed : C.duality

def ClassificationClosed (C : ClassificationPackage) : Prop :=
  C.classificationTheorem ∧ C.invariancePrinciple ∧ C.duality

theorem classification_closed_from_evidence (C : ClassificationPackage) (E : ClassificationEvidence C) :
    ClassificationClosed C := by
  exact And.intro E.classificationTheoremClosed (And.intro E.invariancePrincipleClosed E.dualityClosed)

end GlobalGeometricTopologicalMethodsLaCanonicalLaneLean
end HautevilleHouse