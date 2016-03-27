"""
Make a ``TopologicAtom`` object.


Arguments
--------------
name="":AbstractString
    raw atom name. Note that the ``name`` argument should be 
    the raw atom name with white spaces preserved.

alt_location=' ':Char 
    alternative location according to the RCSB PDB standard

insertion=' ':Char 
    insertion code according to the RCSB PDB standard 

occupancy=0.:AbstractFloat
    atom occupancy

beta=0.:AbstractFloat
    temperature factor 

element="":AbstractString
    chemical element name 

charge=0:Integer
    atomic charge

members=[]::Array 
    Atoms don't have members. 
    This is just a placeholder for consistency with ``BasicMolecularContainer`` type requirement
"""
function make_topologic_atom(;
    atom_name::AbstractString="",
    atom_type::AbstractString="",
    alt_location::Char=' ',
    insertion::Char=' ',
    occupancy::AbstractFloat=0.,
    beta::AbstractFloat=0.,
    element::AbstractString="",
    charge::Integer=0,
    members::Array=[])

    return TopologicAtom(
        atom_name, # raw name
        atom_type,
        alt_location,
        insertion,
        occupancy,
        beta,
        element,
        charge,
        TopologicMolecularContainer(name=strip(atom_name)))
end