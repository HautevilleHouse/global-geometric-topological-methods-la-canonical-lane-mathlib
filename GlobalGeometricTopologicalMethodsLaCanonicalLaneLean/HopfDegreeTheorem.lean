import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGeometricTopologicalMethodsLaCanonicalLaneLean

structure HopfDegreePackage where
  sourceSphere : Type u
  targetSphere : Type v
  sourceTopology : TopologicalSpace sourceSphere
  targetTopology : TopologicalSpace targetSphere
  continuousMap : sourceSphere → targetSphere
  degree : ℤ
  degreeWellDefined : Prop
  homotopyInvariant : Prop

structure HopfDegreeEvidence (H : HopfDegreePackage) where
  degreeWellDefinedClosed : H.degreeWellDefined
  homotopyInvariantClosed : H.homotopyInvariant

def HopfDegreeClosed (H : HopfDegreePackage) : Prop :=
  H.degreeWellDefined ∧ H.homotopyInvariant

theorem hopf_degree_closed_from_evidence
    (H : HopfDegreePackage) (Ev : HopfDegreeEvidence H) :
    HopfDegreeClosed H := by
  exact And.intro Ev.degreeWellDefinedClosed Ev.homotopyInvariantClosed

end GlobalGeometricTopologicalMethodsLaCanonicalLaneLean
end HautevilleHouse