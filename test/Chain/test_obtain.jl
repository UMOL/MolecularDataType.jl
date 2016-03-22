"""
A test for obtain the value of 
a field in an object
of type ``Chain``.

Arguments
----------
obj:Chain
    object of type Chain

field:Symbol
    the requested field name 

solution:Any
    answer key

msg::AbstractString
    optional test message
"""
function test_obtain_Chain(obj::Chain, field::Symbol, solution::Any, msg="")
    println("----------------------------------------")
    print_with_color(:blue, "Test obtain(obj,:$(field)) for type Chain\n\n")

    if msg != ""
        print_with_color(:blue, "$(msg)\n")
    end

    answer = obtain(obj, field)

    if issubtype(typeof(answer), AbstractFloat)
        tol = 1e-3
        @test abs(answer - solution) < tol
    else
        @test answer == solution
    end

    print_with_color(:green, "\nVERIFIED! obtain(obj,:$(field)) for type Chain\n")
    println("----------------------------------------\n\n")

    return true 
end

include("unit_tests_obtain.jl")