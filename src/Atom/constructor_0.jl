"""
Constructor for data type ``Atom`` with 
all keyword arguments.
Note that if the ``topology`` field is specified
than, the fields ``name``, 
``alt_location``, 
``insertion``,
``occupancy``,
``beta``,
``element``, and
``charge`` will be ignored,
because ``topology`` will overwrite these items.

Arguments
------------
index:Integer
    atom sequential index

residue_name:AbstractString
    residue name

residue_id:Integer
    residue ID 

segment_name:AbstractString
    segment name 

chain_name:AbstractString
    chain name 

system_name:AbstractString
    molecular system name

atom_name:AbstractString
    raw atom name (with extra spaces if exist)

alt_location:Char 
    alternative location indicator 

insertion:Char 
    insertion code according to PDB data format for ATOM 

occupancy:AbstractFloat
    atom occupancy

beta:AbstractFloat
    temperature factor

element:AbstractString
    name of the chemical element for this atom 

charge:Integer
    charge of the atom 

topology:TopologicAtom
    topologic information 

coordinate:Array{AbstractFloat,1}
    atomic coordinate 

"""
function Atom(;
    index::Integer=0,
    residue_name::AbstractString="",
    residue_id::Integer=0,
    segment_name::AbstractString="",
    chain_name::AbstractString="",
    system_name::AbstractString="",
    atom_name::AbstractString="",
    atom_type::AbstractString="",
    alt_location::Char=' ',
    insertion::Char=' ',
    occupancy::AbstractFloat=0.,
    beta::AbstractFloat=0.,
    element::AbstractString="",
    charge::Integer=0, 
    topology::TopologicAtom=TopologicAtom(),
    coordinate::Array=Array{AbstractFloat,1}()
    )

    if topology == TopologicAtom()
        atom_topology =  TopologicAtom(
            atom_name=atom_name, 
            atom_type=atom_type,
            alt_location=alt_location,
            insertion=insertion,
            occupancy=occupancy,
            beta=beta,
            element=element,
            charge=charge)
    else 
        atom_topology = topology
    end 

    return Atom(
        index,
        residue_name,
        residue_id,
        segment_name,
        chain_name,
        system_name,
        atom_topology,
        Array[coordinate])
end
