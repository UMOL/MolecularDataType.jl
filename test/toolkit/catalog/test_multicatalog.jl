"""
A test for multicatalog.jl

Arguments
-------------
objs:Array{AbstractMolecularContainer,1}
    input array of molecular objects

fields:Array{Symbol,1}
    target fields

solution:Array
    answer key

msg="":AbstractString
    optional test message
"""
function test_multicatalog(obj::Array, fields::Array{Symbol,1}, solution::Array, msg::AbstractString="")
    println("---------------------------------------------")
    print_with_color(:blue, "Test multicatalog()\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = catalog(obj, fields)

    @test answer == solution

    print_with_color(:green, "VERIFIED! multicatalog()\n\n")
    println("---------------------------------------------")

    return true
end

include("unit_test_1_multicatalog.jl")
