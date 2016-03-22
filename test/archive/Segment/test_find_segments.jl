"""
A test for find_segments().

Arguments
----------
atoms:Array{Atom,1}
    array of atoms

key:Dict{Symbol,Array{Atom,1}}
    answer key

msg=""::AbstractString
    test message (optional)
"""
function test_find_segments(
    atoms::Array{Atom,1},
    key::Dict{Symbol,Array{Atom,1}},
    msg::AbstractString="")

    println("----------------------------------------")
    print_with_color(:blue, "Test find_segments()\n\n")
    print_with_color(:blue, "$(msg)\n")

    answer = find_segments(atoms)

    @test same_dict_of_arrays(answer, key)

    print_with_color(:green, "\nVERIFIED! find_segments()\n")
    println("----------------------------------------\n\n")

    return true
end

include("unit_test1_find_segments.jl")
include("unit_test2_find_segments.jl")
include("unit_test3_find_segments.jl")
    