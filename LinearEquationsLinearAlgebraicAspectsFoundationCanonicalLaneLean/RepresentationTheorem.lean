import LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean.UniversalProperty

/-!
# Representation Theorem Package
-/

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

structure RepresentationTheoremPackage (U : UniversalPropertyPackage) where
  representationType : Type
  isomorphismConstructed : Prop
  naturalityCondition : Prop

structure RepresentationTheoremEvidence {U : UniversalPropertyPackage}
    (R : RepresentationTheoremPackage U) where
  isomorphismConstructedClosed : R.isomorphismConstructed
  naturalityConditionClosed : R.naturalityCondition

def RepresentationTheoremClosed {U : UniversalPropertyPackage}
    (R : RepresentationTheoremPackage U) : Prop :=
  R.isomorphismConstructed ∧ R.naturalityCondition

theorem representation_theorem_closed_from_evidence
    {U : UniversalPropertyPackage} (R : RepresentationTheoremPackage U)
    (E : RepresentationTheoremEvidence R) : RepresentationTheoremClosed R := by
  exact And.intro E.isomorphismConstructedClosed E.naturalityConditionClosed

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse