"""
Convert a ``:segment_name=>Dict{Symbol,Residue}`` dictionary to 
a ``:segment_name=>Dict{Symbol,Segment}`` dictionary.

Arguments
----------
residue_dict:Dict{Symbol,Array{Residue,1}}
    a dictionary of residues 

system=""::AbstractString
    name of the molecular system 
"""
function convert_to_segment_dict(
    residue_dict::Dict{Symbol,Array{Residue,1}};
    system::AbstractString="")
    
    return Dict(
        map( (args)-> (args[1], Segment(args[2]; system=args[3]) ), 
            [(k, residue_dict[k], system) for k in keys(residue_dict)]
        )
    )
end