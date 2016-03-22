"""
A test for constructor 0 of ``FullMolecularContainerIterator``.

Arguments
------------
data_type:DataType
    output data type

count_tree:MemberCount 
    member-count tree 

molecule:FullMolecularContainer
    an object belonging to one of the subtypes of ``FullMolecularContainer``

solution:FullMolecularContainerIterator
    answer key 

msg="":AbstractString
    optional test message 
"""
function test_constructor_0_FullMolecularContainerIterator(
    data_type::DataType,
    count_tree::MemberCount,
    molecule::FullMolecularContainer,
    solution::FullMolecularContainerIterator,
    msg::AbstractString="")

    println("---------------------------------------------------")
    print_with_color(:blue, "Test constructor 0 for FullMolecularContainerIterator\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = FullMolecularContainerIterator(data_type, count_tree, molecule)

    @test answer == solution

    print_with_color(:green, "VERIFIED! constructor 0 for FullMolecularContainerIterator\n\n")
    println("---------------------------------------------------")

    return true 
end

include("unit_test_constructor_0.jl")
