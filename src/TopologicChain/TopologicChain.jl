"""
**TopologicChain** is an immutable data type composed of 
objects of type **Segment**.
"""
immutable TopologicChain <: BasicMolecularContainer
    _container::TopologicMolecularContainer
end

include("constructor_0.jl")
include("constructor_1.jl")
include("comparison.jl")
include("obtain.jl")
include("features.jl")
