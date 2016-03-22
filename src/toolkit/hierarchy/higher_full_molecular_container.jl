"""
Return the higher level data type than the input 
data type.
if input data type is the highest (i.e. ``MolecularSystem``)
then ``FullMolecularContainer`` is returned.
The rules is listed below:

+-----------------------+---------------------------+
| input                 | output                    |
+=======================+===========================+
| Atom                  | Residue                   |
+-----------------------+---------------------------+
| Residue               | Segment                   |
+-----------------------+---------------------------+
| Segment               | Chain                     |
+-----------------------+---------------------------+
| Chain                 | MolecularSystem           |
+-----------------------+---------------------------+
| MolecularSystem       | nothing                   |   
+-----------------------+---------------------------+
| other data types      | nothing                   |   
+-----------------------+---------------------------+

Arguments
----------
data_type:DataType
    input data type, one of [Atom, Residue, Segment, Chain]
"""
function higher_full_molecular_container(data_type::DataType)
    if data_type == Atom 
        return Residue 
    elseif data_type == Residue 
        return Segment 
    elseif data_type == Segment
        return Chain 
    elseif data_type == Chain 
        return MolecularSystem
    else
        print_with_color(:red, "WARNING! input data type doesn't have higher level types\n\n")
        return nothing
    end
end
