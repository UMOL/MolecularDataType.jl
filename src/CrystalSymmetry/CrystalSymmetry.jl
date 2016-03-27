"""
``CrystalSymmetry`` objects stores the crystal symmetry information
of a crystal as listed below:

+---------------------------------+-------------------------------------+--------------------------------------+
| name                            | type                                | note                                 |
+---------------------------------+-------------------------------------+--------------------------------------+
| lattice                         | AbstractString                      | name of the lattice system           |
+---------------------------------+-------------------------------------+--------------------------------------+
| symmetries                      | Array{Tuple{Integer, Integer}, 1}    | n-fold symmetries along Z, X, and Y  |
+---------------------------------+-------------------------------------+--------------------------------------+
| lengths                         | Array{AbstractFloat,1}              | unit cell lengths                    |
+---------------------------------+-------------------------------------+--------------------------------------+
| angles                          | Array{AbstractFloat,1}              | unit cell angles                     |
+---------------------------------+-------------------------------------+--------------------------------------+
| chain_count                     | Integer                             | number of chains in a unit cell      |
+---------------------------------+-------------------------------------+--------------------------------------+

Note: the symmetries are listed as an array of three ``Tuple`` objects. 
For example, [(4,1),(2,0),(2,0)] means 4-fold symmetry around Z with offset
by 1*1/4 of the unit cell length along Z, 2-fold symmetry around X
with no offset, and finally 2-fold symmetry around Y with no offset.
"""
immutable CrystalSymmetry
    lattice::AbstractString
    symmetries::Array{Tuple{Integer, Integer}, 1}
    lengths::Array{AbstractFloat,1}
    angles::Array{AbstractFloat,1}
    chain_count::Integer
end

include("constructor_0.jl")
include("obtain.jl")
include("comparison.jl")