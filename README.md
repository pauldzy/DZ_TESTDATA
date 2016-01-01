# DZ_TESTDATA
A collection of datasets provided as sql text for exploring and testing Oracle Spatial technologies.

For the most up-to-date documentation see the auto-build  [dz_testdata_deploy.pdf](https://github.com/pauldzy/DZ_TESTDATA/blob/master/dz_testdata_deploy.pdf).

#####Vector Datasets Included:
1. [US Census Tiger 2014] (https://www.census.gov/geo/maps-data/data/tiger-line.html) 2D County Polygons
2. [US Census Tiger 2014] (https://www.census.gov/geo/maps-data/data/tiger-line.html) 2D County Subdivision Polygons
3. [US Census Tiger 2014] (https://www.census.gov/geo/maps-data/data/tiger-line.html) 2D Tract Polygons
4. [US Census Tiger 2014] (https://www.census.gov/geo/maps-data/data/tiger-line.html) 2D Place Polygons
5. [US Census Tiger 2014] (https://www.census.gov/geo/maps-data/data/tiger-line.html) 2D Tab Block Polygons
6. [US Census Tiger 2014] (https://www.census.gov/geo/maps-data/data/tiger-line.html) 2D Roads Linestrings
7. [US Census Tiger 2014] (https://www.census.gov/geo/maps-data/data/tiger-line.html) 2D Rails Linestrings
8. [US Census Tiger 2014] (https://www.census.gov/geo/maps-data/data/tiger-line.html) 2D Raw Edges Linestrings
9. [US Census Tiger 2014] (https://www.census.gov/geo/maps-data/data/tiger-line.html) 2D Raw Faces Polygons
10. [US EPA NHDPlus] (http://www.horizon-systems.com/nhdplus/NHDPlusV2_home.php) 2D Catchment Watersheds Polygons
11. [US EPA NHDPlus] (http://www.horizon-systems.com/nhdplus/NHDPlusV2_home.php) LRS Flowline Linestrings
12. [US EPA NHDPlus] (http://www.horizon-systems.com/nhdplus/NHDPlusV2_home.php) 2D Waterbody Polygons
13. [Open Street Map] (https://www.openstreetmap.org/about) 2D Points of Interest

All vector datasets are provided in geodetic NAD83 coordinate system using SRID 8265 which is available on all versions of Oracle.

#####Raster Datasets Included:
1. [US EPA NHDPlus] (http://www.horizon-systems.com/nhdplus/NHDPlusV2_home.php) 1-band Flow Direction Grid Raster

Raster dataset is provided in Albers equal-area for North America projected coordinate system using the local equivalent to SRID 5070.  5070 is only included as part of Oracle Spatial with the 12c release.  If using 11g or earlier, you will need to add a custom SRID for this projection.  A script to add this custom coodinate system is [provided here](https://github.com/pauldzy/USGS_Albers_Equal_Area_Projections/blob/master/Oracle/continental_us.sql).

#####Derived Topology Datasets:
1. Hierachical Tiger 2014 Topology of raw faces with five levels - face, tab blocks, tracts, count subdivision, county.
2. Simple NHDPlus Catchment topology

Both topology examples are provided in geodetic NAD83 coordinate system using SRID 8265 which is available on all versions of Oracle.

#####Derived Network Data Model Datasets:
1. SDO NDM of NHDPlus flow network

The NDM example is provided in geodetic NAD83 coordinate system using SRID 8265 which is available on all versions of Oracle.

#####Geographic Locality:
All datasets are currently limited to only cover Kenosha County, Wisconsin.  Ideally having a unified theme of a single county worth of data is the goal, but contributers are welcome to submit data for other areas.  However the general size of any such "sample" data should be no larger than that of a US county.  The idea is to provide a bit more than the usual lame "cola market" example but a lot less than a full national or global dataset.  

## Installation
Simply execute the deployment script into the schema of your choice.  The script itself only loads the code to create resources and does not generate the resources themselves.  Note that currently the deployment script is about 44 meg and will tend to stress or even crash development GUIs that parse and analyze the contents.  The easiest solution is to just run the deployment script directly using sqlplus.  Note that to build the topology and ndm datasets, the host schema requires the CREATE VIEW privledge.

Next examine the constants in the dz_testdata_constants package and make any changes as needed.  In particular the raster dataset can be a bit problematic on 11g due to the unsupported (before 12c) Albers srid.

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
Each package of a given Oracle Spatial data model type has drop, create and load procedures.  However do note that the topology and ndm datasets are generated from the vector datasets, so you need to first load those if you wish to load the more complex derived sample datasets.

This is a bit of an experiment so drop me a line with any problems you encounter or suggestions you have for improvements.

Many of the data storage formats and code functions utilized in these examples require the full Oracle Spatial license. Make certain to familiarize yourself with the differences between Locator and Spatial and follow your license accordingly.

* 10g: https://docs.oracle.com/html/B10826_01/sdo_locator.htm
* 11g: http://docs.oracle.com/cd/E11882_01/appdev.112/e11830/sdo_locator.htm#SPATL340
* 12c: https://docs.oracle.com/database/121/SPATL/sdo_locator.htm#SPATL340

(note there are differences by Oracle version, make sure to follow the one for the Oracle database version you are using)

