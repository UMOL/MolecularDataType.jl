"""
A test for obtain the value of 
a field in an object
of type Atom.

Arguments
----------
obj:Atom
    object of type Atom

field:Symbol
    the requested field name 

solution:Any
    answer key
"""
function test_obtain_Atom(obj::Atom, field::Symbol, solution::Any)
    println("----------------------------------------")
    print_with_color(:blue, "Test obtain(obj,:$(field)) for type Atom\n\n")

    answer = obtain(obj, field)

    if issubtype(typeof(answer), AbstractFloat)
        tol = 1e-3
        @test abs(answer - solution) < tol
    else
        @test answer == solution
    end

    print_with_color(:green, "\nVERIFIED! obtain(obj,:$(field)) for type Atom\n")
    println("----------------------------------------\n\n")

    return true 
end

include("unit_tests_obtain.jl")