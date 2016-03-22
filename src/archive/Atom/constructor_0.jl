"""
Constructor for data type **Atom** with 
all keyword arguments.
"""
function Atom(;
    index=0,
    name="",
    raw_name="",
    alt_location=' ',
    residue="",
    chain=' ',
    residue_id=0,
    insertion=' ',
    occupancy=0.,
    beta=0.,
    segment="",
    element="",
    charge=0,
    system="",
    coordinate=Array{AbstractFloat,1}([0., 0., 0.]) )

    return Atom(
        TopologicAtom(
            index,
            name,
            raw_name,
            alt_location,
            residue,
            chain,
            residue_id,
            insertion,
            occupancy,
            beta,
            segment,
            element,
            charge,
            system
        ),
        coordinate
    )
end
