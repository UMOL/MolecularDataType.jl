test_obtain_Segment(Segment(name="SEG"), :name, "SEG")

test_obtain_Segment(Segment(system="S1"), :system, "S1")

test_obtain_Segment(Segment(residues=Dict([(Symbol("1"), Residue())])), 
    :residues, 
    Dict([(Symbol("1"), Residue())]))

test_obtain_Segment(Segment(residues=Dict([(Symbol("1"), Residue())])), 
    :residue_count, 1)

test_obtain_Segment(Segment(residues=Dict([
        (Symbol("1"), Residue(atoms=Dict([(Symbol("1"), Atom())]) )), 
        (Symbol("2"), Residue(atoms=Dict([(Symbol("1"), Atom())]) )), 
    ])), 
    :residue_count, 2)

test_obtain_Segment(Segment(residues=Dict([
    (Symbol("1"), Residue(atoms=Dict([(Symbol("1"), Atom())]) ))])), 
    :atom_count, 1)

test_obtain_Segment(Segment(residues=Dict([
        (Symbol("1"), Residue(atoms=Dict([(Symbol("1"), Atom())]) )), 
        (Symbol("2"), Residue(atoms=Dict([(Symbol("1"), Atom())]) )), 
    ])), 
    :atom_count, 2)
