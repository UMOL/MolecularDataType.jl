"""
A constructor for type Residue with 1 required argument
and 1 keyword argument.
The residue index and name and segment name are derived from the first
Atom object in the ``atoms`` array.
If the ``atoms`` array is empty, then 
a Residue object with default parameters will be returned,
i.e., Residue().

Arguments
----------
atom_array:Array{Atom,1}
    an array of Atom object

system="":AbstractString
    name of the molecular system where the residue is located
"""
function Residue(atom_array::Array{Atom,1}; system::AbstractString="")
    if length(atom_array)==0
        return  Residue()
    else
        return Residue(
            index=obtain(atom_array[1], :residue_id), 
            name=obtain(atom_array[1], :residue), 
            segment=obtain(atom_array[1], :segment),
            system=system,
            atoms=Dict( [(Symbol(string(obtain(atom,:index))), atom) for atom in atom_array] )
        )
    end
end
