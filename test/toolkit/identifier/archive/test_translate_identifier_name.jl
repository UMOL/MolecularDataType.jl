"""
A test for ``translate_identifier_name()``.

Arguments
-------------
field:Symbol
    input field name 

solution:Symbol
    answer key
"""
function test_translate_identifier_name(field::Symbol, solution::Symbol)
    println("--------------------------------------------------")
    print_with_color(:blue, "Test translate_field_name(:$(field))\n\n")

    answer = translate_identifier_name(field)

    @test answer == solution

    print_with_color(:green, "VERIFIED! translate_field_name(:$(field))\n\n")

    return true
end

test_translate_identifier_name(:residue,:name)
test_translate_identifier_name(:segment,:name)
test_translate_identifier_name(:chain,:name)
test_translate_identifier_name(:system,:name)
test_translate_identifier_name(:residue_id,:id)
