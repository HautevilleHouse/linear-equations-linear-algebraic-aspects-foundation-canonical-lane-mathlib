import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

structure LinearAdmissibleObject where
  V : Type
  addCommGroupV : AddCommGroup V
  moduleV : Module ℚ V
  finiteDimensional : FiniteDimensional ℚ V
  basis : Basis (Fin (FiniteDimensional.finrank ℚ V)) ℚ V

def linearAdmittedClosure (A : AdmissibleClass) : Prop :=
  (match A.object with
  | LinearAdmittedObject o => True) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse
