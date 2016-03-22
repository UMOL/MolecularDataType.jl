"""
Extract atomic coordinates from an array of Atom objects.

Arguments
---------
atoms:Array{Atom,1}
    input
"""
function extract_coordinate(atoms::Array{Atom,1})
    atom_count = length(atoms)

    #=  Developer's note [Yuhang(Steven) Wang; 03/07/2016]:

        Instead of assuming the coordinate is always 3 dimensional and 
        always has type Float64, it is better to let the client 
        to decide these options.

        The try...catch will make sure this function will gracefully
        handle the out-of-memory error and not crashing the client's other code.
    =#
    data_type, dimension_count = get_coordinate_info(obtain(atoms[1], :coordinate))
    
    coordinates = Array{data_type}()
    
    if atom_count == 0
        return coordinates
    end

    try
        coordinates = Array{AbstractFloat,2}(atom_count,dimension_count)
    catch error
        if isa(error, OutOfMemoryError)
            print_with_color(:red, "ERROR HINT: insufficient memory for storing coordinates\n\n")
        end
        return Array{data_type}()
    end

    for i = 1:length(atoms)
        coordinates[i, :] = obtain(atoms[i], :coordinate)
    end
    
    return coordinates
end