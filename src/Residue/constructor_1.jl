"""
Constructor for type **Residue** with keyword arguments.
"""
function Residue(;
    index::Integer=0,
    residue_id::Integer=0, 
    residue_name::AbstractString="", 
    segment_name::AbstractString="",
    chain_name::AbstractString="",
    system_name::AbstractString="",
    members::Array=Array{TopologicAtom,1}(),
    coordinate::Array=Array{Array{AbstractFloat,1},1}())

    return Residue(
        index,
        segment_name,
        chain_name,
        system_name,
        TopologicResidue(residue_id, residue_name, members),
        coordinate
    )
end