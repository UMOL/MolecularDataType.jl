"""
Constructor for type **MolecularSystem** with keyword arguments.
"""
function MolecularSystem(;
    index::Integer=0,
    system_name::AbstractString="", 
    crystal_symmetry::CrystalSymmetry=CrystalSymmetry(),
    members::Array=Array{TopologicChain,1}(), 
    coordinate::Array=Array{Array{AbstractFloat},1}())
    return MolecularSystem(index, TopologicMolecularSystem(system_name, crystal_symmetry, members), coordinate)
end