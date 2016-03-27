"""
Create an object of type ``Residue``.

Arguments
-----------
id:Integer
    name ID

name:AbstractString
    name name

atoms:Array{TopologicAtom,1}
    an array of TopologicAtom objects
"""
function make_residue(;index=0,id=1,name="RES",
    segment="SEG", chain="C", system="SYS", 
    atoms=[TopologicAtom()], coordinate=Array[[0., 0., 0.]])
    return Residue(index, id, name, segment, chain, system, atoms, coordinate)
end