"""
Constructor for type **Segment** with keyword arguments.
"""
function Segment(;
    index::Integer=0,
    segment_name::AbstractString="",
    chain_name::AbstractString="",
    system_name::AbstractString="",
    members::Array=Array{TopologicResidue,1}(),
    coordinate::Array=Array{Array{AbstractFloat,1},1}())
    return Segment(
        index,
        chain_name,
        system_name,
        TopologicSegment(segment_name, members), 
        coordinate)
end
