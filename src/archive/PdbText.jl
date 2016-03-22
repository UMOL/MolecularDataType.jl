"""
**PdbText** is a data type that contains all the text in
a PDB file assorted into different categories.
"""
type PdbText
    atoms::Array{AbstractString}
end



"""
Constructor for data type PdbText 
with no input arguments.
"""
function PdbText()
    atoms = []
    return PdbText(atoms)
end