"""
Return an array of ``TopologicAtom`` objects using an array of ``Atom`` objects.

Arguments
---------
atoms:Array{Atom,1}
    input
"""
function extract_topology(atoms::Array{Atom,1})
    atom_count = length(atoms)

    topology_array = Array{TopologicAtom,1}()
    
    if atom_count == 0
        return topology_array
    end

    try
        topology_array = Array{TopologicAtom,1}(atom_count)
    catch error
        if isa(error, OutOfMemoryError)
            print_with_color(:red, "ERROR HINT: insufficient memory for storing topology_array\n\n")
        end
        return Array{TopologicAtom,1}()
    end

    for i = 1:length(atoms)
        topology_array[i] = obtain(atoms[i], :topology)
    end
    
    return topology_array
end