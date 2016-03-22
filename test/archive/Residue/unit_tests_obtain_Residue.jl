test_obtain_Residue(Residue(index=1), :index, 1)
test_obtain_Residue(Residue(name="R1"), :name, "R1")
test_obtain_Residue(Residue(segment="S1"), :segment, "S1")
test_obtain_Residue(Residue(system="S1"), :system, "S1")
test_obtain_Residue(Residue(atoms=Dict([(Symbol("1"), Atom())])), :atoms, Dict([(Symbol("1"), Atom())]))
test_obtain_Residue(Residue(atoms=Dict([(Symbol("1"), Atom())])), :atom_count, 1)
test_obtain_Residue(Residue(atoms=Dict([
        (Symbol("1"), Atom()), 
        (Symbol("2"), Atom()), 
    ])), 
    :atom_count, 
    2)
test_obtain_Residue(
    Residue(atoms=Dict([(Symbol("1"), Atom(coordinate=[1.,2.,3.]))])), 
    :coordinate, 
    [1. 2. 3.])
test_obtain_Residue(Residue(atoms=Dict([
        (Symbol("1"), Atom(coordinate=[1., 0., 1.])), 
        (Symbol("2"), Atom(coordinate=[0., 1., 0.])), 
    ])), 
    :coordinate, 
    [1. 0. 1.;
     0. 1. 0.])
