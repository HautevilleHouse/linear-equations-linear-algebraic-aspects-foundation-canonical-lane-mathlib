import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

structure LinearMapPackage where
  source : Type u
  target : Type v
  map : source → target
  linearity : Prop

structure LinearMapEvidence (M : LinearMapPackage) where
  linearityClosed : M.linearity

def LinearMapClosed (M : LinearMapPackage) : Prop :=
  M.linearity

theorem linear_map_closed_from_evidence (M : LinearMapPackage) (E : LinearMapEvidence M) :
    LinearMapClosed M := by
  exact E.linearityClosed

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse