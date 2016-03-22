"""
A test for extract_coordinate()

Arguments
----------
atoms:Array{make_atom,1}
    input

solution:Array{Array{AbstractFloat},1}
    answer key

msg="":AbstractString
    optional test message
"""
function test_extract_coordinate(atoms, solution, msg="")
    println("-----------------------------------------------")
    print_with_color(:blue, "Test extract_coordinate()\n\n")

    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end


    answer = extract_coordinate(atoms)

    @test length(answer) == length(solution)

    for i = 1:length(solution)
        @test_approx_eq answer[i] solution[i]
    end

    print_with_color(:green, "VERIFIED! extract_coordinate()\n\n")
    println("-----------------------------------------------")

    return true
end

test_extract_coordinate([make_atom(coordinate=[1., 0., 0.])], Array[[1., 0., 0.]], "1 atom")
test_extract_coordinate([
    make_atom(coordinate=[1., 0., 0.]),
    make_atom(coordinate=[1., 0., 1.]),
    ], Array[[1. 0. 0.], [1. 0. 1.]], "2 atoms")