include("member_count.jl")

"""
A getter function for objects of type TopologicMolecularContainer

Arguments
----------
obj:TopologicMolecularContainer
    an TopologicMolecularContainer object 

field:Symbol
    the requested field name
"""
function obtain(obj::TopologicMolecularContainer, field::Symbol, args...)
    if field in fieldnames(obj)
        return getfield(obj, field)

    elseif field == :members
        return getfield(obj, :_members)

    elseif field == :member_count
        return member_count(obj, args...)

    elseif field == :member 
        return obtain_member(obj._members, args...)

    elseif field == :identifier 
        return [(:name, obtain(obj, :name))]

    elseif field == :member_count_tree
        return member_count_tree(obj,args...)

    else
        print_with_color(:red, "ERROR HINT: obtain() cannot find the requested field \"$(field)\"\n\n")
        return nothing
    end
end