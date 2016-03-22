"""
Returns the current item and the next state (index of the next output)

Arguments
-----------
iter:FullMolecularContainerIterator
    target object 

index::Integer 
    index of the current output 
"""
function Base.next(iter::FullMolecularContainerIterator, index::Integer)
    molecule = obtain(iter, :molecule)
    return obtain_member(molecule, Atom, obtain(iter, :count_tree), index), index + 1
end
