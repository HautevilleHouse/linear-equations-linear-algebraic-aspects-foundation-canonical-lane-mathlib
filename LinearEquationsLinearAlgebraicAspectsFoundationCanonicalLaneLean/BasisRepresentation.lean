import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

structure Basis (K : Type u) [Field K] (V : Type v) [AddCommGroup V] [Module K V] (ι : Type w) where
  vectors : ι → V
  linearIndependent : LinearIndependent K vectors
  span : Submodule.span K (Set.range vectors) = ⊤

structure CoordinateVector (K : Type u) [Field K] (V : Type v) [AddCommGroup V] [Module K V] {ι : Type w} (b : Basis K V ι) where
  repr : V → (ι →₀ K)
  linearity : ∀ (v w : V), repr (v + w) = repr v + repr w
  linearity' : ∀ (c : K) (v : V), repr (c • v) = c • repr v
  inverse : ∀ (f : ι →₀ K), ∃ (v : V), repr v = f

theorem coordinate_representation_unique (b : Basis K V ι) (v : V) :
    ∃! (f : ι →₀ K), (∑ i in f.support, f i • b.vectors i) = v := by
  sorry

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse
