"""
Constructor for type **Chain** with positional arguments.
"""
function Chain(
    index::Integer,
    chain_name::AbstractString,
    system_name::AbstractString,
    members::Array,
    coordinate::Array)
    return Chain(index, system_name,TopologicChain(chain_name, members), coordinate)
end
