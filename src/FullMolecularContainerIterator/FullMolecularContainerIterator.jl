"""
``FullMolecularContainerIterator`` objects are iterators 
that return one object belonging to one of the subtypes
of ``FullMolecularContainer``.
The following fields are stored:

+-------------------------------+------------------------------------------+---------------------------------------------+
| name                          | type                                     | note                                        |
+===============================+==========================================+=============================================+
| :data_type                    | DataType                                 | output data type, e.g. ``Atom``             |
+-------------------------------+------------------------------------------+---------------------------------------------+
| :total_count                  | Integer                                  | total number of output objects              |
+-------------------------------+------------------------------------------+---------------------------------------------+
| :count_tree                   | MemberCount                              | member-count tree                           |
+-------------------------------+------------------------------------------+---------------------------------------------+
| :molecule                     | FullMolecularContainer                   | a ``FullMolecularContainer`` object         |
+-------------------------------+------------------------------------------+---------------------------------------------+
"""
immutable FullMolecularContainerIterator <: AbstractMolecularContainerIterator
    data_type::DataType # output data type
    total_count::Integer # total number of elements
    count_tree::MemberCount
    _molecule::Array{FullMolecularContainer,1} # user array to store object by reference for efficiency
end

include("constructor_0.jl")
include("comparison.jl")
include("obtain.jl")

# iterator interface
include("start.jl")
include("next.jl")
include("done.jl")
include("eltype.jl")
include("length.jl")
  