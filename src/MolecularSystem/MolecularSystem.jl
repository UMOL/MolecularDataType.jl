"""
**MolecularSystem** is a composite data type 
of a collection of residues.
The coordinate is stored as an array of floating point arrays,
i.e., an array of pointers to other arrays. 
This is designed to tightly control the memory usage
when modifying the coordinates of a molecular system.
"""
immutable MolecularSystem <: FullMolecularContainer
    index::Integer # sequential index
    _topology::TopologicMolecularSystem
    _coordinate::Array{Array{AbstractFloat,1},1}
end

include("constructor_0.jl")
include("constructor_1.jl")
include("constructor_2.jl")
include("comparison.jl")
include("obtain.jl")
include("clone_transformation_functions.jl")
include("clone.jl")
include("batch_clone.jl")
include("fuse.jl")
