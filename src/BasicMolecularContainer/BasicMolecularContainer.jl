"""
Subtypes of ``BasicMolecularContainer`` 
should contain the basic information 
about a molecular entity.
"""
abstract BasicMolecularContainer <: AbstractMolecularContainer

include("obtain_member_using_tuple_index.jl")
include("obtain_identifier_using_tuple_index.jl")
include("features.jl")
