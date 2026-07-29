import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean.FieldStructure

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

structure VectorSpace (F : FieldStructure) where
  carrier : Type u
  zero : carrier
  add : carrier → carrier → carrier
  add_assoc : ∀ a b c : carrier, add (add a b) c = add a (add b c)
  add_comm : ∀ a b : carrier, add a b = add b a
  zero_add : ∀ a : carrier, add zero a = a
  add_inv : ∀ a : carrier, ∃ b : carrier, add a b = zero
  smul : F.carrier → carrier → carrier
  smul_one : ∀ a : carrier, smul F.one a = a
  smul_assoc : ∀ (α β : F.carrier) (a : carrier), smul (F.mul α β) a = smul α (smul β a)
  smul_add : ∀ (α : F.carrier) (a b : carrier), smul α (add a b) = add (smul α a) (smul α b)
  add_smul : ∀ (α β : F.carrier) (a : carrier), smul (F.add α β) a = add (smul α a) (smul β a)

def VectorSpaceClosed (F : FieldStructure) (V : VectorSpace F) : Prop :=
  True

theorem vector_space_closed_trivial (F : FieldStructure) (V : VectorSpace F) : VectorSpaceClosed F V := by
  exact True.intro

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse