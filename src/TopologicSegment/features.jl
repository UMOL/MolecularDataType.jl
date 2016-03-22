"""
Return an array of field names for type ``TopologicSegment``.

Arguments
----------
obj::TopologicSegment
    input
"""
function features(obj::TopologicSegment)
    return [:segment_name, :members]
end