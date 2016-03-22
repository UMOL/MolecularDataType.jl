"""
A test for catalog(atoms::Array{Atom,1}, field::Symbol).

Arguments
----------
atoms:Array{Atom,1}
    input

field:Symbol
    filed name

solution:Array
    answer key

msg="":AbstractString
    optional test message
"""
function test_catalog_Atom(atoms, field, solution, msg="")
    println("-------------------------------------")
    print_with_color(:blue, "Test catalog(atoms, :$(field))\n\n")

    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = catalog(atoms, field)

    @test answer == solution

    print_with_color(:green, "VERIFIED! catalog(atoms, :$(field))\n\n")
    println("-------------------------------------")

    return true
end

include("unit_tests_catalog_Atom.jl")
