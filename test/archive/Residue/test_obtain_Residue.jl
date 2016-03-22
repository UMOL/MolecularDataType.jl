"""
A test for obtain the value of 
a field in an object
of type Residue.

Arguments
----------
obj:Residue
    object of type Residue

field:Symbol
    the requested field name 

solution:Any
    answer key
"""
function test_obtain_Residue(obj::Residue, field::Symbol, solution::Any)
    println("----------------------------------------")
    print_with_color(:blue, "Test obtain(obj,:$(field)) for type Residue\n\n")

    answer = obtain(obj, field)

    if field == :coordinates
        tol = 1e-3 # tolerance
        for i=1:length(solution)
            @test abs(answer[i] - solution[i]) <= tol 
        end
    elseif issubtype(typeof(answer), AbstractFloat)
        tol = 1e-3
        @test abs(answer - solution) < tol
    else
        @test answer == solution
    end

    print_with_color(:green, "\nVERIFIED! obtain(obj,:$(field)) for type Residue\n")
    println("----------------------------------------\n\n")

    return true 
end

include("unit_tests_obtain_Residue.jl")