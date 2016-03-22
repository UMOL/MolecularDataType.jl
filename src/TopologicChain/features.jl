"""
Return an array of field names for type ``TopologicChain``.

Arguments
----------
obj::TopologicChain
    input
"""
function features(obj::TopologicChain)
    return [:chain_name, :members]
end
