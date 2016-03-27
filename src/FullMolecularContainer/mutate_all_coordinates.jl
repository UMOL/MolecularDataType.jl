"""
Mutate all coordinates at once.

Arguments
----------
obj:FullMolecularContainer
    input 

new_coordinates:Array{Array{AbstractFloat,1}}
    new coordinate 
"""
function mutate_all_coordinates!(obj::FullMolecularContainer, new_coordinates::Array)
    number_of_coordinates = length(obtain(obj, :coordinate))
    if number_of_coordinates != length(new_coordinates)
        @debug_info println("ERROR HINT! (mutate_coordinate) the number of new_coordinates must equal to the old coordinates\n\n")
        return nothing
    end
    for i = 1:number_of_coordinates
        obtain(obj, :coordinate)[i] = new_coordinates[i]
    end
    return nothing
end