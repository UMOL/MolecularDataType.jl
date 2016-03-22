"""
Define length() for ``FullMolecularContainerIterator``.
"""
function Base.length(iter::FullMolecularContainerIterator)
    return obtain(iter, :total_count)
end
