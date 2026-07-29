import LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean.MathlibObjects

/-!
# Universal Property Package
-/

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

structure UniversalPropertyPackage where
  object : LinearAlgebraAdmittedObject
  universalMapping : Prop
  factorizationProperty : Prop
  uniquenessCondition : Prop

structure UniversalPropertyEvidence (P : UniversalPropertyPackage) where
  universalMappingClosed : P.universalMapping
  factorizationPropertyClosed : P.factorizationProperty
  uniquenessConditionClosed : P.uniquenessCondition

def UniversalPropertyClosed (P : UniversalPropertyPackage) : Prop :=
  P.universalMapping ∧ P.factorizationProperty ∧ P.uniquenessCondition

theorem universal_property_closed_from_evidence (P : UniversalPropertyPackage)
    (E : UniversalPropertyEvidence P) : UniversalPropertyClosed P := by
  exact And.intro E.universalMappingClosed
    (And.intro E.factorizationPropertyClosed E.uniquenessConditionClosed)

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse