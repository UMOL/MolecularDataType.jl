"""
Modify (in-place) one of the coordinates of a ``FullMolecularContainer`` object.

Arguments
----------
obj:FullMolecularContainer
    input 

id:Integer
    which atom 

new_coordinate:Array{AbstractFloat,1}
    new coordinate 
"""
function mutate_coordinate!(obj::FullMolecularContainer, id::Integer, new_coordinate::Array)
    obtain(obj, :coordinate)[id] = new_coordinate
    return nothing
end