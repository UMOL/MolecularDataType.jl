"""
A getter function for objects of type MolecularSystem.

Arguments
----------
obj:MolecularSystem
    an MolecularSystem object 

field:Symbol
    the requested field name
"""
function obtain(obj::MolecularSystem, field::Symbol, args...)
    if field in fieldnames(obj)
        return getfield(obj, field)

    elseif field == :system_name 
        return obtain(obj._topology, :name)
        
    elseif field == :coordinate
        if length(args) == 0
            return obj._coordinate
        else 
            return obj._coordinate[args[1]]
        end

    elseif field == :topology 
        return obj._topology 

    elseif field == :atom 
        @debug length(args) > 0 
        return obtain_member(obj, Atom, obtain(obj, :member_count_tree, 4), args...)

    elseif field == :atom_iterator
        return FullMolecularContainerIterator(Atom, obtain(obj, :member_count_tree, 4), obj)

    else
        return obtain(obj._topology, field, args...)
    end
end