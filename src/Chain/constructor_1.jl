"""
Constructor for type **Chain** with keyword arguments.
"""
function Chain(;index::Integer=0,
    chain_name::AbstractString="",
    system_name::AbstractString="",
    members::Array=Array{TopologicResidue,1}(),
    coordinate::Array=Array{Array{AbstractFloat,1},1}())
    return Chain(index, system_name,TopologicChain(chain_name, members), coordinate)
end
