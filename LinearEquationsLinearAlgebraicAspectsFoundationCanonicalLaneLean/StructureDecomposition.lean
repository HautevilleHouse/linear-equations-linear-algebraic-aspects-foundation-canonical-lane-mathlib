import LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean.RepresentationTheorem

/-!
# Structure Decomposition Package
-/

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

structure StructureDecompositionPackage {U : UniversalPropertyPackage}
    (R : RepresentationTheoremPackage U) where
  decompositionType : Type
  directSumDecomposition : Prop
  invariantSubspacesClassified : Prop

structure StructureDecompositionEvidence {U : UniversalPropertyPackage}
    {R : RepresentationTheoremPackage U} (S : StructureDecompositionPackage R) where
  directSumDecompositionClosed : S.directSumDecomposition
  invariantSubspacesClassifiedClosed : S.invariantSubspacesClassified

def StructureDecompositionClosed {U : UniversalPropertyPackage}
    {R : RepresentationTheoremPackage U} (S : StructureDecompositionPackage R) : Prop :=
  S.directSumDecomposition ∧ S.invariantSubspacesClassified

theorem structure_decomposition_closed_from_evidence
    {U : UniversalPropertyPackage} {R : RepresentationTheoremPackage U}
    (S : StructureDecompositionPackage R) (E : StructureDecompositionEvidence S) :
    StructureDecompositionClosed S := by
  exact And.intro E.directSumDecompositionClosed E.invariantSubspacesClassifiedClosed

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse