"""
A test for obtain() for type ``FullMolecularContainerIterator``.

Arguments
--------------
obj::FullMolecularContainerIterator
    input

field:Symbol
    target field name 

solution:Any 
    answer key 
"""
function test_obtain(obj::FullMolecularContainerIterator, field::Symbol, solution)
    println("-----------------------------------------------")
    print_with_color(:blue, "Test obtain(obj::FullMolecularContainerIterator, :$(field))\n\n")

    answer = obtain(obj, field)

    @test answer == solution

    print_with_color(:green, "VERIFIED! obtain(obj, :$(field))\n\n")
    println("-----------------------------------------------")

    return true 
end

include("unit_test_obtain_data_type.jl")
include("unit_test_obtain_total_count.jl")
include("unit_test_obtain_count_tree.jl")
include("unit_test_obtain_molecule.jl")