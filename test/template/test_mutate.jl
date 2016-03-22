"""
A test for ``mutate!()`` applied to ``FullMolecularContainer`` objects.

Arguments
---------------
obj:FullMolecularContainer
    input object 

field:Symbol
    target field 

solution:FullMolecularContainer
    answer key

args:
    arguments for mutate!()
"""
function test_mutate!(obj::FullMolecularContainer, field::Symbol, solution::FullMolecularContainer, args...)
    input_data_type = typeof(obj)
    println("--------------------------------------------------")
    print_with_color(:blue, "Test mutate!(obj::$(input_data_type), :$(field), ...)\n\n")

    mutate!(obj, field, args...)

    answer = obj 
    
    @test answer == solution

    print_with_color(:green, "VERIFIED! mutate!(obj::$(input_data_type), :$(field), ...)\n\n")
    println("--------------------------------------------------")

    return true 
end
