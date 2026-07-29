import LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def linearAlgebraProjection : Projection LinearEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem linear_algebra_projection_idempotent (x : LinearEndgameState) :
    linearAlgebraProjection.toFun (linearAlgebraProjection.toFun x) = linearAlgebraProjection.toFun x := by
  exact linearAlgebraProjection.idempotent x

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse