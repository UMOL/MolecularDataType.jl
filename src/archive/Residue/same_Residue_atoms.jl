"""
Compare the **atoms** field of objects
of type **Residue**.

Arguments
----------
atoms1:Dict{Symbol,Atom}
    a dictionary representing the atoms field

atoms2:Dict{Symbol,Atom}
    another dictionary representing the atoms field
"""
function same_Residue_atoms(
    atoms1::Dict{Symbol,Atom}, 
    atoms2::Dict{Symbol,Atom})

    # check number of keys
    if length(collect(keys(atoms1))) != length(collect(keys(atoms2)))
        return false
    end

    # check key names
    for key in keys(atoms1)
        if ! haskey(atoms2, key)
            return false
        end
    end

    # check values
    for key in keys(atoms1)
        value1 = atoms1[key]
        value2 = atoms2[key]

        if atoms1[key] != atoms2[key]
            return false
        end
    end
    return true
end