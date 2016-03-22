"""
A test for collect_members().

Arguments
---------------
container:TopologicMolecularContainer
    input container 

level:Integer
    which level of members 

solution:Array{TopologicMolecularContainer,1}
    answer key 

msg="":AbstractString
    optional test message
"""
function test_collect_members(container, level, solution, msg="")
    println("----------------------------------------")
    print_with_color(:blue, "Test collect_members(container, level)\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = collect_members(container, level)

    for i = 1:length(answer)
        @test answer[i] == solution[i]
    end

    print_with_color(:blue, "VERIFIED! collect_members(container, level)\n\n")
    println("----------------------------------------")

    return true 
end

test_collect_members(make_topologic_molecular_container(name="1", level_count=1, member_counts=[2]),
    1, 
    [make_topologic_molecular_container(level_count=0, name=string("1-",i)) for i=1:2],
    "1 level")

test_collect_members(make_topologic_molecular_container(name="1", level_count=2, member_counts=[2,2]),
    2, 
    [make_topologic_molecular_container(level_count=0, name=string("1-",j,"-",i)) for i=1:2, j=1:2],
    "2 levels")
