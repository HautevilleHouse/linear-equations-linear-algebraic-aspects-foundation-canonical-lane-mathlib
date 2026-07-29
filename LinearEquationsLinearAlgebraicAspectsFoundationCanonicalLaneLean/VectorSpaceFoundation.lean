import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

structure VectorSpace (K : Type u) [Field K] (V : Type v) [AddCommGroup V] [Module K V] where
  field : K
  carrier : V
  scalarMultiplication : K → V → V
  distributivity : Prop
  associativity : Prop
  identityElement : Prop
  distributivityTerm : distributivity
  associativityTerm : associativity
  identityElementTerm : identityElement

structure VectorSpaceHom (K : Type u) [Field K] (V : Type v) [AddCommGroup V] [Module K V] (W : Type w) [AddCommGroup W] [Module K W] where
  f : V → W
  linear : Prop
  linearTerm : linear

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse
