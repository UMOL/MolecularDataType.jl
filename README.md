[![Build Status](https://travis-ci.org/UMOL/MolecularDataType.jl.svg?branch=master)](https://travis-ci.org/UMOL/MolecularDataType.jl)

# uMOL-MolecularDataType
``MolecularDataType`` (``uMOL`` subproject) 
is a Julia package for
memory efficient storage of molecular data.
It also provides tools for retrieving 
information stored ``MolecularDataType`` objects.
The goal of this project is to provide a common
set of data types that can be used for
developing I/O packages that read/write
molecular data.

## Dependencies
None

## Design
![design](doc/fig/design/type_graph_MolecularDataType.png)

``TopologicMolecularContainer`` is a building-block for
storing basic molecular information. 
This data type, although small, is designed to abstract out
the commonalities among different molecular data types
and therefore avoid code duplication. Other data types
will simply delegates the functionality to 
``TopologicMolecularContainer``. 
It also ensures the consistency between various data types
and make it easy to write recursive functions to 
transform one data type to another data type, 
such as ``synthesize()``. 

``BasicMolecularContainer`` stores all the essential 
information so that no memory is wasted when building higher level molecular data types from lower level ones.
``FullMolecularContainer`` add extra information 
to make each data type independent, notably it contains
the coordinate information.

The recommended way of using this package is to 
store information in a array of ``Atom`` objects
and then feed them to the constructor for ``MolecularSystem`` data type.

### AUTHOR
Yuhang(Steven) Wang

### PROJECT INITIATION DATE
02-21-2016

### LICENSE
MPL 2.0 (see LICENSE.md)


