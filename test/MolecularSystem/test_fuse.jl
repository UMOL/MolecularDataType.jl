"""
A test for ``fuse()`` applied to an array of 
``MolecularSystem`` objects.

Arguments
--------------
systems:Array{MolecularSystem,1}
    input 

new_name::AbstractString
    new system name 

solution:MolecularSystem
    answer key

msg=""::AbstractString
    optional test message 
"""
function test_fuse(systems::Array{MolecularSystem,1}, new_name::AbstractString, solution::MolecularSystem, msg::AbstractString="")
    println("---------------------------------")
    print_with_color(:blue, "Test fuse() for MolecularSystem\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = fuse(MolecularSystem, systems; name=new_name)

    @test answer == solution

    print_with_color(:green, "VERIFIED! fuse() for MolecularSystem\n\n")
    println("---------------------------------")

    return true
end
include("unit_test_1_fuse.jl")