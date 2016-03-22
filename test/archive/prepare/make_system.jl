"""
Create an object of type MolecularSystem.

Arguments
------------
name:AbstractString
    name of the molecular system 
"""
function make_system(;
    name::AbstractString="SYS1",
    segments::Dict{Symbol,Segment}=Dict([(:SEG1, make_segment(name="SEG1"))]))
    return MolecularSystem(name=name,
        segments=segments)
end