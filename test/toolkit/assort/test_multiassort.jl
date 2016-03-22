"""
A test for multiassort.jl

Arguments
-------------
objs:Array{AbstractMolecularContainer,1}
    input array of molecular objects

fields:Array{Symbol,1}
    target fields

solution:Dict
    answer key

msg="":AbstractString
    optional test message
"""
function test_multiassort(obj::Array, fields::Array{Symbol,1}, solution::Dict, msg::AbstractString="")
    println("---------------------------------------------")
    print_with_color(:blue, "Test multiassort\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = assort(obj, fields)

    for k in keys(solution)
        @test answer[k] == solution[k]
    end

    print_with_color(:green, "VERIFIED! multiassort\n\n")
    println("---------------------------------------------")

    return true
end

include("unit_test_1_multiassort.jl")
