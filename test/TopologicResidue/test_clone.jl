"""
A test for clone() applied an ``TopologicResidue`` object.

Arguments
----------
obj:TopologicResidue
    input 

fn:Function
    a function that transform the identifier of output

solution:TopologicResidue
    answer key
"""
function test_clone(obj::TopologicResidue, fn::Function, solution::TopologicResidue)
    println("---------------------------------------")
    print_with_color(:blue, "Test clone() for TopologicResidue\n\n")

    function transform(property_array)
        for i = 1:length(property_array)
            if property_array[i][1] == :residue_id 
                property_array[i] = (:residue_id, fn(property_array[i][2]))
            end
        end
        return property_array
    end

    answer = clone(obj, [transform])

    @test answer == solution

    print_with_color(:green, "VERIFIED! clone()\n\n")
    println("---------------------------------------")

    return true 
end

test_clone(TopologicResidue(residue_id=1), (id)-> id+1, TopologicResidue(residue_id=2))
