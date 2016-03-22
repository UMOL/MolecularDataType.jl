"""
Constructor for type **TopologicSegment** with keyword arguments.
"""
function TopologicSegment(;
    segment_name::AbstractString="",
    members::Array=Array{TopologicResidue,1}())
    return TopologicSegment(TopologicMolecularContainer(segment_name, members))
end
