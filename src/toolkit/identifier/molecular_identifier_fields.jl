"""
Return an array of field names that can be used
to identify a molecular object uniquely.
This function is especially useful for ``synthesize()``.
The rules are listed below:

+-------------------+-----------------------------------------------------------------------------------+
| input             | output                                                                            |
+===================+===================================================================================+
| Atom              | [:atom_id, :residue_id, :residue_name, :segment_name, :chain_name, :system_name]  |
+-------------------+-----------------------------------------------------------------------------------+
| Residue           | [:residue_id, :segment_name, :chain_name, :system_name]                           |
+-------------------+-----------------------------------------------------------------------------------+
| Segment           | [:segment_name, :chain_name, :system_name]                                        |
+-------------------+-----------------------------------------------------------------------------------+
| Chain             | [:chain_name, :system_name]                                                       |
+-------------------+-----------------------------------------------------------------------------------+
| MolecularSystem   | [:system_name]                                                                    |
+-------------------+-----------------------------------------------------------------------------------+
| other inputs      | []                                                                                |
+-------------------+-----------------------------------------------------------------------------------+


Arguments
----------
data_type:DataType
    input data type 
"""
function molecular_identifier_fields(data_type::DataType)
    if data_type == Atom
        return [:index, :residue_id, :residue_name, :segment_name, :chain_name, :system_name]
    elseif data_type == Residue 
        return [:residue_id, :segment_name, :chain_name, :system_name]
    elseif data_type == Segment 
        return [:segment_name, :chain_name, :system_name]
    elseif data_type == Chain
        return [:chain_name, :system_name]
    elseif data_type == MolecularSystem
        return [:system_name]
    else 
        return []
    end
end

