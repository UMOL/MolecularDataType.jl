"""
Return an array of field names for type ``FullMolecularContainer``.

Arguments
----------
obj::FullMolecularContainer
    input
"""
function features(obj::FullMolecularContainer)
    return vcat(features(obtain(obj, :topology)), :coordinate)
end