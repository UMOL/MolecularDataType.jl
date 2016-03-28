"""
A test for one_clone().

Arguments
----------
obj:AbstractMolecularContainer
    template object

new_property_dict:Dict{Symbol,Any}
    a dictionary of new properties that the output shall have

solution:AbstractMolecularContainer
    answer key 

msg="":AbstractString
    optional test message
"""
function test_one_clone(obj::AbstractMolecularContainer, new_property_dict::Dict,
    solution::AbstractMolecularContainer, msg::AbstractString="")
    println("---------------------------------")
    print_with_color(:blue, "Test one_clone()\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = one_clone(obj, new_property_dict)

    @test answer == solution

    print_with_color(:green, "VERIFIED! one_clone()\n\n")
    println("---------------------------------")
    return true
end

include("unit_test_1_one_clone_new_coordinates.jl")