"""
A test for mutate!(obj, :coordinate, new_coordinates).

Arguments
-----------
obj:AbstractMolecularContainer
    input

new_coordinates:Array{Array{AbstractFloat,1}}
    new coordinates

solution:Array{Array{AbstractFloat,1},1}
    answer key, i.e. the expected coordinate
"""
function test_mutate_all_coordinates(
    obj::AbstractMolecularContainer,
    new_coordinates::Array,
    solution::Array)

    println("------------------------------")
    print_with_color(:blue, "Test mutate!(obj, :coordinate, coordinates)\n\n")

    mutate!(obj, :all_coordinates, new_coordinates)

    answer = obj

    @test obtain(obj, :coordinate) == solution

    print_with_color(:green, "VERIFIED! mutate!()\n\n")
    println("------------------------------")

    return true
end

test_mutate_all_coordinates(
    make_molecular_system(coordinate=Array[[1., 0., 0.],[2., 0., 0.]]),
    Array[[1., 1., 1.],[1., 1., 1.]], Array[[1., 1., 1.],[1., 1., 1.]])
test_mutate_all_coordinates(
    make_molecular_system(coordinate=Array[[1., 0., 0.],[2., 0., 0.]]),
    Array[[1., 1., 1.]], Array[[1., 0., 0.],[2., 0., 0.]])