"""
Return the initial state, which is the starting index (i.e., 1)

Arguments
---------
iter:FullMolecularContainerIterator
    target object
"""
function Base.start(iter::FullMolecularContainerIterator)
    return 1
end
