"""
Create an object of type MolecularSystem.

Arguments
------------
name:AbstractString
    name of the molecular system 
"""
function make_molecular_system(;index=0, name="SYS1", crystal_symmetry=CrystalSymmetry(), chains=[make_topologic_chain()], coordinate=Array[[0., 0., 0.]])
    return MolecularSystem(index, name, crystal_symmetry, chains,coordinate)
end