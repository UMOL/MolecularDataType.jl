test_comparison_TopologicAtom(TopologicAtom(atom_name="H1"), TopologicAtom(atom_name="H1"), true, "Compare :atom_name")
test_comparison_TopologicAtom(TopologicAtom(atom_name="H1"), TopologicAtom(atom_name="H2"), false, "Compare :atom_name")