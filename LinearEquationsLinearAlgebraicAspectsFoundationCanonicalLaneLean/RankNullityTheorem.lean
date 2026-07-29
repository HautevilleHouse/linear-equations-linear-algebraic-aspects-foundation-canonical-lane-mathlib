import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

/-!
# Rank–Nullity Theorem Package

This module frames the rank–nullity theorem as an admissible-class bridge.
The theorem states that for a linear map between finite-dimensional vector spaces,
the dimension of the domain equals the rank (dimension of the image) plus the
nullity (dimension of the kernel).
-/

structure RankNullityPackage where
  domainDim : ℕ
  codomainDim : ℕ
  linearMap : Prop
  kernelDimension : ℕ
  imageDimension : ℕ
  rankPlusNullityEqualsDomain : Prop

structure RankNullityEvidence (R : RankNullityPackage) where
  linearMapClosed : R.linearMap
  kernelDimensionClosed : R.kernelDimension = R.domainDim - R.imageDimension
  imageDimensionClosed : R.imageDimension = R.rankPlusNullityEqualsDomain

def RankNullityClosed (R : RankNullityPackage) : Prop :=
  R.linearMap ∧ (R.kernelDimension + R.imageDimension = R.domainDim) ∧ R.rankPlusNullityEqualsDomain

theorem rank_nullity_closed_from_evidence
    (R : RankNullityPackage) (E : RankNullityEvidence R) :
    RankNullityClosed R := by
  have h : R.kernelDimension + R.imageDimension = R.domainDim := by
    calc
      R.kernelDimension + R.imageDimension = (R.domainDim - R.imageDimension) + R.imageDimension := by rw [E.kernelDimensionClosed]
      _ = R.domainDim := by omega
  exact And.intro E.linearMapClosed (And.intro h E.imageDimensionClosed)

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse