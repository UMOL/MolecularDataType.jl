"""
Return an array of ``AbstractMolecularContainer`` objects
from an input array of ``FullMolecularContainer`` objects.

Arguments
---------
containers:Array{FullMolecularContainer,1}
    input
"""
function extract_topology(containers::Array)
    topology = Array{AbstractMolecularContainer,1}()

    for item::FullMolecularContainer in containers
        push!(topology, obtain(item, :topology))
    end
    
    return topology
end
