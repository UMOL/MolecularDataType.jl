import Base.==

"""
Define the meaning of "==" operator for type ``CrystalSymmetry``. 

Arguments 
----------
obj1:CrystalSymmetry 
    An instance of type CrystalSymmetry.

obj2:CrystalSymmetry 
    Another instance of type CrystalSymmetry.
"""
function ==(obj1::CrystalSymmetry, obj2::CrystalSymmetry)
    for field in fieldnames(obj1)
        value1 = getfield(obj1, field)
        value2 = getfield(obj2, field)

        if value1 != value2
            return false
        end

    end
    return true
end
