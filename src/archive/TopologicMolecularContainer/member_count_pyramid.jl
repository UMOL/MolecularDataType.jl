"""
Create a member count pyramid (array of arrays). 
The output array has ``N`` arrays, 
corresponding to ``N`` levels of 
hierarchies of the input container.
Each number in each of the ``N`` arrays
represents the number of 
base-level containers enclosed
by the container at that particular 
hierarchy level.

Arguments
----------
container:TopologicMolecularContainer
    input container 
"""
function member_count_pyramid(container::TopologicMolecularContainer)
    # unfinished
    function recursive_member_count_pyramid(containers::Array{TopologicMolecularContainer,1}, 
        pyramid_array::Array{Array{Integer,1}})
        count = member_count(container)
    end 
end 