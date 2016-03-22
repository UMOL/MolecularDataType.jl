import Base.==

"""
Define the meaning of "==" operator for type TopologicAtom 

Arguments 
----------
atom1:TopologicAtom 
    An instance of type TopologicAtom.

atom2:TopologicAtom 
    Another instance of type TopologicAtom.
"""
function ==(atom1::TopologicAtom, atom2::TopologicAtom)
    tol = 1e-3 # tolerance for floating point number comparison

    for field in fieldnames(atom1)
        value1 = getfield(atom1, field)
        value2 = getfield(atom2, field)

        if issubtype(typeof(value1), AbstractFloat)
            if abs(value1 - value2) > tol
                return false
            end

        else
            if value1 != value2
                return false
            end

        end
    end

    return true
end
