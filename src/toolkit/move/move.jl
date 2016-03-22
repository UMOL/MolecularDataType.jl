"""
Apply a coordinate transformation function to each coordinate
of an ``FullMolecularContainer`` object.

Arguments
----------
obj::FullMolecularContainer
    input 

transform:Function 
    coordinate transformation function 
"""
function move!(obj::FullMolecularContainer, transform::Function)
    for i = 1:obtain(obj,:atom_count)
        mutate!(obj, :coordinate, i, transform(obtain(obj, :coordinate, i)))
    end
    return nothing
end
