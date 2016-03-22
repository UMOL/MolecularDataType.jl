"""
Constructor for type **TopologicResidue** with keyword arguments.
"""
function TopologicResidue(;
    residue_id::Integer=0, 
    residue_name::AbstractString="", 
    members::Array=Array{TopologicAtom,1}())

    return TopologicResidue(
        residue_id,
        TopologicMolecularContainer(residue_name, members)
    )
end