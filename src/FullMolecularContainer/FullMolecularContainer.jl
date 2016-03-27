"""
**FullMolecularContainer** is the parent-type for
all concrete container types, e.g., ``Atom``,
``Residue``, ``Segment``, ``Chain`` and ``MolecularSystem``.
"""
abstract FullMolecularContainer <: AbstractMolecularContainer

include("obtain_member_using_tuple_index.jl")
include("obtain_member_using_linear_index.jl")
include("features.jl")
include("mutate_coordinate.jl")
include("mutate_all_coordinates.jl")
