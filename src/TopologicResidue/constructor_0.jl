"""
Constructor for type **TopologicResidue** with keyword arguments.
"""
function TopologicResidue(
    id::Integer, 
    name::AbstractString, 
    members::Array)

    return TopologicResidue(
        id,
        TopologicMolecularContainer(name, members)
    )
end