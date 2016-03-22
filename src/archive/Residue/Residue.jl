"""
**Residue** is an immutable composite data type
composed of a collections of objects
of type **Atom**.
"""
immutable Residue
    index::Integer # residue index
    name::AbstractString # residue name
    segment::AbstractString # name of its home segment
    system::AbstractString # name of its home molecular system
    _topologic_atoms::Array{TopologicAtom,1} # all the atoms belonging to the residue
    _coordinates::Array{AbstractFloat,2} # all atomic coordinates
end

include("same_Residue_atoms.jl")
# include("constructor_0.jl")
include("constructor_1.jl")
include("comparison.jl")
include("find_residues.jl")
include("obtain.jl")
include("convert_to_residue_dict.jl")
include("convert_to_residue_array.jl")