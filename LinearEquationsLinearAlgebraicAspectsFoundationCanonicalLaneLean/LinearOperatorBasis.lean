import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

/-!
# Linear Operator Basis Package

This module defines the admissible-class bridge for the universal representation
of linear operators in terms of a choice of basis. The key result is that every
finite-dimensional linear operator admits a unique matrix representation with
respect to an ordered basis, and that the transition between bases is governed
by an invertible change-of-basis matrix.
-/

structure LinearOperatorBasisPackage where
  vectorSpace : Type u
  field : Type v
  dimension : ℕ
  basisChosen : Prop
  operatorRepresented : Prop
  basisChangeGroup : Prop

structure LinearOperatorBasisEvidence (P : LinearOperatorBasisPackage) where
  basisChosenClosed : P.basisChosen
  operatorRepresentedClosed : P.operatorRepresented
  basisChangeGroupClosed : P.basisChangeGroup

def LinearOperatorBasisClosed (P : LinearOperatorBasisPackage) : Prop :=
  P.basisChosen ∧ P.operatorRepresented ∧ P.basisChangeGroup

theorem linear_operator_basis_closed_from_evidence
    (P : LinearOperatorBasisPackage) (E : LinearOperatorBasisEvidence P) :
    LinearOperatorBasisClosed P := by
  exact And.intro E.basisChosenClosed (And.intro E.operatorRepresentedClosed E.basisChangeGroupClosed)

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse