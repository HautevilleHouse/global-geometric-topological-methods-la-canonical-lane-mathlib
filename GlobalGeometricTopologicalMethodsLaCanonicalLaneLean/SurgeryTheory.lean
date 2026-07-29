import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGeometricTopologicalMethodsLaCanonicalLaneLean

structure SurgeryPackage (M : Type u) [TopologicalSpace M] (n : ℕ) where
  surgeryData : Type v
  traceCobordism : Type w
  framedEmbedding : Prop
  surgeryMap : Prop
  effectOnHomology : Prop
  effectOnFundamentalGroup : Prop

structure SurgeryEvidence (M : Type u) [TopologicalSpace M] {n : ℕ}
    (S : SurgeryPackage M n) where
  framedEmbeddingClosed : S.framedEmbedding
  surgeryMapClosed : S.surgeryMap
  effectOnHomologyClosed : S.effectOnHomology
  effectOnFundamentalGroupClosed : S.effectOnFundamentalGroup

def SurgeryClosed (M : Type u) [TopologicalSpace M] {n : ℕ}
    (S : SurgeryPackage M n) : Prop :=
  S.framedEmbedding ∧ S.surgeryMap ∧ S.effectOnHomology ∧ S.effectOnFundamentalGroup

theorem surgery_closed_from_evidence (M : Type u) [TopologicalSpace M] {n : ℕ}
    (S : SurgeryPackage M n) (E : SurgeryEvidence S) : SurgeryClosed S := by
  exact And.intro E.framedEmbeddingClosed
    (And.intro E.surgeryMapClosed
      (And.intro E.effectOnHomologyClosed E.effectOnFundamentalGroupClosed))

structure hCobordismPackage (M N : Type u) [TopologicalSpace M] [TopologicalSpace N] where
  cobordism : Type u
  inclusionM : M → cobordism
  inclusionN : N → cobordism
  homotopyEquivalence : Prop
  sCobordismEquivalent : Prop

structure hCobordismEvidence {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (H : hCobordismPackage M N) where
  homotopyEquivalenceClosed : H.homotopyEquivalence
  sCobordismEquivalentClosed : H.sCobordismEquivalent

def hCobordismClosed {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (H : hCobordismPackage M N) : Prop :=
  H.homotopyEquivalence ∧ H.sCobordismEquivalent

theorem h_cobordism_closed_from_evidence {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (H : hCobordismPackage M N) (E : hCobordismEvidence H) : hCobordismClosed H := by
  exact And.intro E.homotopyEquivalenceClosed E.sCobordismEquivalentClosed

end GlobalGeometricTopologicalMethodsLaCanonicalLaneLean
end HautevilleHouse