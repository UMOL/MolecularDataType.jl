"""
Constructor for type **TopologicSegment** with keyword arguments.
"""
function TopologicSegment(
    name::AbstractString,
    members::Array)
    return TopologicSegment(TopologicMolecularContainer(name, members))
end
