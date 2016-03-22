"""
Constructor for type **Residue** with keyword arguments.
"""
function Residue(;index=0,
    name="",
    segment="",
    system="",
    atoms=Array{Atom,1}())

    return Residue(
        index,
        name,
        segment,
        system,
        ,
        )
end