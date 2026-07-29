import LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure LinearSpace where
  carrier : Type
  field : Type
  addition : carrier → carrier → carrier
  scalarMul : field → carrier → carrier
  zero : carrier

structure LinearAlgebraAdmittedObject where
  space : LinearSpace
  finiteDimensional : Prop
  basisSelected : Prop
  representationTheorem : Prop
  conclusion : representationTheorem

def LinearAlgebraWitnessClosed (O : LinearAlgebraAdmittedObject) : Prop :=
  O.representationTheorem

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse