"""
Merge an array of ``MolecularSystem`` objects.
The order of the atoms will be preserved.

Arguments
-------------
:Type{MolecularSystem}
    must be type ``MolecularSystem``

systems:Array{MolecularSystem,1}
    input molecular systems 

name=""::AbstractString
    (optional) name of the new molecular system.

index=0:Integer
    (optional) index for the new molecular system object
"""
function fuse(::Type{MolecularSystem}, systems::Array; name::AbstractString="", index::Integer=0)
    if length(systems) == 0
        return MolecularSystem()
    end

    return MolecularSystem(
        index=index,
        system_name=name,
        members=vcat([obtain(item, :members) for item in systems]...),
        coordinate=vcat([obtain(item, :coordinate) for item in systems]...)
    )
end