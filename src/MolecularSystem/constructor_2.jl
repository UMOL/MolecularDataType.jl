"""
Constructor for type **MolecularSystem** with 
array of ``Atom`` objects as inputs.

Arguments
-----------
atoms:Arrays{Atom,1}
    input 
"""
function MolecularSystem(atoms::Array{Atom,1}; 
    index::Integer=0,
    crystal_symmetry::CrystalSymmetry=CrystalSymmetry())
    function fn_filter(key_value_tuple)
        if key_value_tuple[1] in [:crystal_symmetry, :index]
            return false
        else
            return true
        end
    end

    return MolecularSystem(;filter(fn_filter, properties(synthesize(atoms, 4)[1], include_members=true))...,
        (:index, index),
        (:crystal_symmetry,crystal_symmetry))
end
