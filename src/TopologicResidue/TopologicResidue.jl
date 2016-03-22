"""
**TopologicResidue** is an immutable composite data type
composed of a collections of objects
of type **TopologicAtom**. The following information can be
obtained by the ``obtain()`` function.

+---------------+------------------------+---------------------------+
| field         | data type              |  note                     |
+===============+========================+===========================+
| :id           | Integer                | residue ID                |              
+---------------+------------------------+---------------------------+
| :name         | AbstractString         | residue name              |
+---------------+------------------------+---------------------------+
| :atoms        | Array{TopologicAtom,1} | TopologicAtom objects     |
+---------------+------------------------+---------------------------+

"""
immutable TopologicResidue <: BasicMolecularContainer
    id::Integer # residue id
    _container::TopologicMolecularContainer # contain :name and :atoms
end

include("constructor_0.jl")
include("constructor_1.jl")
include("comparison.jl")
include("obtain.jl")
include("features.jl")
