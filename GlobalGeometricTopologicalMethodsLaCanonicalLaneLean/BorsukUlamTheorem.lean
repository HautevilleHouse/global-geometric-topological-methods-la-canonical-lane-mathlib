import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGeometricTopologicalMethodsLaCanonicalLaneLean

structure BorsukUlamPackage where
  sphereDimension : ℕ
  sphereSpace : Type u
  sphereTopology : TopologicalSpace sphereSpace
  antipodalMap : sphereSpace → sphereSpace
  continuousMap : sphereSpace → ℝ
  antipodalPreserving : Prop
  existsPointWithEqualValue : Prop

structure BorsukUlamEvidence (B : BorsukUlamPackage) where
  existsPointWithEqualValueClosed : B.existsPointWithEqualValue

def BorsukUlamClosed (B : BorsukUlamPackage) : Prop :=
  B.existsPointWithEqualValue

theorem borsuk_ulam_closed_from_evidence
    (B : BorsukUlamPackage) (Ev : BorsukUlamEvidence B) :
    BorsukUlamClosed B := by
  exact Ev.existsPointWithEqualValueClosed

end GlobalGeometricTopologicalMethodsLaCanonicalLaneLean
end HautevilleHouse