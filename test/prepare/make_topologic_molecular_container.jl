"""
Make an object of type **TopologicMolecularContainer**
with a user specified number of hierarchy levels.

Arguments
------------
name::AbstractString
    name of the output object

member_names::Array{AbstractString}
    names for its members

level_count=1::Integer
    number of hierarchy levels

member_counts::Array{Integer,1}
    the number of members at each level of the hierarchy
"""
function make_topologic_molecular_container(;member_names=[], level_count=1, member_counts=[], name="0")
    if level_count <= 0
        return TopologicMolecularContainer(name=name, members=[])

    else
        if length(member_counts) == 0
            member_counts = [1 for i = 1:level_count]
        end
        if length(member_names) == 0 
            member_names = [string(name, "-", i) for i = 1:member_counts[1]]
        end
        return TopologicMolecularContainer(name=name, 
            members=[make_topologic_molecular_container(
                name=member_names[i],
                level_count=level_count-1, 
                member_counts=member_counts[2:end]) for i = 1:member_counts[1]])
    end
end
