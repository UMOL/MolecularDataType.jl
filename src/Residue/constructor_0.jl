"""
Constructor for type **Residue** with keyword arguments.
"""
function Residue(
    index::Integer,
    residue_id::Integer, 
    residue_name::AbstractString,
    segment_name::AbstractString,
    chain_name::AbstractString,
    system_name::AbstractString,
    members::Array,
    coordinate::Array)

    return Residue(
        index,
        segment_name,
        chain_name,
        system_name,
        TopologicResidue(residue_id, residue_name, members),
        coordinate
    )
end
