"""
Count the total number of base-level members for
the input composite container.

Arguments
-------------
container:TopologicMolecularContainer
    input container 
"""
function bottom_member_count(container::TopologicMolecularContainer)
    return member_count(container, level_count(container))
end
