"""
A front-end function for in-place modification 
of properties of a ``AbstractMolecularContainer`` object.

Arguments
--------------
obj:AbstractMolecularContainer
    input object 

field:Symbol
    target field 

args:
    arguments 
"""
function mutate!(obj::AbstractMolecularContainer, field::Symbol, args...)
    if field == :coordinate
        mutate_coordinate!(obj, args...)
    elseif field == :all_coordinates
        mutate_all_coordinates!(obj, args...)
    end 
end