"""
Extract atomic coordinates from an array of FullMolecularContainer objects.

Arguments
---------
containers:Array{FullMolecularContainer,1}
    input
"""
function extract_coordinate(containers::Array)
    if length(containers) == 0
        return Array{AbstractFloat,1}[]
    end

    coordinates = Array[]

    for item::FullMolecularContainer in containers
        for coordinate in obtain(item, :coordinate)
            push!(coordinates, coordinate)
        end
    end
    
    return coordinates
end