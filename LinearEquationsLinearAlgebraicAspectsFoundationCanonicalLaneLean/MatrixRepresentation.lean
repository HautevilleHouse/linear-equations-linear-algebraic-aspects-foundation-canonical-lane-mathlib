import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

structure Matrix (K : Type u) [Field K] (m n : ℕ) where
  entries : Fin m → Fin n → K

structure LinearTransformationAsMatrix (K : Type u) [Field K] (V : Type v) [AddCommGroup V] [Module K V] (W : Type w) [AddCommGroup W] [Module K W] [FiniteDimensional K V] [FiniteDimensional K W] where
  matrix : Matrix K (FiniteDimensional.finrank K V) (FiniteDimensional.finrank K W)
  action : V → W
  consistency : ∀ (v : V), repr (action v) = matrix.entries ⬝ repr v

structure RankNullity (K : Type u) [Field K] (V : Type v) [AddCommGroup V] [Module K V] (W : Type w) [AddCommGroup W] [Module K W] [FiniteDimensional K V] (f : LinearMap K V W) where
  rank : ℕ
  nullity : ℕ
  rankNullityFormula : FiniteDimensional.finrank K V = rank + nullity
  kernelDimension : FiniteDimensional.finrank K (LinearMap.ker f) = nullity
  imageDimension : FiniteDimensional.finrank K (LinearMap.range f) = rank

theorem rank_nullity_theorem (K : Type u) [Field K] (V : Type v) [AddCommGroup V] [Module K V] (W : Type w) [AddCommGroup W] [Module K W] [FiniteDimensional K V] (f : LinearMap K V W) :
    FiniteDimensional.finrank K V = FiniteDimensional.finrank K (LinearMap.range f) + FiniteDimensional.finrank K (LinearMap.ker f) := by
  sorry

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse
