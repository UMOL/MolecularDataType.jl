"""
Generate an object of type Segment

Arguments
---------
name:AbstractString
    segment name

residues:Dict{Integer,Residue}
    a dictionary of residues
"""
function make_segment(;index=0,
    name="SEG1", 
    chain="C", system="SYS",
    residues=[make_topologic_residue()], coordinate=Array[[0., 0., 0.]])
    return Segment(index, name, chain, system, residues, coordinate)
end
