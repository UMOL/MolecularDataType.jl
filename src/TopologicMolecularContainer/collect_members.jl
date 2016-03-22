"""
Collect all the members at a specific hierarchy level.

Arguments
------------
container:TopologicMolecularContainer
    input container

level:Integer
    which level
"""
function collect_members(container::TopologicMolecularContainer, level::Integer)
    if level <= 0
        return [container]
    elseif level == 1
        return obtain(container, :members)
    else 
        return vcat([collect_members(item, level-1) for item in obtain(container, :members)]...)
    end
end
