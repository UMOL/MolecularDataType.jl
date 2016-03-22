"""
Generate an object of type TopologicMolecularSystem

Arguments
---------
name:AbstractString
    segment name

chains:Array{TopologicChain,1}
    an array TopologicChain objects
}
"""
function make_topologic_molecular_system(;name::AbstractString="S", 
    crystal_symmetry::CrystalSymmetry=CrystalSymmetry(), 
    chains::Array=[make_topologic_chain()])
    return TopologicMolecularSystem(name, crystal_symmetry, chains)
end
