import Base.==

"""
Define the meaning of "==" operator for type Residue 

Arguments 
----------
obj1:Residue 
    An instance of type Residue.

obj2:Residue 
    Another instance of type Residue.
"""
function ==(obj1::Residue, obj2::Residue)
    for field in fieldnames(obj1)
        value1 = getfield(obj1, field)
        value2 = getfield(obj2, field)

        if field == :atoms && !same_Residue_atoms(value1,value2)
            return false

        else
            if value1 != value2
                return false
            end

        end
    end
    return true
end
