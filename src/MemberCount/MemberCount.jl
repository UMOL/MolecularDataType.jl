"""
``MemberCount`` is designed to make it
easy to store the hierarchical 
member count tree structure.
It has the following fields
which can be obtained by ``obtain()``:

+---------------+-------------------------+--------------------------------------+
| name          | type                    | note                                 |
+===============+=========================+======================================+
| :count        | Integer                 | sum of all its children's counts     |
+---------------+-------------------------+--------------------------------------+
| :children     | Array{MemberCount}      | array of its children                |
+---------------+-------------------------+--------------------------------------+
"""
immutable MemberCount
    count::Integer 
    _children::Array{MemberCount,1}
end

include("constructor_0.jl")
include("constructor_1.jl")
include("comparison.jl")
include("obtain.jl")
include("tuple_index.jl")
include("linear_index.jl")
