"""
Obtain the coordinate from every atom in a Residue object
and return a dense array.

Arguments
---------
obj:Residue
    a Residue object 
"""
function obtain_coordinate(obj::Residue)
    atoms = obtain(obj, :atoms)
    atom_count = obtain(obj, :atom_count)
    all_keys = sort([k for k in keys(atoms)])

    if atom_count != length(all_keys)
        print_with_color(:red, "Residue object not self-consistent: atom_count != actual number of atoms from a residue\n")
    end

    if atom_count == 0
        return Array{AbstractFloat,2}()
    end

    # find out the data type of the atomic coordinate
    first_atom = atoms[all_keys[1]]
    data_type = obtain(first_atom, :coordinate_data_type)
    dimension_count = obtain(first_atom, :dimension_count)

    # allocate memory for the output 2D array
    output::Array{data_type,2} = Array{data_type,2}()
    try
        output = Array{data_type,2}(atom_count, dimension_count)
        for i = 1:atom_count
            output[i, 1:end] = obtain(atoms[all_keys[i]], :coordinate)
        end
    catch error
        if isa(error, OutOfMemoryError)
            print_with_color(:red, "ATTENTION! not enough memory for copying coordinate!\n")
        end
    end

    return output
end
        
