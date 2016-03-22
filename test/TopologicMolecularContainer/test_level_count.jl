"""
A test for level_count().

Arguments
----------
container:TopologicMolecularContainer
    input container 

solution:Integer
    answer key

msg="":AbstractString
    optional test message
"""
function test_level_count(container,solution,msg="")
    println("-----------------------------------")
    print_with_color(:blue, "Test level_count()\n\n")
    if msg != ""
        return print_with_color(:blue, "$(msg)\n\n")
    end

    answer = level_count(container)

    @test answer == solution

    print_with_color(:green, "VERIFIED! level_count()\n\n")
    println("-----------------------------------")
    return true
end

include("unit_tests_level_count.jl")
