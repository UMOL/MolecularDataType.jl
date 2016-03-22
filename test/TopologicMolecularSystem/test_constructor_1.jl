"""
A test for constructor_1 for TopologicMolecularSystem

Arguments
----------
atoms:Array{Atom,1}
    input

solution:TopologicMolecularSystem
    answer key

msg="":AbstractString
    optional test message
"""
function test_constructor_1_TopologicMolecularSystem(atoms::Array{Atom,1})
    println("--------------------------------------------------")
    print_with_color(:blue, "Test constructor_1 for TopologicMolecularSystem\n\n")

    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = TopologicMolecularSystem(atoms)

    @test answer == solution

    print_with_color(:green, "VERIFIED! constructor_1 for TopologicMolecularSystem\n\n")
    println("--------------------------------------------------")

    return true
end
include("unit_test_1_constructor_1.jl")