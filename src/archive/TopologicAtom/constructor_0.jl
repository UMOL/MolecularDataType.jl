"""
Constructor for data type ``TopologicAtom`` with 
all keyword arguments.
"""
function TopologicAtom(;
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
    system="")

    return TopologicAtom(
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
        system)
end
