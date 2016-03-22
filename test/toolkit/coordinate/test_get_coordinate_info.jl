"""
A test for get_coordinate_info()

Arguments
----------
coordinate:Array
    input 

solution:Tuple
    answer key

msg="":AbstractString
    optional test message
"""
function test_get_coordinate_info(coordinate::Array, solution::Tuple, msg="")
    println("---------------------------------------------")
    print_with_color(:blue, "Test get_coordinate_info()\n\n")

    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = get_coordinate_info(coordinate)

    @test answer == solution

    print_with_color(:green, "VERIFIED! get_coordinate_info()\n")
    println("---------------------------------------------")

    return true 
end

test_get_coordinate_info([1., 0., 0.], (Float64, 3), "test 1D array")
test_get_coordinate_info([1.  0.  0.], (Float64, 3), "test 2D array")
test_get_coordinate_info([], (Any, 0), "test zero-length array")