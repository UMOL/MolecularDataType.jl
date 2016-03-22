"""
Construct a TopologicMolecularSystem object using 
an array of Atom object.

Arguments
-----------
atom_array:Array{Atom,1}
    input
"""
function TopologicMolecularSystem(atom_array::Array{Atom,1})
    if length(atom_array) == 0
        return TopologicMolecularSystem()
    end

    topologic_atoms  = Array{TopologicAtom,1}()
    topologic_residues = Array{TopologicResidue,1}()
    topologic_segments = Array{TopologicSegment,1}()
    topologic_chains = Array{TopologicChain,1}()

    current_residue_name = obtain(atom_array[1], :residue)
    current_residue_id = obtain(atom_array[1], :residue_id)
    current_segment = obtain(atom_array[1], :segment)
    current_chain = obtain(atom_array[1], :chain)

    for i = 1:length(atoms)
        atom = atoms[i]
        if obtain(atom, :residue_id) == current_residue_id
            push!(topologic_atoms, obtain(atom, :topology))
        end

        if i == length(atoms) || obtain(atom, :residue_id) != current_residue_id
            push!(topologic_residues, 
                TopologicResidue(
                name=current_residue_name,
                id=current_residue_id, 
                atoms=topologic_atoms))
            current_residue_id = obtain(atom, :residue_id)
            # prepare atom collector for the next residue
            topologic_atoms = [obtain(atom, :topology)]
        end

        if i == length(atomns) || obtain(atom, :segment) != current_segment
            push!(topologic_segments, 
                TopologicSegment(
                    name=current_segment,
                    residues=topologic_residues))
            current_segment = obtain(atom, :segment) # start a new segment
            # prepare residue collector for the next segment
            topologic_residues = Array{TopologicResidue,1}()
        end

        if i == length(atoms) || obtain(atom, :chain) != current_chain
            push!(topologic_chains,
                TopologicChain(
                    name=current_chain,
                    segments=topologic_segments))
            current_chain = obtain(atom, :chain) # start a new chain
            # prepare segment collector for the next chain
            topologic_segment = Array{TopologicSegment,1}()
        end
    end
    return TopologicMolecularSystem(name=obtain(atoms[1], :system),
        chains=topologic_chains)
end