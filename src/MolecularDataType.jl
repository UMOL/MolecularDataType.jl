__precompile__(true)
"""
Module **MolecularDataType** provides data types
that can be used to store molecular information.
It is designed to be numerically efficient and convenient 
by storing the atomic coordinates in a continuous memory block
to take advantage of the modern CPU chip's capability of 
performing vectorized operations.
Client code can use the ``obtain()`` function to extract
the stored atomic coordinates easily.
"""
module MolecularDataType

macro debug(expression)
    return :(@assert $expression)
    # return nothing
end

macro debug_info(expression)
    return :($expression)
end

export MemberCount, CrystalSymmetry
export AbstractMolecularContainer
export AbstractMolecularContainerIterator
export BasicMolecularContainer
export FullMolecularContainer
export FullMolecularContainerIterator
export TopologicMolecularContainer
export TopologicAtom, TopologicResidue, TopologicSegment, TopologicChain, TopologicMolecularSystem
export Atom, Residue, Segment, Chain, MolecularSystem
export obtain, catalog, assort, properties, one_clone, clone, fuse
export mutate!, move!, mutate_coordinate!, mutate_all_coordinates!
export make_atom, make_residue, make_segment, make_chain, make_molecular_system
export make_topologic_atom, make_topologic_residue, make_topologic_segment, make_topologic_chain, make_topologic_molecular_system
export make_topologic_molecular_container

# auxiliary types
include(joinpath("MemberCount", "MemberCount.jl"))
include(joinpath("CrystalSymmetry", "CrystalSymmetry.jl"))


# abstract types
include(joinpath("AbstractMolecularContainer", "AbstractMolecularContainer.jl"))
include(joinpath("AbstractMolecularContainerIterator", "AbstractMolecularContainerIterator.jl"))
include(joinpath("BasicMolecularContainer", "BasicMolecularContainer.jl"))
include(joinpath("FullMolecularContainer", "FullMolecularContainer.jl"))
include(joinpath("FullMolecularContainerIterator", "FullMolecularContainerIterator.jl"))

# subtypes of BasicMolecularContainer
include(joinpath("TopologicMolecularContainer", "TopologicMolecularContainer.jl"))
include(joinpath("TopologicAtom", "TopologicAtom.jl"))
include(joinpath("TopologicResidue","TopologicResidue.jl"))
include(joinpath("TopologicSegment","TopologicSegment.jl"))
include(joinpath("TopologicChain","TopologicChain.jl"))
include(joinpath("TopologicMolecularSystem", "TopologicMolecularSystem.jl"))

# subtypes of FullMolecularContainer
include(joinpath("Atom", "Atom.jl"))
include(joinpath("Residue", "Residue.jl"))
include(joinpath("Segment", "Segment.jl"))
include(joinpath("Chain", "Chain.jl"))
include(joinpath("MolecularSystem", "MolecularSystem.jl"))

# toolkit
include(joinpath("toolkit", "all.jl"))

end