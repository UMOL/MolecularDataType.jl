"""
Return an array of field names for type ``TopologicMolecularSystem``.

Arguments
----------
obj::TopologicMolecularSystem
    input
"""
function features(obj::TopologicMolecularSystem)
    return [:system_name, :crystal_symmetry, :members]
end