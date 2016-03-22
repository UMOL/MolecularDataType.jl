"""
Create an object of type Residue

Arguments
-----------
index:Integer
    residue index

name:AbstractString
    residue name

segment:AbstractString
    segment name

system:AbstractString
    molecular system name

atoms:Dict{Symbol,Atom}
    a dictionary of atoms
"""
function make_residue(;index::Integer=1,
    name::AbstractString="ABC",
    segment::AbstractString="SEG1",
    system::AbstractString="SYSTEM1",
    atoms::Dict{Symbol,Atom}=Dict([(:H, Atom(name="H"))]))

    return Residue(
        index=index,
        name=name,
        segment=segment,
        system=system,
        atoms=atoms)
end