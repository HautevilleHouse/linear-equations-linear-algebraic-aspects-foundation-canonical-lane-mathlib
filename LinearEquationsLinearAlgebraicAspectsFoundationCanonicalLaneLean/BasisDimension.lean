import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

structure BasisPackage where
  vectorspace : Type u
  indexSet : Type v
  basis : indexSet → vectorspace
  linearIndependence : Prop
  spanning : Prop

structure BasisEvidence (B : BasisPackage) where
  linearIndependenceClosed : B.linearIndependence
  spanningClosed : B.spanning

def BasisClosed (B : BasisPackage) : Prop :=
  B.linearIndependence ∧ B.spanning

theorem basis_closed_from_evidence (B : BasisPackage) (E : BasisEvidence B) :
    BasisClosed B := by
  exact And.intro E.linearIndependenceClosed E.spanningClosed

structure DimensionPackage where
  vectorspace : Type u
  basis : BasisPackage
  cardinal : ℕ
  wellDefined : Prop

structure DimensionEvidence (D : DimensionPackage) where
  wellDefinedClosed : D.wellDefined

def DimensionClosed (D : DimensionPackage) : Prop :=
  D.wellDefined

theorem dimension_closed_from_evidence (D : DimensionPackage) (E : DimensionEvidence D) :
    DimensionClosed D := by
  exact E.wellDefinedClosed

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse