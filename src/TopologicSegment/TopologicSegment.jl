"""
**TopologicSegment** is an immutable data type composed of 
objects of type **Residue**.
"""
immutable TopologicSegment <: BasicMolecularContainer
    _container::TopologicMolecularContainer
end

include("constructor_0.jl")
include("constructor_1.jl")
include("comparison.jl")
include("obtain.jl")
include("features.jl")
