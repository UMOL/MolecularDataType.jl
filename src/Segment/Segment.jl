"""
**Segment** is an immutable data type composed of 
objects of type **TopologicResidue** and
also array of coordinate arrays.
+---------------+--------------------------------+---------------------------+
| field         | data type                      |  note                     |
+===============+================================+===========================+
| :index        | Integer                        | sequential index          |
+---------------+--------------------------------+---------------------------+
| :name         | AbstractString                 | segment name              |
+---------------+--------------------------------+---------------------------+
| :residues     | Array{TopologicResidue,1}      | TopologicResidue objects  |
+---------------+--------------------------------+---------------------------+
| :coordinate   | Array{Array{AbstractFloat,1},1}| atomic coordinates        |
+---------------+--------------------------------+---------------------------+

"""
immutable Segment <: FullMolecularContainer
    index::Integer # sequential index
    chain_name::AbstractString
    system_name::AbstractString
    _topology::TopologicSegment
    _coordinate::Array{Array{AbstractFloat,1},1}
end

include("constructor_0.jl")
include("constructor_1.jl")
include("comparison.jl")
include("obtain.jl")
