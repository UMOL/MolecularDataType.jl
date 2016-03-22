"""
Return an array of field names for type ``TopologicResidue``.

Arguments
----------
obj::TopologicResidue
    input
"""
function features(obj::TopologicResidue)
    return [:residue_id, :residue_name, :members]
end