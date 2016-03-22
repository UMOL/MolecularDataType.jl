test_obtain_MolecularSystem(make_molecular_system(name="S"), :name, "S")
test_obtain_MolecularSystem(make_molecular_system(name="S"), :system_name, "S")

test_obtain_MolecularSystem(make_molecular_system(
    chains=[make_topologic_chain(name="C1")]), 
    :chains, 
    [make_topologic_chain(name="C1")])

test_obtain_MolecularSystem(make_molecular_system(
    chains=[make_topologic_chain(), make_topologic_chain()]), 
    :chain_count, 2)

test_obtain_MolecularSystem(
    make_molecular_system(chains=[make_topologic_chain(), make_topologic_chain()]), 
    :segment_count, 2)

test_obtain_MolecularSystem(
    make_molecular_system(chains=[make_topologic_chain(), make_topologic_chain()]), 
    :residue_count, 2)

test_obtain_MolecularSystem(make_molecular_system(
    chains=[make_topologic_chain(), make_topologic_chain()]), 
    :atom_count, 2)

test_obtain_MolecularSystem(make_molecular_system(
    coordinate=Array[ [2., 2., 5.],[1., 0., 1.] ]),
    :coordinate, Array[ [2., 2., 5], [1., 0., 1.] ])

test_obtain_MolecularSystem(make_molecular_system(
    coordinate=Array[ [2., 2., 5.],[1., 0., 1.] ]),
    :coordinate, [1., 0., 1.], 2)

include("unit_tests_obtain_atom_by_index.jl")
include("unit_test_obtain_atom_iterator.jl")
