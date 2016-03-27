"""
**AbstractMolecularContainer** is the parent-type for
all other container types.
"""
abstract AbstractMolecularContainer


include("member_count_tree.jl")
include("one_clone.jl")
include("clone.jl")
include("batch_clone.jl")
include("features.jl")
include("properties.jl")