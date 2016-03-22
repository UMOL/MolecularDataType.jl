"""
A ``TopologicAtom`` (immutable) object stores all the information
about an atom except for its geometric coordinate.

"""
#= developer's note: 
    The numbers in the comments refer to the character
    position in the RCSB PDB ATOM section.
=# 
immutable TopologicAtom
    index::Integer # 7-11
    name::AbstractString # 13-16
    raw_name::AbstractString # preserving space characters
    alt_location::Char # 17
    residue::AbstractString # 18-20
    chain::Char # 22
    residue_id::Integer # 23-26
    insertion::Char # 27
    occupancy::AbstractFloat # 55-60
    beta::AbstractFloat # 61-66
    segment::AbstractString # 73-76
    element::AbstractString # 77-78
    charge::Integer # 79-80
    system::AbstractString # name of its home molecular system
end

# constructor with keyword arguments
include("constructor_0.jl")

# Define behaviors of common operators on type Atom
include("comparison.jl")

# Define the getter function
include("obtain.jl")
