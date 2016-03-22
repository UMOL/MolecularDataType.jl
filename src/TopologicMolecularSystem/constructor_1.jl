"""
Constructor for type **TopologicMolecularSystem** with keyword arguments.
"""
function TopologicMolecularSystem(;
    system_name::AbstractString="", 
    crystal_symmetry::CrystalSymmetry=CrystalSymmetry(),
    members::Array=Array{TopologicChain,1}())
    return TopologicMolecularSystem(
        MemberCount([member_count_tree(item, 3) for item in members]),
        crystal_symmetry,
        TopologicMolecularContainer(system_name, members))
end
