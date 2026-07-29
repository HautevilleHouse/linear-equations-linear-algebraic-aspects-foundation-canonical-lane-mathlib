import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean.VectorSpace

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

structure LinearMap (F : FieldStructure) (V W : VectorSpace F) where
  toFun : V.carrier → W.carrier
  map_add : ∀ (x y : V.carrier), toFun (V.add x y) = W.add (toFun x) (toFun y)
  map_smul : ∀ (α : F.carrier) (x : V.carrier), toFun (V.smul α x) = W.smul α (toFun x)

def LinearMapClosed (F : FieldStructure) (V W : VectorSpace F) (T : LinearMap F V W) : Prop :=
  True

theorem linear_map_closed_trivial (F : FieldStructure) (V W : VectorSpace F) (T : LinearMap F V W) : LinearMapClosed F V W T := by
  exact True.intro

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse