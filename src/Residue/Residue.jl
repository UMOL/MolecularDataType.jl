"""
**Residue** is an immutable composite data type
composed of a collections of objects
of type **TopologicAtom** and also coordinates. 
The following information can be
obtained by the ``obtain()`` function.

+---------------+--------------------------------+---------------------------+
| field         | data type                      |  note                     |
+===============+================================+===========================+
| :id           | Integer                        | residue ID                |              
+---------------+--------------------------------+---------------------------+
| :name         | AbstractString                 | residue name              |
+---------------+--------------------------------+---------------------------+
| :members      | Array{TopologicAtom,1}         | TopologicAtom objects     |
+---------------+--------------------------------+---------------------------+
| :coordinate   | Array{Array{AbstractFloat,1},1}| atomic coordinates        |
+---------------+--------------------------------+---------------------------+
"""
immutable Residue <: FullMolecularContainer
    index::Integer # sequential index within the molecular system
    segment_name::AbstractString
    chain_name::AbstractString
    system_name::AbstractString
    _topology::TopologicResidue # contain :name and :members
    _coordinate::Array{Array{AbstractFloat,1},1}
end

include("constructor_0.jl")
include("constructor_1.jl")
include("comparison.jl")
include("obtain.jl")
