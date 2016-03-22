"""
A test for member_count_tree().

Arguments
------------
container:TopologicMolecularSystem
    input 

level:Integer 
    tree height

solution:MemberCount 
    answer key

msg="":AbstractString
    optional test message

"""
function test_member_count_tree(container::TopologicMolecularSystem,
    level::Integer,
    solution::MemberCount, msg="")
    println("-----------------------------------")
    print_with_color(:blue, "test member_count_tree() on TopologicMolecularSystem\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = member_count_tree(container, level)

    @test answer == solution

    print_with_color(:green, "VERIFIED! member_count_tree() on TopologicMolecularSystem\n\n")
    println("-----------------------------------")

    return true
end
include("unit_test_1_member_count_tree.jl")