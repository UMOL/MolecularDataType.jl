"""
Return an ordered catalog(array) of unique ``(field,value)`` tuples
from an input array of ``AbstractMolecularContainer`` objects.
The order of appearance is the same as in the input 
array.

Arguments
----------
containers:Array
    input array 

field:Symbol
    field name
"""
function catalog(containers::Array, field::Symbol)
    output = []
    for item::AbstractMolecularContainer in containers
        pair = (field, obtain(item, field))
        if !(pair in output)
            push!(output, pair)
        end
    end
    return output
end

