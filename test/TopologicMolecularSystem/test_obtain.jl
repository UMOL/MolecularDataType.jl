"""
A test for obtain the value of 
a field in an object
of type TopologicMolecularSystem.

Arguments
----------
obj:TopologicMolecularSystem
    object of type TopologicMolecularSystem

field:Symbol
    the requested field name 

solution:Any
    answer key

msg:AbstractString
    optional test message

args:
    optional arguments 
"""
function test_obtain_TopologicMolecularSystem(obj::TopologicMolecularSystem, field::Symbol, solution::Any, msg="",args...)
    println("----------------------------------------")
    print_with_color(:blue, "Test obtain(obj,:$(field)) for type TopologicMolecularSystem\n\n")

    if msg != ""
        print_with_color(:blue, "$(msg)\n")
    end

    answer = obtain(obj, field, args...)

    if issubtype(typeof(answer), AbstractFloat)
        tol = 1e-3
        @test abs(answer - solution) < tol
    else
        @test answer == solution
    end

    print_with_color(:green, "\nVERIFIED! obtain(obj,:$(field)) for type TopologicMolecularSystem\n")
    println("----------------------------------------\n\n")

    return true 
end

include("unit_tests_obtain.jl")