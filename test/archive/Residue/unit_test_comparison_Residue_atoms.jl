test_comparison_Residue(
    make_residue(index=1),
    make_residue(index=1),
    true, 
    "Compare :atoms that are the same")

test_comparison_Residue(
    make_residue(index=1),
    make_residue(index=2),
    false, 
    "Compare :atoms that contain atoms of different indices")

test_comparison_Residue(
    make_residue(index=1,atoms=Dict([(:H, Atom(name="H"))])),
    make_residue(index=1,atoms=Dict([(:O, Atom(name="H"))])),
    false, 
    "Compare :atoms that contain atoms of different atom names")

test_comparison_Residue(
    make_residue(index=1,
        atoms=Dict([
            (:H,  Atom(name="H")),
            (:H2, Atom(name="H2")),
        ])
    ), 
    make_residue(index=1,atoms=Dict([(:H, Atom(name="H"))])),
    false, 
    "Compare :atoms that contain different number of atoms")


