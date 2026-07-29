import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGeometricTopologicalMethodsLaCanonicalLaneLean

structure ClassificationTheoremsPackage where
  surfaceClassification : Prop
  threeManifoldClassification : Prop
  handleDecomposition : Prop
  cobordismClassification : Prop
  homotopyEquivalenceToHomeomorphism : Prop

structure ClassificationTheoremsEvidence (C : ClassificationTheoremsPackage) where
  surfaceClassificationClosed : C.surfaceClassification
  threeManifoldClassificationClosed : C.threeManifoldClassification
  handleDecompositionClosed : C.handleDecomposition
  cobordismClassificationClosed : C.cobordismClassification
  homotopyEquivalenceToHomeomorphismClosed : C.homotopyEquivalenceToHomeomorphism

def ClassificationTheoremsClosed (C : ClassificationTheoremsPackage) : Prop :=
  C.surfaceClassification ∧ C.threeManifoldClassification ∧ C.handleDecomposition ∧
  C.cobordismClassification ∧ C.homotopyEquivalenceToHomeomorphism

theorem classification_theorems_closed_from_evidence (C : ClassificationTheoremsPackage) (E : ClassificationTheoremsEvidence C) : ClassificationTheoremsClosed C := by
  exact And.intro E.surfaceClassificationClosed
    (And.intro E.threeManifoldClassificationClosed
      (And.intro E.handleDecompositionClosed
        (And.intro E.cobordismClassificationClosed E.homotopyEquivalenceToHomeomorphismClosed)))

end GlobalGeometricTopologicalMethodsLaCanonicalLaneLean
end HautevilleHouse