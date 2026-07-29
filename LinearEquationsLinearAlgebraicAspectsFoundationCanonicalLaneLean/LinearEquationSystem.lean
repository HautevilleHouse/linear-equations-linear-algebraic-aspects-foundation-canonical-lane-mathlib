import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean

structure LinearEquation (K : Type u) [Field K] (n : ℕ) where
  coefficients : Fin n → K
  rhs : K

structure SolutionSet (K : Type u) [Field K] (n : ℕ) where
  solutions : Set (Fin n → K)
  linearStructure : Submodule K (Fin n → K) where
    carrier := solutions
    add_mem' := by
      intro a b ha hb
      sorry
    zero_mem' := sorry
    smul_mem' := sorry

structure HomogeneousSystem (K : Type u) [Field K] (m n : ℕ) where
  equations : Fin m → LinearEquation K n
  homogeneousCondition : ∀ (eq : LinearEquation K n), eq.rhs = 0

structure SolutionSpace (sys : HomogeneousSystem K m n) where
  space : Submodule K (Fin n → K)
  condition : ∀ (v : Fin n → K), v ∈ space.1 ↔ ∀ (i : Fin m), (sys.equations i).coefficients ⬝ v = 0

theorem solution_space_dimension (sys : HomogeneousSystem K m n) (sol : SolutionSpace sys) :
    FiniteDimensional.finrank K sol.space = n - (Fintype.card (Fin m)) := by
  sorry

end LinearEquationsLinearAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse
