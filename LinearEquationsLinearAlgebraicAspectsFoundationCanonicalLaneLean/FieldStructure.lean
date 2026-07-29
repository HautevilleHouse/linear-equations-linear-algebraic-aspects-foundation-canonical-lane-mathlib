import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

structure FieldStructure where
  carrier : Type u
  zero : carrier
  one : carrier
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  add_assoc : ∀ a b c : carrier, add (add a b) c = add a (add b c)
  add_comm : ∀ a b : carrier, add a b = add b a
  zero_add : ∀ a : carrier, add zero a = a
  add_inv : ∀ a : carrier, ∃ b : carrier, add a b = zero
  mul_assoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c)
  mul_comm : ∀ a b : carrier, mul a b = mul b a
  one_mul : ∀ a : carrier, mul one a = a
  mul_inv : ∀ a : carrier, a ≠ zero → ∃ b : carrier, mul a b = one
  distrib : ∀ a b c : carrier, mul a (add b c) = add (mul a b) (mul a c)

def FieldStructureClosed (F : FieldStructure) : Prop :=
  True

theorem field_structure_closed_trivial (F : FieldStructure) : FieldStructureClosed F := by
  exact True.intro

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse