"""
Test the iterator property of ``FullMolecularContainerIterator``.

Arguments
--------------
obj::FullMolecularContainerIterator
    input 

solution::Array 
    answer key

msg="":AbstractString
    optional test message
"""
function test_iterator(obj::FullMolecularContainerIterator, solution::Array, msg::AbstractString="")
    println("----------------------------------------")
    print_with_color(:blue, "Test the iterator property of FullMolecularContainerIterator\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = collect(obj)
    for i = 1:length(solution)
        @test answer[i] == solution[i]
    end

    print_with_color(:green, "VERIFIED! the iterator property\n\n")
    println("----------------------------------------")

    return true
end

include("unit_test_iterator.jl")