"""
**Segment** is an immutable data type composed of 
objects of type **Residue**.
"""
immutable Segment
    name::AbstractString # segment name
    system::AbstractString # name of its home molecular system
    atom_count::Integer
    residue_count::Integer
    residues::Dict{Symbol, Residue} # dictionary of residues
end

include("same_Segment_residues.jl")
include("constructor_0.jl")
include("constructor_1.jl")
include("comparison.jl")
include("find_segments.jl")
include("convert_to_segment_dict.jl")
include("obtain.jl")
