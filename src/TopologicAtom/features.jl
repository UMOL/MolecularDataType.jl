"""
Return an array of field names for type ``TopologicAtom``.

Arguments
----------
obj::TopologicAtom
    input
"""
function features(obj::TopologicAtom)
    return [:atom_name, :atom_type, :alt_location, :insertion, :occupancy, :beta, :element, :charge, :members]
end
