"""
Check whether the iteration is done.

Arguments
--------------
iter:FullMolecularContainerIterator
    target object

index:Integer
    current state
"""
function Base.done(iter::FullMolecularContainerIterator, index::Integer)
    return index > obtain(iter, :total_count)
end
