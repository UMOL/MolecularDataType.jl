"""
A test for move!().

Arguments
-------------
obj:FullMolecularContainer
    input object 
"""
function test_move!(obj::FullMolecularContainer, transform::Function, solution::FullMolecularContainer)
    input_data_type = typeof(obj)
    println("---------------------------------------------------")
    print_with_color(:blue, "Test move!(obj::$(input_data_type), fn)\n\n")

    move!(obj, transform)

    answer = obj 
    @test answer == solution

    print_with_color(:green, "VERIFIED! move!(obj::$(input_data_type), fn)\n\n")
    println("---------------------------------------------------")

    return true 
end
