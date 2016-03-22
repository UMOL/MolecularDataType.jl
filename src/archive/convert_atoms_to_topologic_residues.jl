"""
Convert an array of ``Atom`` objects to 
an array of ``TopologicResidue`` objects. 
The order of appearance of these residues
are preserved. 

Arguments
---------
atom_array:Array{Atom,1}
    input
"""
function atoms_to_topologic_residues(atom_array::Array{Atom,1})
    output = Array{TopologicResidue,1}()

    tmp_atoms = Array{Atom,1}()

    current_residue_id = obtain(atom_array[1], :residue_id)

    for i = 1:length(atom_array)
        atom = atom_array[i]
        if obtain(atom, :residue_id) == current_residue_id
            push!(tmp_atoms, atom)
        end

        if i == length(atom_array) || obtain(atom, :residue_id) == current_residue_id
            push!(output, 
                TopologicResidue(
                    residue_id=current_residue_id,
                    name=obtain(atom, :residue),
                    atoms=tmp_atoms
                )
            )
            current_residue_id = obtain(atom, :residue_id)
            tmp_atoms = Array{Atom,1}()
        end
    end

    return output
end