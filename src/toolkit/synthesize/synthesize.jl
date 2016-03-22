"""
Convert an array of ``FullMolecularContainer`` objects to 
an array of one level higher ``FullMolecularContainer`` objects. 
The order of appearance of these residues
are preserved. 

Arguments
-----------
containers:Array{FullMolecularContainer,1}
    input

levels=1:Integer
    number of levels of the synthesis
"""
function synthesize(containers::Array, levels::Integer=1)
    if levels <= 0 
        return containers
    end

    if length(containers) == 0
        print_with_color(:red, "WARNING! input array of containers is empty!\n\n")
        return Array[]
    end

    ## define the output data type
    input_data_type = typeof(containers[1])
    output_data_type = higher_full_molecular_container(input_data_type)
    if output_data_type == nothing
        return Array[]
    end

    # assort atoms by their identifier fields
    identifier_fields = molecular_identifier_fields(input_data_type)
    if length(identifier_fields) >= 2
        identifier_fields = identifier_fields[2:end]
    else
        return Array[]
    end
    identifier_tuples = catalog(containers, identifier_fields)
    assorted_atom_dict = assort(containers, identifier_fields)

    output = Array{output_data_type,1}()
    for identifier_tuple in identifier_tuples
        atom_array = assorted_atom_dict[identifier_tuple]
        push!(output,
            output_data_type(;
                identifier_tuple...,
                members=extract_topology(atom_array),
                coordinate=extract_coordinate(atom_array)
            )
        )
    end
    return synthesize(output, levels-1)
end
