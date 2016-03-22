"""
Return a dictionary of identifiers 
 given a ``BasicMolecularContainer`` object
and a tuple index.
This function is need to identify the 
hierarchical identity of a particular atom.

Arguments
----------
obj:BasicMolecularContainer
    input 

indices:Tuple 
    index tuple
"""
function obtain_identifier(obj::BasicMolecularContainer,indices::Tuple)
    function recrusive_obtain_identifier(obj::BasicMolecularContainer, indices::Tuple, accumulator::Array{Tuple{Symbol,Any},1})
        identifier = obtain(obj, :identifier)

        if length(indices) == 0 
            # this means the last user-specified level of the hierarchy is reached
            return vcat(accumulator, identifier)
        else
            return recrusive_obtain_identifier(obtain(obj, :members)[indices[1]], indices[2:end], vcat(accumulator, identifier))
        end
    end

    return recrusive_obtain_identifier(obj, indices, Array{Tuple{Symbol,Any},1}())
end