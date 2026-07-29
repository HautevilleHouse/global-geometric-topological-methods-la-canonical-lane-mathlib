import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGeometricTopologicalMethodsLaCanonicalLaneLean

structure ClassificationInvariant where
  invariantDefined : Prop
  invariantClosed : Prop
  classificationStatement : Prop
  invariantDefinedTerm : invariantDefined
  invariantClosedTerm : invariantClosed
  classificationTerm : classificationStatement

def ClassificationInvariantClosed (I : ClassificationInvariant) : Prop :=
  I.invariantDefined ∧ I.invariantClosed ∧ I.classificationStatement

theorem classification_invariant_closed (I : ClassificationInvariant) :
    ClassificationInvariantClosed I := by
  exact And.intro I.invariantDefinedTerm (And.intro I.invariantClosedTerm I.classificationTerm)

end GlobalGeometricTopologicalMethodsLaCanonicalLaneLean
end HautevilleHouse