import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGeometricTopologicalMethodsLaCanonicalLaneLean

structure SurgeryStatement where
  decompositionExists : Prop
  surgeryProcedure : Prop
  topologyPreservation : Prop
  decompositionClosed : decompositionExists
  surgeryClosed : surgeryProcedure
  topologyClosed : topologyPreservation

def SurgeryClosed (S : SurgeryStatement) : Prop :=
  S.decompositionExists ∧ S.surgeryProcedure ∧ S.topologyPreservation

theorem surgery_closed_from_statement (S : SurgeryStatement) :
    SurgeryClosed S := by
  exact And.intro S.decompositionClosed (And.intro S.surgeryClosed S.topologyClosed)

end GlobalGeometricTopologicalMethodsLaCanonicalLaneLean
end HautevilleHouse