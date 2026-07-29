import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGeometricTopologicalMethodsLaCanonicalLaneLean

structure CohomologyDualityPackage where
  poincareDualityMap : Prop
  cupProductDefined : Prop
  capProductDefined : Prop
  dualityIsomorphism : Prop
  compactSupportCaseCovered : Prop

structure CohomologyDualityEvidence (C : CohomologyDualityPackage) where
  poincareDualityMapClosed : C.poincareDualityMap
  cupProductDefinedClosed : C.cupProductDefined
  capProductDefinedClosed : C.capProductDefined
  dualityIsomorphismClosed : C.dualityIsomorphism
  compactSupportCaseCoveredClosed : C.compactSupportCaseCovered

def CohomologyDualityClosed (C : CohomologyDualityPackage) : Prop :=
  C.poincareDualityMap ∧ C.cupProductDefined ∧ C.capProductDefined ∧ C.dualityIsomorphism ∧ C.compactSupportCaseCovered

theorem cohomology_duality_closed_from_evidence (C : CohomologyDualityPackage) (E : CohomologyDualityEvidence C) : CohomologyDualityClosed C := by
  exact And.intro E.poincareDualityMapClosed
    (And.intro E.cupProductDefinedClosed
      (And.intro E.capProductDefinedClosed
        (And.intro E.dualityIsomorphismClosed E.compactSupportCaseCoveredClosed)))

end GlobalGeometricTopologicalMethodsLaCanonicalLaneLean
end HautevilleHouse