"""
A getter function for objects of type TopologicMolecularSystem.

Arguments
----------
obj:TopologicMolecularSystem
    an TopologicMolecularSystem object 

field:Symbol
    the requested field name
"""
function obtain(obj::TopologicMolecularSystem, field::Symbol, args...)
    if field in fieldnames(obj)
        return getfield(obj, field)

    elseif field == :system_name 
        return obtain(obj._container, :name)

    elseif field == :chains
        return obtain(obj._container, :members)

    elseif field == :chain_count
        return obtain(obj._container, :member_count, 1)

    elseif field == :segment_count
        return obtain(obj._container, :member_count, 2)

    elseif field == :residue_count
        return obtain(obj._container, :member_count, 3)

    elseif field == :atom_count
        return obtain(obj._container, :member_count, 4)

    elseif field == :identifier 
        return [(:system_name, obtain(obj, :name))]

    elseif field == :member_count_tree
        if length(args) > 0 && args[1] == 4
            return obj._member_count_tree
        else 
            @debug length(args) > 0
            return member_count_tree(obj, args...)
        end

    else
        return obtain(obj._container, field, args...)
    end
end