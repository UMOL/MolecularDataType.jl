"""
A test for constructor_2 for type ``MolecularSystem``.

Arguments
---------
atoms:Array{Atom,1}
    input

solution:MolecularSystem
    answer key

msg="":AbstractString
    optional test message 
"""
function test_constructor_2_MolecularSystem(atoms::Array{Atom,1}, solution::MolecularSystem, msg="")
    println("----------------------------------------")
    print_with_color(:blue, "Test constructor_2 for type MolecularSystem\n\n")

    if msg != ""
        print_with_color(:blue, msg)
    end

    answer = MolecularSystem(atoms)

    @test answer == solution

    print_with_color(:green, "\nVERIFIED! constructor_2 for type MolecularSystem\n")
    println("----------------------------------------\n\n")

    return true
end

include("unit_test_1_constructor_2.jl")