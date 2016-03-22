"""
Return the element type of the output.

Arguments
------------
:FullMolecularContainerIterator
    data type 
"""
function Base.eltype(::Type{FullMolecularContainerIterator})
    return FullMolecularContainer
end
