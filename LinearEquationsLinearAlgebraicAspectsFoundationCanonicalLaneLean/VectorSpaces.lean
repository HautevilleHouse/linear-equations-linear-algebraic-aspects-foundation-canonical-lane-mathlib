import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

structure VectorSpacePackage where
  field : Type u
  abelianGroup : Type v
  scalarMultiplication : field → abelianGroup → abelianGroup
  axioms : Prop

structure VectorSpaceEvidence (V : VectorSpacePackage) where
  axiomsClosed : V.axioms

def VectorSpaceClosed (V : VectorSpacePackage) : Prop :=
  V.axioms

theorem vector_space_closed_from_evidence (V : VectorSpacePackage) (E : VectorSpaceEvidence V) :
    VectorSpaceClosed V := by
  exact E.axiomsClosed

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse