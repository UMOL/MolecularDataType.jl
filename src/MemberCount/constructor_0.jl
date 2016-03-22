"""
Constructor for ``MemberCount``
with only one argument.
This is useful for constructing
the elemental ``MemberCount`` object,
i.e., object with ``:count`` equal to ``1``
and zero children.

Arguments
----------
count:Integer
    total member count 
"""
function MemberCount(count::Integer)
    return MemberCount(count, Array{MemberCount,1}())
end
    