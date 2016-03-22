"""
Generate an object of type Segment

Arguments
---------
name:AbstractString
    segment name

system:AbstractString
    molecular system name

residues:Dict{Integer,Residue}
    a dictionary of residues
"""
function make_segment(;name::AbstractString="SEG1",
    system::AbstractString="SYS1",
    residues::Dict{Symbol,Residue}=Dict([(Symbol("1"), make_residue(index=1))]))
    return Segment(
        name=name,
        system=system,
        residues=residues)
end
