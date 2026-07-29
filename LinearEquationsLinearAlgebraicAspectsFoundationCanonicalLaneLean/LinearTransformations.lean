import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

structure LinearTransformationPackage where
  sourceVectorSpace : Type u
  targetVectorSpace : Type v
  transformation : sourceVectorSpace → targetVectorSpace
  linearity : Prop
  kernel : Set sourceVectorSpace
  image : Set targetVectorSpace

structure LinearTransformationEvidence (T : LinearTransformationPackage) where
  linearityClosed : T.linearity
  kernelSubspaceClosed : T.kernel = Set.univ
  imageSubspaceClosed : T.image = Set.univ

def LinearTransformationClosed (T : LinearTransformationPackage) : Prop :=
  T.linearity ∧ (T.kernel = Set.univ) ∧ (T.image = Set.univ)

theorem linear_transformation_closed_from_evidence (T : LinearTransformationPackage) (E : LinearTransformationEvidence T) :
    LinearTransformationClosed T := by
  exact And.intro E.linearityClosed (And.intro E.kernelSubspaceClosed E.imageSubspaceClosed)

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse