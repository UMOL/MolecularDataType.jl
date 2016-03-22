"""
Return an array of field names for type ``BasicMolecularContainer``.

Arguments
----------
obj::BasicMolecularContainer
    input
"""
function features(obj::BasicMolecularContainer)
    return [:name, :members]
end