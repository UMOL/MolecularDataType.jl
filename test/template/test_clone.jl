"""
A test for ``clone()`` for a ``AbstractMolecularContainer`` object
with a new residue ID.

Arguments
--------------
obj:AbstractMolecularContainer
    input 

which_keyword:Symbol
    which keyword argument for clone()

transform:Function 
    a function that transform the residue ID

solution:Any
    answer key

args:
    optional arguments

msg="":AbstractString
    optional test message 
"""
function test_clone(obj::AbstractMolecularContainer, which_keyword::Symbol, transform::Function, solution::Any, args...; msg::AbstractString="")
    println("-----------------------------------------")
    print_with_color(:blue, "Test clone(obj; :$(which_keyword)=...) for AbstractMolecularContainer\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = clone(obj, args...; (which_keyword, transform))

    @test answer == solution

    print_with_color(:blue, "VERIFIED! clone(obj; :$(which_keyword)=...) for AbstractMolecularContainer\n\n")
    println("-----------------------------------------")

    return true 
end

