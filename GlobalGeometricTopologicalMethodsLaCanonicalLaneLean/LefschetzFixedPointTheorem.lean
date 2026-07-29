import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGeometricTopologicalMethodsLaCanonicalLaneLean

structure LefschetzFixedPointPackage where
  space : Type u
  topology : TopologicalSpace space
  compact : Prop
  continuousMap : space → space
  lefschetzNumber : ℤ
  lefschetzNumberNonZero : Prop
  fixedPointExists : Prop

structure LefschetzFixedPointEvidence (L : LefschetzFixedPointPackage) where
  lefschetzNumberNonZeroClosed : L.lefschetzNumberNonZero
  fixedPointExistsClosed : L.fixedPointExists

def LefschetzFixedPointClosed (L : LefschetzFixedPointPackage) : Prop :=
  L.lefschetzNumberNonZero ∧ L.fixedPointExists

theorem lefschetz_fixed_point_closed_from_evidence
    (L : LefschetzFixedPointPackage) (Ev : LefschetzFixedPointEvidence L) :
    LefschetzFixedPointClosed L := by
  exact And.intro Ev.lefschetzNumberNonZeroClosed Ev.fixedPointExistsClosed

end GlobalGeometricTopologicalMethodsLaCanonicalLaneLean
end HautevilleHouse