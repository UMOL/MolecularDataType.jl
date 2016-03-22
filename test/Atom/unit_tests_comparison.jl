test_comparison_Atom(Atom(atom_name="H1"), Atom(atom_name="H1"), true, "Compare :atom_name")
test_comparison_Atom(Atom(atom_name="H1"), Atom(atom_name="H2"), false, "Compare :atom_name")
test_comparison_Atom(Atom(coordinate=[1., 0., 0.]), Atom(coordinate=[1., 0., 0.]), true, "Compare :coordinate")
test_comparison_Atom(Atom(coordinate=[1., 0., 0.001]), Atom(coordinate=[1., 0., 0.]), false, "Compare :coordinate")