"""
Make a clone (deep copy) of the source ``MolecularSystem`` object
with the option to change the following properties using
the following keyword arguments:

Arguments
----------------
obj:MolecularSystem
    source object 

fn_residue_id=(id)->id:Function 
     a function to change the residue ID 
"""
function clone(obj::MolecularSystem; fn_residue_id=(id)->id)
    return clone(obj, clone_transformation_functions(fn_residue_id))
end
