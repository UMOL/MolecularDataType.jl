"""
A test for synthesize().

Arguments
----------
containers:Array{FullMolecularContainer,1}
    input

solution:Array{TopologicResidue,1}
    answer key

levels:Integer
    number of synthesis levels

msg="":AbstractString
    optional test message
"""
function test_synthesize(containers, levels, solution, msg="")
    println("----------------------------------------------")
    print_with_color(:blue, "Test synthesize(containers)\n\n")

    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = synthesize(containers, levels)

    @test answer == solution

    print_with_color(:green, "VERIFIED! synthesize(containers)\n\n")
    println("----------------------------------------------")

    return true 
end

include("unit_test_1_synthesize.jl")
include("unit_test_2_synthesize.jl")
include("unit_test_3_synthesize.jl")
include("unit_test_4_synthesize.jl")
include("unit_test_5_synthesize.jl")
