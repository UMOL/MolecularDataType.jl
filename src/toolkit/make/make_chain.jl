"""
Create an object of type ``Chain``.

Arguments
-----------
id:Integer
    residue ID

name:AbstractString
    residue name

segments:Array{TopologicSegment,1}
    an array of  objects
"""
function make_chain(;index=0, name="RES",
    system="SYS", segments=[make_topologic_segment()], coordinate=Array[[0., 0., 0.]])
    return Chain(index, name, system, segments, coordinate)
end