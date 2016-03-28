"""
A test for mutate!(obj, :coordinate, id, new_coordinate).

Arguments
-----------
obj:AbstractMolecularContainer
    input

id:Integer
    which coordinate to mutate

new_coordinate:Array{AbstractFloat,1}
    new coordinate 

solution:Array{Array{AbstractFloat,1},1}
    answer key, i.e. the expected coordinate
"""
function test_mutate_coordinate(
    obj::AbstractMolecularContainer,
    id::Integer,
    new_coordinate::Array,
    solution::Array)

    println("------------------------------")
    print_with_color(:blue, "Test mutate!(obj, :coordinate, id, coordinate)\n\n")

    mutate!(obj, :coordinate, id, new_coordinate)

    answer = obj

    @test obtain(obj, :coordinate) == solution

    print_with_color(:green, "VERIFIED! mutate!()\n\n")
    println("------------------------------")

    return true
end

test_mutate_coordinate(make_atom(coordinate=[1., 0., 0.]),
    1, [1., 1., 1.], Array[[1., 1., 1.]])