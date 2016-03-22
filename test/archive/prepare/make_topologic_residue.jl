"""
Create an object of type TopologicResidue

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

atoms:Array{TopologicAtom,1}
    an array of TopologicAtom objects
"""
function make_topologic_residue(;index::Integer=1,
    name::AbstractString="ABC",
    segment::AbstractString="SEG1",
    system::AbstractString="SYSTEM1",
    atoms::Array{TopologicAtom,1}=Array{TopologicAtom,1}())

    if length(atoms) == 0
        atoms = [TopologicAtom(residue_id=index, residue=name, segment=segment, system=system)]
    end

    return TopologicResidue(atoms)
end