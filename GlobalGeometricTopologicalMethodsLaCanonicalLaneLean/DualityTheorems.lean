import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGeometricTopologicalMethodsLaCanonicalLaneLean

structure PoincareDualityPackage (M : Type u) [TopologicalSpace M] where
  manifoldWithBoundary : Prop
  compactOrientable : Prop
  poincareDualityIsomorphism : Prop
  intersectionPairing : Prop
  signature : Prop

structure PoincareDualityEvidence (P : PoincareDualityPackage M) where
  manifoldWithBoundaryClosed : P.manifoldWithBoundary
  compactOrientableClosed : P.compactOrientable
  poincareDualityIsomorphismClosed : P.poincareDualityIsomorphism
  intersectionPairingClosed : P.intersectionPairing
  signatureClosed : P.signature

def PoincareDualityClosed (P : PoincareDualityPackage M) : Prop :=
  P.manifoldWithBoundary ∧ P.compactOrientable ∧ P.poincareDualityIsomorphism ∧
  P.intersectionPairing ∧ P.signature

theorem poincare_duality_closed_from_evidence (P : PoincareDualityPackage M)
    (E : PoincareDualityEvidence P) : PoincareDualityClosed P := by
  exact And.intro E.manifoldWithBoundaryClosed
    (And.intro E.compactOrientableClosed
      (And.intro E.poincareDualityIsomorphismClosed
        (And.intro E.intersectionPairingClosed E.signatureClosed)))

structure LefschetzDualityPackage (M : Type u) [TopologicalSpace M] where
  manifoldWithBoundary : Prop
  compactTriangulable : Prop
  lefschetzDualityIsomorphism : Prop
  relativeHomology : Prop

structure LefschetzDualityEvidence (L : LefschetzDualityPackage M) where
  manifoldWithBoundaryClosed : L.manifoldWithBoundary
  compactTriangulableClosed : L.compactTriangulable
  lefschetzDualityIsomorphismClosed : L.lefschetzDualityIsomorphism
  relativeHomologyClosed : L.relativeHomology

def LefschetzDualityClosed (L : LefschetzDualityPackage M) : Prop :=
  L.manifoldWithBoundary ∧ L.compactTriangulable ∧ L.lefschetzDualityIsomorphism ∧
  L.relativeHomology

theorem lefschetz_duality_closed_from_evidence (L : LefschetzDualityPackage M)
    (E : LefschetzDualityEvidence L) : LefschetzDualityClosed L := by
  exact And.intro E.manifoldWithBoundaryClosed
    (And.intro E.compactTriangulableClosed
      (And.intro E.lefschetzDualityIsomorphismClosed E.relativeHomologyClosed))

end GlobalGeometricTopologicalMethodsLaCanonicalLaneLean
end HautevilleHouse