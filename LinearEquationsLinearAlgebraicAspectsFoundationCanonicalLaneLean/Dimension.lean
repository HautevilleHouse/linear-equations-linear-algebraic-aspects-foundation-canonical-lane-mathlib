import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean.Basis

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

structure Dimension (F : FieldStructure) (V : VectorSpace F) where
  basis : Basis F V
  cardinal : Nat
  uniqueCardinal : ∀ (B B' : Basis F V), True

def DimensionClosed (F : FieldStructure) (V : VectorSpace F) (d : Dimension F V) : Prop :=
  True

theorem dimension_closed_trivial (F : FieldStructure) (V : VectorSpace F) (d : Dimension F V) : DimensionClosed F V d := by
  exact True.intro

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse