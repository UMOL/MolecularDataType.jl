"""
A constructor for type ``Segment`` with 1 required
argument (an array of Residue objects) and
1 optional argument.

Argument
----------
residue_array:Array{Residue,1}
    an array of Residue objects

system="":AbstractString
    name of molecular system 
"""
function Segment(residue_array::Array{Residue,1}; 
    system::AbstractString="")

    if length(residue_array) == 0
        return Segment()
    else
        return Segment(
            name=obtain(residue_array[1], :segment),
            system=system,
            residues=Dict([(Symbol(string(obtain(residue, :index))), residue) for residue in residue_array])
        )
    end
end