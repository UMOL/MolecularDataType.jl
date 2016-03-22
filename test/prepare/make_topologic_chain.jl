"""
Generate an object of type TopologicChain

Arguments
---------
name:AbstractString
    segment name

segments:Array{TopologicChain,1}
    an array of TopologicSegment objects
}
"""
function make_topologic_chain(;name="C", segments=[make_topologic_segment()])
    return TopologicChain(chain_name=name, members=segments)
end
