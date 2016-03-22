"""
Constructor for type **TopologicMolecularSystem** with keyword arguments.
"""
function TopologicMolecularSystem(
    name::AbstractString, 
    crystal_symmetry::CrystalSymmetry,
    members::Array)
    return TopologicMolecularSystem(
        MemberCount([member_count_tree(item, 3) for item in members]),
        crystal_symmetry,
        TopologicMolecularContainer(name, members))
end