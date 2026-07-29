import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGeometricTopologicalMethodsLaCanonicalLaneLean

structure CobordismClassificationPackage (M N : Type u) [TopologicalSpace M] [TopologicalSpace N] where
  cobordism : Type u
  boundaryComponents : Prop
  homotopyEquivalence : Prop
  categoryFramedBordism : Prop
  signatureTheorem : Prop
  hCobordismTheorem : Prop

structure CobordismClassificationEvidence {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (C : CobordismClassificationPackage M N) where
  boundaryComponentsClosed : C.boundaryComponents
  homotopyEquivalenceClosed : C.homotopyEquivalence
  categoryFramedBordismClosed : C.categoryFramedBordism
  signatureTheoremClosed : C.signatureTheorem
  hCobordismTheoremClosed : C.hCobordismTheorem

def CobordismClassificationClosed {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (C : CobordismClassificationPackage M N) : Prop :=
  C.boundaryComponents ∧ C.homotopyEquivalence ∧ C.categoryFramedBordism ∧
  C.signatureTheorem ∧ C.hCobordismTheorem

theorem cobordism_classification_closed_from_evidence {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (C : CobordismClassificationPackage M N) (E : CobordismClassificationEvidence C) :
    CobordismClassificationClosed C := by
  exact And.intro E.boundaryComponentsClosed
    (And.intro E.homotopyEquivalenceClosed
      (And.intro E.categoryFramedBordismClosed
        (And.intro E.signatureTheoremClosed E.hCobordismTheoremClosed)))

end GlobalGeometricTopologicalMethodsLaCanonicalLaneLean
end HautevilleHouse