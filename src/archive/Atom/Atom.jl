"""
**Atom** contains the ATOM records in a PDB file.
It has the following fields:

+--------+---------+
| field  | type    |
+========+=========+
| index  | Integer |
+--------+---------+
"""
immutable Atom 
    _topology::TopologicAtom # other information about the atom
    _coordinate::Array{AbstractFloat,1} # 31-38, 39-46, 47-54
end



# constructor with keyword arguments
include("constructor_0.jl")

# Define behaviors of common operators on type Atom
include("comparison.jl")

# Define the getter function
include("obtain.jl")

# find
include("find_atoms_by_field.jl")

