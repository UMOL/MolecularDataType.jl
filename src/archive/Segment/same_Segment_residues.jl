"""
Compare the **residues** field of objects
of type **Segment**.

Arguments
----------
residues1:Dict{Symbol,Residue}
    a dictionary representing the residues field

residues2:Dict{Symbol,Residue}
    another dictionary representing the residues field
"""
function same_Segment_residues(
    residues1::Dict{Symbol,Residue}, 
    residues2::Dict{Symbol,Residue})

    # check number of keys
    if length(collect(keys(residues1))) != length(collect(keys(residues2)))
        return false
    end

    # check key names
    for key in keys(residues1)
        if ! haskey(residues2, key)
            return false
        end
    end

    # check values
    for key in keys(residues1)
        value1 = residues1[key]
        value2 = residues2[key]

        if residues1[key] != residues2[key]
            return false
        end
    end
    
    return true
end