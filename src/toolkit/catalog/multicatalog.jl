"""
Return an ordered catalog(array of tuples) of unique 
tuple of ``(field, value)`` tuples
from an input array of ``AbstractMolecularContainer`` objects.
The order of appearance is the same as in the input 
array.

Arguments
----------
containers:Array
    input array 

fields:Array{Symbol,1}
    field name
"""
function catalog(containers::Array, fields::Array{Symbol,1})
    output = []
    for item::AbstractMolecularContainer in containers
        combo = tuple([(field, obtain(item, field)) for field in fields]...)
        if !(combo in output)
            push!(output, combo)
        end
    end
    return output
end

