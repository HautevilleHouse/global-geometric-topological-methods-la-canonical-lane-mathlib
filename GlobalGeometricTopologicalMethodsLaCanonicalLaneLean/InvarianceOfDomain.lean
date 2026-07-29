import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGeometricTopologicalMethodsLaCanonicalLaneLean

structure InvarianceOfDomainPackage where
  euclideanSpace : Type u
  euclideanTopology : TopologicalSpace euclideanSpace
  openSet : Set euclideanSpace
  continuousInjection : euclideanSpace → euclideanSpace
  imageOpen : Prop

structure InvarianceOfDomainEvidence (I : InvarianceOfDomainPackage) where
  imageOpenClosed : I.imageOpen

def InvarianceOfDomainClosed (I : InvarianceOfDomainPackage) : Prop :=
  I.imageOpen

theorem invariance_of_domain_closed_from_evidence
    (I : InvarianceOfDomainPackage) (Ev : InvarianceOfDomainEvidence I) :
    InvarianceOfDomainClosed I := by
  exact Ev.imageOpenClosed

end GlobalGeometricTopologicalMethodsLaCanonicalLaneLean
end HautevilleHouse