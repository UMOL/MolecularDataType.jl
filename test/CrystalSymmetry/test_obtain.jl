"""
A test for ``obtain()`` for ``CrystalSymmetry``.

Arguments
------------
obj:CrystalSymmetry
    input 

field:Symbol
    target filed 

solution:Any
    answer key
"""
function test_obtain(obj::CrystalSymmetry, field::Symbol, solution::Any)
    println("--------------------------------------------")
    print_with_color(:blue, "Test obtain(obj, :$(field)) on CrystalSymmetry\n\n")

    answer = obtain(obj, field)

    @test answer == solution

    print_with_color(:green, "VERIFIED! obtain(obj, :$(field)) on CrystalSymmetry\n\n")
    println("--------------------------------------------")

    return true
end
include("unit_tests_obtain.jl")
