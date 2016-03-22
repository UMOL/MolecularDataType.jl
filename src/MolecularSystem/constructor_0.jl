"""
Constructor for type **MolecularSystem** with keyword arguments.
"""
function MolecularSystem(
    index::Integer,
    system_name::AbstractString, 
    crytstal_symmetry::CrystalSymmetry,
    members::Array, 
    coordinate::Array)
    return MolecularSystem(index, TopologicMolecularSystem(system_name, crytstal_symmetry, members), coordinate)
end
