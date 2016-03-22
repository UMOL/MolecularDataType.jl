"""
Constructor for ``MemberCount``
with only one argument for
array of children objects.
The ``:count`` of the output object 
will be the sum of counts 
from the children objects.

Arguments
----------
children::Array{MemberCount,1}
    children objects
"""
function MemberCount(children::Array{MemberCount,1})
    return MemberCount(sum([item.count for item in children]), children)
end
    