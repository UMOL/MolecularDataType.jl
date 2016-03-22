"""
A test for obtain the value of 
a field in an object
of type MolecularSystem.

Arguments
----------
obj:MolecularSystem
    object of type MolecularSystem

field:Symbol
    the requested field name 

solution:Any
    answer key

args:
    additional arguments 
"""
function test_obtain_MolecularSystem(obj::MolecularSystem, field::Symbol, solution::Any, args...)
    println("----------------------------------------")
    print_with_color(:blue, "Test obtain(obj,:$(field)) for type MolecularSystem\n\n")

    answer = obtain(obj, field, args...)

    # if issubtype(typeof(answer), AbstractFloat)
    #     tol = 1e-3
    #     @test abs(answer - solution) < tol
    # else
    #     @test answer == solution
    # end

    print_with_color(:green, "\nVERIFIED! obtain(obj,:$(field)) for type MolecularSystem\n")
    println("----------------------------------------\n\n")

    return true 
end

include("unit_tests_obtain_MolecularSystem.jl")