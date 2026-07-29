import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGeometricTopologicalMethodsLaCanonicalLaneLean

structure DualityBridge where
  dualityPair : Prop
  bridgeClosed : Prop
  applicationStatement : Prop
  dualityPairTerm : dualityPair
  bridgeClosedTerm : bridgeClosed
  applicationTerm : applicationStatement

def DualityBridgeClosed (D : DualityBridge) : Prop :=
  D.dualityPair ∧ D.bridgeClosed ∧ D.applicationStatement

theorem duality_bridge_closed (D : DualityBridge) :
    DualityBridgeClosed D := by
  exact And.intro D.dualityPairTerm (And.intro D.bridgeClosedTerm D.applicationTerm)

end GlobalGeometricTopologicalMethodsLaCanonicalLaneLean
end HautevilleHouse