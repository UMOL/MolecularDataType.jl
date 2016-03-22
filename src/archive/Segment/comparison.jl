import Base.==

"""
Define the meaning of "==" operator for type Segment 

Arguments 
----------
obj1:Segment 
    An instance of type Segment.

obj2:Segment 
    Another instance of type Segment.
"""
function ==(obj1::Segment, obj2::Segment)
    for field in fieldnames(obj1)
        value1 = getfield(obj1, field)
        value2 = getfield(obj2, field)

        if field == :residues && !same_Segment_residues(value1,value2)
            return false

        else
            if value1 != value2
                return false
            end

        end
    end
    
    return true
end
