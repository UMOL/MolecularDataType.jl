"""
Generate an object of type Segment

Arguments
---------
name:AbstractString
    segment name

residues:Dict{Integer,Residue}
    a dictionary of residues
"""
function make_topologic_segment(;name="SEG1", residues=[make_topologic_residue()])
    return TopologicSegment(segment_name=name, members=residues)
end
