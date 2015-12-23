# DZ_TESTDATA
A collection of datasets for exploring and testing Oracle Spatial technologies.

For the most up-to-date documentation see the auto-build  [dz_testdata_deploy.pdf](https://github.com/pauldzy/DZ_TESTDATA/blob/master/dz_testdata_deploy.pdf).

All datasets limited to only cover Kenosha County, Wisconsin.

#####Vector Datasets Included:
1. US Census Tiger 2014 2D County Polygons
2. US Census Tiger 2014 2D County Subdivision Polygons
3. US Census Tiger 2014 2D Tract Polygons
4. US Census Tiger 2014 2D Place Polygons
5. US Census Tiger 2014 2D Tab Block Polygons
6. US Census Tiger 2014 2D Roads Linestrings
7. US Census Tiger 2014 2D Rails Linestrings
8. US Census Tiger 2014 2D Raw Edges Linestrings
9. US Census Tiger 2014 2D Raw Faces Polygons
10. US EPA NHDPlus 2D Catchment Watersheds Polygons
11. US EPA NHDPlus LRS Flowline Linestrings
12. US EPA NHDPlus 2D Waterbody Polygons
13. Open Street Map 2D Points of Interest

#####Raster Datasets Included:
1. US EPA NHDPlus 1-band Flow Direction Grid Raster

#####Derived Topology Datasets:
1. Hierachical Tiger 2014 Topology of raw faces with five levels - face, tab blocks, tracts, count subdivision, county.
2. Simple NHDPlus Catchment topology

#####Derived Network Data Model Datasets:
1. SDO NDM of NHDPlus flow network

## Installation
Simply execute the deployment script into the schema of your choice.  The script itself only loads the code to create resources and does not generate the resources themselves.  Next examine the constants in the dz_testdata_constants package and make any changes as needed.  In particular the raster dataset can be a bit problematic on 11g due to the unsupported (before 12c) srid.

To install everything in a single command, execute the following:
```
BEGIN
   dz_testdata_main.create_datasets();
   dz_testdata_main.load_datasets();
END;
/
```
Otherwise you can choose datasets in a more a la carte fashion.

To only load the vector datasets, execute 
```
BEGIN
   dz_testdata_vector.create_vector();
   dz_testdata_vector.load_vector();
END;
/
```
Each package of a given Oracle Spatial data model type has drop, create and load procedures.  However do note that the topology and ndm datasets are generated from the vector datasets, so you need to first load those if you wish to load topo and ndm sample data.

This is a bit of an experiment so drop me a line with any problems you encounter or suggestions you have for improvements.

Many of the data storage formats and code functions utilized in these examples require the full Oracle Spatial license.   

