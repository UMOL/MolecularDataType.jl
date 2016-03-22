"""
A test for assort(atoms, fields).

Arguments
----------
atoms:Array{Atom,1}
    input

fields:Array{Symbol,1}
    field names

solution:Dict{Tuple,Array{Atom,1}}
    answer key

msg="":AbstractString
    optional test message
"""
function test_multiassort_Atom(atoms, fields, solution, msg="")
    println("------------------------------------")
    print_with_color(:blue, "Test assort(atoms, $(fields))\n\n")

    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = assort(atoms, fields)

    @test answer == solution

    print_with_color(:green, "VERIFIED! assort(atoms, $(fields))\n\n")
    println("------------------------------------")

    return true
end

include("unit_tests_multiassort_Atom.jl")
