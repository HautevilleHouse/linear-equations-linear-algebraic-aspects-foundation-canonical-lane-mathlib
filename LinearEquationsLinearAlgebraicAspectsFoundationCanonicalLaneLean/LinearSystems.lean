import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

structure LinearSystemPackage where
  coefficientMatrix : Matrix ℕ ℕ ℚ
  unknownCount : ℕ
  rightHandSide : ℕ → ℚ
  solutionUnknowns : ℕ → ℚ → Prop

structure LinearSystemEvidence (S : LinearSystemPackage) where
  solutionExistsClosed : Prop
  solutionUniqueClosed : Prop
  solutionFormulaClosed : Prop

def LinearSystemClosed (S : LinearSystemPackage) : Prop :=
  S.solutionUnknowns

theorem linear_system_closed_from_evidence (S : LinearSystemPackage) (E : LinearSystemEvidence S) :
    LinearSystemClosed S := by
  exact E.solutionFormulaClosed

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse