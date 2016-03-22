"""
A test for extract_topology()

Arguments
----------
atoms:Array{Atom,1}
    input

solution:Array{TopologicAtom,1}
    answer key

msg="":AbstractString
    optional test message
"""
function test_extract_topology(atoms, solution, msg="")
    println("-----------------------------------------------")
    print_with_color(:blue, "Test extract_topology()\n\n")

    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = extract_topology(atoms)

    @test answer == solution

    print_with_color(:green, "VERIFIED! extract_topology()\n\n")
    println("-----------------------------------------------")

    return true
end

test_extract_topology([make_atom(atom_name="A1")], [make_topologic_atom(atom_name="A1")], "1 atom")
test_extract_topology(
    [make_atom(atom_name="A1"),
    make_atom(atom_name="A2")], 
    [make_topologic_atom(atom_name="A1"),
     make_topologic_atom(atom_name="A2")], 
    "2 atoms")