"""
Constructor for type **TopologicMolecularContainer** with keyword arguments.
"""
function TopologicMolecularContainer(;
    name::AbstractString="",
    members::Array=Array{AbstractMolecularContainer,1}())
    return TopologicMolecularContainer(name,members)
end
