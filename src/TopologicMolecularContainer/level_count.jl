"""
Count the number of levels of sub-containers
that the input container has.
This is a recursive function which
terminates when input container has no member.

Arguments
---------------
container:TopologicMolecularContainer
    input container 
"""
function level_count(container::TopologicMolecularContainer)
    function recursive_level_count(container::TopologicMolecularContainer, accumulator::Integer)
        members = obtain(container, :members)
        if length(members) == 0
            return accumulator
        else
            return recursive_level_count(members[1], accumulator+1)
        end
    end
    return recursive_level_count(container, 0)
end
