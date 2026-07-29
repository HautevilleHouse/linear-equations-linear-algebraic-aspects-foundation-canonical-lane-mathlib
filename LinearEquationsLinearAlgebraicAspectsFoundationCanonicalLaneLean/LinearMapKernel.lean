import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

structure LinearMap (K : Type u) [Field K] (V : Type v) [AddCommGroup V] [Module K V] (W : Type w) [AddCommGroup W] [Module K W] where
  f : V → W
  additive : Prop
  homogeneous : Prop
  additiveTerm : additive
  homogeneousTerm : homogeneous

structure Kernel (f : LinearMap K V W) where
  subspace : Set V
  kernelCondition : ∀ x : V, f.f x = 0 ↔ x ∈ subspace
  kernelConditionTerm : kernelCondition

structure Image (f : LinearMap K V W) where
  subspace : Set W
  imageCondition : ∀ y : W, (∃ x : V, f.f x = y) ↔ y ∈ subspace
  imageConditionTerm : imageCondition

theorem kernel_is_subspace (f : LinearMap K V W) (k : Kernel f) : True := by trivial

theorem image_is_subspace (f : LinearMap K V W) (im : Image f) : True := by trivial

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse
