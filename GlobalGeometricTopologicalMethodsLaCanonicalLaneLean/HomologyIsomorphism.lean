import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGeometricTopologicalMethodsLaCanonicalLaneLean

structure HomologyIsomorphismPackage where
  chainComplexDefined : Prop
  homologyGroupsComputed : Prop
  mapInducedIsomorphism : Prop
  relativeSequenceExact : Prop
  excisionAxiomSatisfied : Prop

structure HomologyIsomorphismEvidence (H : HomologyIsomorphismPackage) where
  chainComplexDefinedClosed : H.chainComplexDefined
  homologyGroupsComputedClosed : H.homologyGroupsComputed
  mapInducedIsomorphismClosed : H.mapInducedIsomorphism
  relativeSequenceExactClosed : H.relativeSequenceExact
  excisionAxiomSatisfiedClosed : H.excisionAxiomSatisfied

def HomologyIsomorphismClosed (H : HomologyIsomorphismPackage) : Prop :=
  H.chainComplexDefined ∧ H.homologyGroupsComputed ∧ H.mapInducedIsomorphism ∧ H.relativeSequenceExact ∧ H.excisionAxiomSatisfied

theorem homology_isomorphism_closed_from_evidence (H : HomologyIsomorphismPackage) (E : HomologyIsomorphismEvidence H) : HomologyIsomorphismClosed H := by
  exact And.intro E.chainComplexDefinedClosed
    (And.intro E.homologyGroupsComputedClosed
      (And.intro E.mapInducedIsomorphismClosed
        (And.intro E.relativeSequenceExactClosed E.excisionAxiomSatisfiedClosed)))

end GlobalGeometricTopologicalMethodsLaCanonicalLaneLean
end HautevilleHouse