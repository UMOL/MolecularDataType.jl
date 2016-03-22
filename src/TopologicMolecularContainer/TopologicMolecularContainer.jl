"""
**TopologicMolecularContainer** is an immutable data type composed of 
the following fields:

+----------------------+-------------------------------------+---------------------+
| field                | type                                | note                |
+======================+=====================================+=====================+
| :name                | AbstractString                      | container name      | 
+----------------------+-------------------------------------+---------------------+
| :members             | Array{AbstractMolecularContainer,1} | member items        |
+----------------------+-------------------------------------+---------------------+
"""
immutable TopologicMolecularContainer <: BasicMolecularContainer
    name::AbstractString # segment name
    _members::Array{AbstractMolecularContainer,1} # member items
end

include("constructor_0.jl")
include("comparison.jl")
include("obtain.jl")
include("level_count.jl")
include("bottom_member_count.jl")
include("collect_members.jl")

