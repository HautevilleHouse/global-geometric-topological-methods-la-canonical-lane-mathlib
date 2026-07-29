import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGeometricTopologicalMethodsLaCanonicalLaneLean

structure HomotopyInvariancePackage (M N : Type u) [TopologicalSpace M] [TopologicalSpace N] where
  homotopyEquivalence : M → N
  homotopyInverse : N → M
  homotopyTypePreserved : Prop
  fundamentalGroupIsomorphism : Prop
  homologyIsomorphism : Prop

structure HomotopyInvarianceEvidence {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (H : HomotopyInvariancePackage M N) where
  homotopyTypePreservedClosed : H.homotopyTypePreserved
  fundamentalGroupIsomorphismClosed : H.fundamentalGroupIsomorphism
  homologyIsomorphismClosed : H.homologyIsomorphism

def HomotopyInvarianceClosed {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (H : HomotopyInvariancePackage M N) : Prop :=
  H.homotopyTypePreserved ∧ H.fundamentalGroupIsomorphism ∧ H.homologyIsomorphism

theorem homotopy_invariance_closed_from_evidence {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (H : HomotopyInvariancePackage M N) (E : HomotopyInvarianceEvidence H) :
    HomotopyInvarianceClosed H := by
  exact And.intro E.homotopyTypePreservedClosed
    (And.intro E.fundamentalGroupIsomorphismClosed E.homologyIsomorphismClosed)

structure HomeomorphismInvariancePackage (M N : Type u) [TopologicalSpace M] [TopologicalSpace N] where
  homeomorphism : M ≃ₜ N
  dimensionPreserved : Prop
  orientabilityPreserved : Prop
  compactnessPreserved : Prop

structure HomeomorphismInvarianceEvidence {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (H : HomeomorphismInvariancePackage M N) where
  dimensionPreservedClosed : H.dimensionPreserved
  orientabilityPreservedClosed : H.orientabilityPreserved
  compactnessPreservedClosed : H.compactnessPreserved

def HomeomorphismInvarianceClosed {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (H : HomeomorphismInvariancePackage M N) : Prop :=
  H.dimensionPreserved ∧ H.orientabilityPreserved ∧ H.compactnessPreserved

theorem homeomorphism_invariance_closed_from_evidence {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (H : HomeomorphismInvariancePackage M N) (E : HomeomorphismInvarianceEvidence H) :
    HomeomorphismInvarianceClosed H := by
  exact And.intro E.dimensionPreservedClosed
    (And.intro E.orientabilityPreservedClosed E.compactnessPreservedClosed)

end GlobalGeometricTopologicalMethodsLaCanonicalLaneLean
end HautevilleHouse