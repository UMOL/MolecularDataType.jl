"""
A test for molecular_identifier_fields().

Arguments
----------
data_type:DataType
    input data type 

solution:Array{Symbol,1}
    answer key

msg="":AbstractString
    optional test message
"""
function test_molecular_identifier_fields(data_type, solution, msg="")
    println("----------------------------------------------")
    print_with_color(:blue, "Test molecular_identifier_fields($(data_type))\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = molecular_identifier_fields(data_type)

    @test answer == solution

    print_with_color(:green, "VERIFIED! molecular_identifier_fields($(data_type))\n\n")
    println("----------------------------------------------")

    return true
end

test_molecular_identifier_fields(Atom, [:index, :residue_id, :residue_name, :segment_name, :chain_name, :system_name])
test_molecular_identifier_fields(Residue, [:residue_id, :segment_name, :chain_name, :system_name])
test_molecular_identifier_fields(Segment, [:segment_name, :chain_name, :system_name])
test_molecular_identifier_fields(Chain, [:chain_name, :system_name])
test_molecular_identifier_fields(MolecularSystem, [:system_name])
test_molecular_identifier_fields(AbstractString, [])
