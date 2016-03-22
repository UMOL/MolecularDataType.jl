"""
Get the information about the input atomic coordinate
i.e., data type and dimension count.

Arguments
----------
coordinate:Array
    input 
"""
function get_coordinate_info(coordinate::Array)
    if length(coordinate) == 0
        return Any, 0
    end

    data_type = typeof(coordinate[1])
    shape = size(coordinate)
    if length(shape) == 1
        dimension_count = shape[1]
    else
        dimension_count = shape[2]
    end

    return data_type, dimension_count
end
