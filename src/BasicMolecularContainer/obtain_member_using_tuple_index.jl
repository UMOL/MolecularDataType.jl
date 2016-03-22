"""
Return a particular member specified by a tuple-index.

Arguments
----------
obj:BasicMolecularContainer
    input 

indices:Tuple 
    index tuple 
"""
function obtain_member(obj::BasicMolecularContainer, indices::Tuple)
    if length(indices) <= 0
        return nothing 
    elseif length(indices) == 1
        return obtain(obj,:members)[indices[1]]
    else
        return obtain_member(obtain(obj, :members)[indices[1]], indices[2:end])
    end
end