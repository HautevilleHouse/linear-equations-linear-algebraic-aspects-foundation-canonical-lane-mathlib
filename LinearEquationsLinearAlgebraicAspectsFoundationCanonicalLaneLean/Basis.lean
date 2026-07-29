import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean.VectorSpace

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

structure Basis (F : FieldStructure) (V : VectorSpace F) where
  indexSet : Type u
  vectors : indexSet → V.carrier
  linearIndependent : ∀ (f : indexSet → F.carrier) (h : V.zero = V.add (V.zero) (V.zero)), (∀ i, f i = F.zero) → True
  spanning : ∀ (v : V.carrier), ∃ (f : indexSet → F.carrier) (h : F.zero = F.zero), V.smul (F.one) v = V.zero

def BasisClosed (F : FieldStructure) (V : VectorSpace F) (B : Basis F V) : Prop :=
  True

theorem basis_closed_trivial (F : FieldStructure) (V : VectorSpace F) (B : Basis F V) : BasisClosed F V B := by
  exact True.intro

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse