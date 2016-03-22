"""
A ``TopologicAtom`` (immutable) object stores all the information
about an atom except for its geometric coordinate.
The following fields are accessible to the client using obtain():

+--------------------+-----------------------------------------+-----------------------------------+
| field              | type                                    | note                              |
+====================+=========================================+===================================+
| :atom_name         | AbstractString                          | atom name (no extra spaces)       |
+--------------------+-----------------------------------------+-----------------------------------+
| :atom_type         | AbstractString                          | atom type                         |
+--------------------+-----------------------------------------+-----------------------------------+
| :raw_atom_name     | AbstractString                          | atom name with spaces preserved   |
+--------------------+-----------------------------------------+-----------------------------------+
| :alt_location      | Char                                    | alternative location              |
+--------------------+-----------------------------------------+-----------------------------------+
| :insertion         | Char                                    | insertion code                    |
+--------------------+-----------------------------------------+-----------------------------------+
| :occupancy         | AbstractFloat                           | atomic occupancy                  |
+--------------------+-----------------------------------------+-----------------------------------+
| :beta              | AbstractFloat                           | temperature factor                |
+--------------------+-----------------------------------------+-----------------------------------+
| :element           | AbstractString                          | chemical element                  |
+--------------------+-----------------------------------------+-----------------------------------+
| :charge            | Integer                                 | atomic charge                     |
+--------------------+-----------------------------------------+-----------------------------------+

"""
#= developer's note: 
    The numbers in the comments refer to the character
    position in the RCSB PDB ATOM section.
=# 
immutable TopologicAtom <: BasicMolecularContainer
    raw_atom_name::AbstractString # preserving space characters
    atom_type::AbstractString # atom type name
    alt_location::Char # 17
    insertion::Char # 27
    occupancy::AbstractFloat # 55-60
    beta::AbstractFloat # 61-66
    element::AbstractString # 77-78
    charge::Integer # 79-80
    _container::TopologicMolecularContainer # contains atom name
end

# constructor with keyword arguments
include("constructor_0.jl")

# Define behaviors of common operators on type Atom
include("comparison.jl")

# Define the getter function
include("obtain.jl")

include("features.jl")
