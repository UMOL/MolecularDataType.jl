"""
Create an object of type TopologicResidue

Arguments
-----------
id:Integer
    residue ID

name:AbstractString
    residue name

atoms:Array{TopologicAtom,1}
    an array of TopologicAtom objects
"""
function make_topologic_residue(;id=1,name="RES", atoms=[TopologicAtom()])
    return TopologicResidue(residue_id=id, residue_name=name,  members=atoms)
end