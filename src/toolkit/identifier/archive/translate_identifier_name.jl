"""
Translate field names so that they can be used in 
the constructors of molecular types.
This component is needed by ``synthesis()``.
The output is another symbol.

Arguments
----------
field:Symbol
    target field name.
"""
function translate_identifier_name(field::Symbol)
    field_name_dict = molecular_identifier_dict()
    if haskey(field_name_dict, field)
        return field_name_dict[field]
    else
        return Symbol("")
    end
end
