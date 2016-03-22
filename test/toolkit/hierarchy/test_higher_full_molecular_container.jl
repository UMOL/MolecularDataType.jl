"""
A test for higher_full_molecular_container()

Arguments
----------
data_type:DataType
    input data type 

solution:DataType
    answer key

msg="":AbstractString
    optional test message
"""
function test_higher_full_molecular_container(data_type, solution, msg="")
    println("--------------------------------------")
    print_with_color(:blue, "Test higher_full_molecular_container($(data_type))\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = higher_full_molecular_container(data_type)

    @test answer == solution

    print_with_color(:green, "VERIFIED! higher_full_molecular_container($(data_type))\n\n")
    println("--------------------------------------")

    return true
end

include("unit_tests_higher_full_molecular_container.jl")
