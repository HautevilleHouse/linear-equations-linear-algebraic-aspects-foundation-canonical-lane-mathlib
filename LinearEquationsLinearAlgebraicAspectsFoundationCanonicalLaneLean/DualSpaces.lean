import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

structure DualSpacePackage where
  vectorspace : Type u
  dual : Type v
  evaluation : vectorspace → dual → ℚ
  linearInFirst : Prop
  linearInSecond : Prop
  nondegenerate : Prop

structure DualSpaceEvidence (D : DualSpacePackage) where
  linearInFirstClosed : D.linearInFirst
  linearInSecondClosed : D.linearInSecond
  nondegenerateClosed : D.nondegenerate

def DualSpaceClosed (D : DualSpacePackage) : Prop :=
  D.linearInFirst ∧ D.linearInSecond ∧ D.nondegenerate

theorem dual_space_closed_from_evidence (D : DualSpacePackage) (E : DualSpaceEvidence D) :
    DualSpaceClosed D := by
  exact And.intro E.linearInFirstClosed (And.intro E.linearInSecondClosed E.nondegenerateClosed)

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse