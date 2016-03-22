"""
Assort an array of ``AbstractMolecularContainer`` objects by fields
and return a dictionary of type ``Dict{Tuple,Array{AbstractMolecularContainer,1}}``.

Arguments
-----------
containers:Array
    input

fields:Array{Symbol,1}
    array of field names
"""
function assort(containers::Array, fields::Array{Symbol,1})
    output = Dict{Tuple,Array{AbstractMolecularContainer,1}}()
    for item::AbstractMolecularContainer in containers
        key = tuple([(field, obtain(item, field)) for field in fields]...)
        if haskey(output, key)
            push!(output[key], item)
        else
            output[key] = [item]
        end
    end
    return output
end
