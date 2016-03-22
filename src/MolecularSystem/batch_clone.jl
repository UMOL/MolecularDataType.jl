"""
Make a clone (deep copy and in batch mode) of the source ``MolecularSystem`` object
with the option to change the following properties using
the following keyword arguments:

Arguments
----------------
obj:MolecularSystem
    source object 

count:Integer
    number of clones

fn_residue_id=(id)->id:Function 
     a function to change the residue ID 
"""
function clone(obj::MolecularSystem, count::Integer; fn_residue_id::Function=(id)->id)
    
    return clone(obj, clone_transformation_functions(fn_residue_id), count)
end
