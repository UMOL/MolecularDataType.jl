"""
**TopologicMolecularSystem** is a composite data type 
of a collection of residues.
"""
immutable TopologicMolecularSystem <: BasicMolecularContainer
    _member_count_tree::MemberCount
    crystal_symmetry::CrystalSymmetry
    _container::TopologicMolecularContainer
end

include("constructor_0.jl")
include("constructor_1.jl")
include("comparison.jl")
include("obtain.jl")
include("features.jl")
