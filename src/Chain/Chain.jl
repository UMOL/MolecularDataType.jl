"""
**Chain** is an immutable data type composed of 
objects of type **Segment**.
"""
immutable Chain <: FullMolecularContainer
    index::Integer # sequential index
    system_name::AbstractString
    _topology::TopologicChain
    _coordinate::Array{Array{AbstractFloat,1},1}
end

include("constructor_0.jl")
include("constructor_1.jl")
include("comparison.jl")
include("obtain.jl")
