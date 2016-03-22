"""
A test for catalog(atoms::Array{Atom,1}, fields::Array{Symbol,1}).

Arguments
----------
atoms:Array{Atom,1}
    input

fields:Array{Symbol,1}
    filed name

solution:Array
    answer key

msg="":AbstractString
    optional test message
"""
function test_multicatalog_Atom(atoms, fields, solution, msg="")
    println("-------------------------------------")
    print_with_color(:blue, "Test catalog(atoms, $(fields))\n\n")

    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = catalog(atoms, fields)

    @test answer == solution

    print_with_color(:green, "VERIFIED! catalog(atoms, $(fields))\n\n")
    println("-------------------------------------")

    return true
end

include("unit_tests_multicatalog_Atom.jl")
