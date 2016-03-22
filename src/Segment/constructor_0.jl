"""
Constructor for type **Segment** with keyword arguments.
"""
function Segment(
    index::Integer,
    segment_name::AbstractString,
    chain_name::AbstractString,
    system_name::AbstractString,
    members::Array,
    coordinate::Array)
    return Segment(
        index,
        chain_name, 
        system_name,
        TopologicSegment(segment_name, members), 
        coordinate)
end
