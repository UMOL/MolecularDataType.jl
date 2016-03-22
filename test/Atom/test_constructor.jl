"""
A test for constructor_1 for ``Atom``.

Arguments
----------
id:Integer
    atom ID 

residue:AbstractString
    residue name

residue_id:Integer
    residue ID 

segment:AbstractString
    segment name 

chain:AbstractString
    chain name 

system:AbstractString
    molecular system name

topology:TopologicAtom
    topologic information 

coordinate:Array{AbstractFloat,1}
    atomic coordinate 

solution:Atom 
    answer key
"""
function test_constructor_Atom(
    id::Integer,
    residue::AbstractString,
    residue_id::Integer,
    segment::AbstractString,
    chain::AbstractString,
    system::AbstractString,
    topology::TopologicAtom,
    coordinate::Array,
    solution::Atom)

    println("-------------------------------------------------")
    print_with_color(:blue, "Test constructor 1 for Atom\n\n")

    answer = Atom(id=id,
        residue=residue,
        residue_id=residue_id,
        segment=segment,
        chain=chain,
        system=system,
        topology=topology,
        coordinate=coordinate)

    for field in fieldnames(solution)
        @test obtain(answer, field) == obtain(solution, field)
    end

    print_with_color(:green, "VERIFIED! constructor 1 for Atom\n\n")
    println("-------------------------------------------------")

    return true 
end

test_constructor_Atom(1,"RES1",1, "SEG1", "C", "S", 
    TopologicAtom(name="A"), 
    [0., 1., 0.],
    Atom(id=1, residue="RES1", residue_id=1, 
        segment="SEG1", chain="C", system="S",
        name="A", coordinate=[0., 1., 0.]))
