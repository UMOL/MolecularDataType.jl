using Base.Test

include(joinpath("..","src","MolecularDataType.jl"))
using MolecularDataType
import MolecularDataType.TopologicAtom
import MolecularDataType.TopologicResidue
import MolecularDataType.TopologicSegment
import MolecularDataType.get_coordinate_info
import MolecularDataType.extract_coordinate
import MolecularDataType.extract_topology
import MolecularDataType.catalog
import MolecularDataType.higher_full_molecular_container
import MolecularDataType.molecular_identifier_fields
import MolecularDataType.synthesize
import MolecularDataType.level_count
import MolecularDataType.bottom_member_count
import MolecularDataType.collect_members
import MolecularDataType.member_count_tree
import MolecularDataType.tuple_index
import MolecularDataType.linear_index
import MolecularDataType.obtain_member
import MolecularDataType.obtain_identifier
import MolecularDataType.features


## test parameters
include(joinpath("params.jl"))

## test toolkit

#-------------------------------

## common
# include(joinpath("common", "runtests.jl"))

## auxiliary types
# include(joinpath("MemberCount", "runtests.jl"))
# include(joinpath("CrystalSymmetry", "runtests.jl"))

## AbstractMolecularContainer
# include(joinpath("AbstractMolecularContainer","runtests.jl"))

## BasicMolecularContainer
# include(joinpath("TopologicMolecularContainer", "runtests.jl"))
# include(joinpath("TopologicAtom","runtests.jl"))
# include(joinpath("TopologicResidue", "runtests.jl"))
# include(joinpath("TopologicSegment", "runtests.jl"))
# include(joinpath("TopologicChain", "runtests.jl"))
# include(joinpath("TopologicMolecularSystem", "runtests.jl"))

## FullMolecularContainer
# include(joinpath("Atom", "runtests.jl"))
# include(joinpath("Residue", "runtests.jl"))
# include(joinpath("Segment", "runtests.jl"))
# include(joinpath("Chain", "runtests.jl"))
include(joinpath("MolecularSystem", "runtests.jl"))

# other types
# include(joinpath("FullMolecularContainerIterator", "runtests.jl"))


## toolkit
# include(joinpath("toolkit", "runtests.jl"))