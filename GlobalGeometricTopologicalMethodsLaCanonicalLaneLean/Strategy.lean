import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGeometricTopologicalMethodsLaCanonicalLaneLean

structure TopologicalStrategyPackage where
  coveringHypothesis : Prop
  excisionProperty : Prop
  longExactSequence : Prop
  spectralSequenceConvergence : Prop

structure TopologicalStrategyEvidence (S : TopologicalStrategyPackage) where
  coveringHypothesisClosed : S.coveringHypothesis
  excisionPropertyClosed : S.excisionProperty
  longExactSequenceClosed : S.longExactSequence
  spectralSequenceConvergenceClosed : S.spectralSequenceConvergence

def TopologicalStrategyClosed (S : TopologicalStrategyPackage) : Prop :=
  S.coveringHypothesis ∧ S.excisionProperty ∧ S.longExactSequence ∧ S.spectralSequenceConvergence

theorem topological_strategy_closed_from_evidence (S : TopologicalStrategyPackage) (E : TopologicalStrategyEvidence S) : TopologicalStrategyClosed S := by
  exact And.intro E.coveringHypothesisClosed
    (And.intro E.excisionPropertyClosed
      (And.intro E.longExactSequenceClosed E.spectralSequenceConvergenceClosed))

end GlobalGeometricTopologicalMethodsLaCanonicalLaneLean
end HautevilleHouse