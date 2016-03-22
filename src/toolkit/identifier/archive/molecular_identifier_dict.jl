"""
Return a dictionary mapping 
from basic molecular identifiers
to the field name used by 
the constructors of
molecular data types.

The current mappings are:

+-----------------------+------------------------+
| input                 | output                 |
+=======================+========================+
| :residue              | :name                  |
+-----------------------+------------------------+
| :segment              | :name                  |
+-----------------------+------------------------+
| :chain                | :name                  |
+-----------------------+------------------------+
| :system               | :name                  |
+-----------------------+------------------------+
| :residue_id           | :id                    |
+-----------------------+------------------------+
"""
function molecular_identifier_dict()
    return Dict([
        (:residue, :residue),
        (:segment, :segment),
        (:chain,   :chain),
        (:system,  :system),
        (:residue_id,  :residue_id),
    ])
end
