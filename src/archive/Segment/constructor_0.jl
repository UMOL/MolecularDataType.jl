"""
Constructor for type **Segment** with keyword arguments.
"""
function Segment(;name="",system="",residues=Dict{Symbol,Residue}())
    residue_count = length(residues)
    
    if residue_count == 0
        atom_count = 0
    else
        atom_count = sum([obtain(residues[k], :atom_count) for k in keys(residues)])
    end

    return Segment(name, system, atom_count, residue_count, residues)
end
