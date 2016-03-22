"""
A test for clone() applied an ``TopologicAtom`` object.

Arguments
----------
obj:TopologicAtom
    input 

fn:Function
    a function that transform the identifier of output

solution:TopologicAtom
    answer key
"""
function test_clone(obj::TopologicAtom, fn::Function, solution::TopologicAtom)
    println("---------------------------------------")
    print_with_color(:blue, "Test clone() for TopologicAtom\n\n")

    function filter(property_array)
        for i = 1:length(property_array)
            if property_array[i][1] == :atom_name 
                property_array[i] = (:atom_name, fn(property_array[i][2]))
            end
        end
        return property_array
    end

    answer = clone(obj, [filter])

    @test answer == solution

    print_with_color(:green, "VERIFIED! clone()\n\n")
    println("---------------------------------------")

    return true 
end

test_clone(TopologicAtom(atom_name="A"), (atom_name)-> string(atom_name, "1"), TopologicAtom(atom_name="A1"))
