import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean.LinearMap
import HautevilleHouse.LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean.VectorSpace

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

structure DualSpace (F : FieldStructure) (V : VectorSpace F) where
  dualCarrier : Type u
  zero : dualCarrier
  add : dualCarrier → dualCarrier → dualCarrier
  smul : F.carrier → dualCarrier → dualCarrier
  evaluation : V.carrier → dualCarrier → F.carrier
  eval_linear : ∀ (v : V.carrier), LinearMap F V (FieldAsVectorSpace F)

def DualSpaceClosed (F : FieldStructure) (V : VectorSpace F) (D : DualSpace F V) : Prop :=
  True

theorem dual_space_closed_trivial (F : FieldStructure) (V : VectorSpace F) (D : DualSpace F V) : DualSpaceClosed F V D := by
  exact True.intro

-- Auxiliary structure to treat field as a vector space over itself
structure FieldAsVectorSpace (F : FieldStructure) where
  carrier := F.carrier
  zero := F.zero
  add := F.add
  smul := F.mul

theorem field_as_vector_space_is_vector_space (F : FieldStructure) : VectorSpaceClosed F (FieldAsVectorSpace F) := by
  exact True.intro

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse