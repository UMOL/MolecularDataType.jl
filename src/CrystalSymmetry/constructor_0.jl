"""
Constructor for ``CrystalSymmetry`` with keyword arguments.

Arguments 
--------------
lattice:AbstractString
    name of the lattice system 

symmetries:Array{Tuple{Integer,Integer}, 1}
    three pairs of Integers for the n-fold symmetry along Z, X, and Y

lengths:Array{AbstractFloat,1}
    unit cell lengths 

angles:Array{AbstractFloat, 1}
    unit cell angles 
"""
function CrystalSymmetry(;lattice::AbstractString="", 
    symmetries::Array=[],
    lengths::Array=[],
    angles::Array=[])
    return CrystalSymmetry(lattice, symmetries, lengths, angles)
end
