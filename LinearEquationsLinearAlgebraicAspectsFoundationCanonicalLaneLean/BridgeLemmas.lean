import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

structure AdmittedObject where
  linearStructure : Type u
  basisIndependent : Prop
  representationTheorem : Prop
  representationTheoremTerm : representationTheorem

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.representationTheorem

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.representationTheoremTerm

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse