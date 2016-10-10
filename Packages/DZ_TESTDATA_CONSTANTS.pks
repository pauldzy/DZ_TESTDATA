CREATE OR REPLACE PACKAGE dz_testdata_constants
AUTHID CURRENT_USER
AS
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   /*
   Header: DZ_TESTDATA
     
   - Build ID: DZBUILDIDDZ
   - Change Set: DZCHANGESETDZ
   
   Sample data used in validation of tests and procedures.
   All data sets derived from public domain US government datasets, notably
   US Census Bureau, Open Street Map and EPA NHDPlus Hydrologic datasets.
   
   Data storage formats in these packages utilize the full range of Oracle
   Spatial data models and storage formats and thus require the full Oracle 
   Spatial license to use.
   
   */
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   /*
   Constant: dz_testdata_constants.c_tablespace
      Tablespace in which to store resources created by dz_testdata.  Some 
      Oracle Spatial functions (such as topology spatial indexes) create  
      resources using the default tablespace of the owner. Default value is 
      USERS.
   */
   c_tablespace     CONSTANT VARCHAR2(40 Char) := 'USERS';
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   /*
   Constant: dz_testdata_constants.c_directory
      Directory used when creating Network Data Model resources. NDM requires a 
      writeable directory in order to create a network.  If you do not have 
      access to a directory, then you cannot build the NDM test data.
   */
   c_directory      CONSTANT VARCHAR2(40 Char) := 'LOADING_DOCK'; 
         
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   /*
   Constant: dz_testdata_constants.c_albers_srid 
      Srid to use for albers equal area conic for continental United States.  
      When using Oracle 12c, conditional compilation will set this to srid 5070.
      For 11g and earlier, a custom srid is required.  For more information on 
      adding the required custom srid see 
      http://www.epa.gov/waterdata/spatial-data-waters 
   */ 
$IF DBMS_DB_VERSION.version < 12
$THEN
   c_albers_srid    CONSTANT NUMBER := 1000001; 
$ELSE
   c_albers_srid    CONSTANT NUMBER := 5070; 
$END
 
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   /*
   Constant: dz_testdata_constants.c_raster_storage
      Storage blurb to use when creating raster table blobs.
      Conditional compilation will set this to NULL for database versions less
      than 11.1
   */
$IF DBMS_DB_VERSION.version < 11
$THEN
   c_raster_storage CONSTANT VARCHAR2(4000 Char) := NULL;
$ELSE
   c_raster_storage CONSTANT VARCHAR2(4000 Char) := 'LOB(rasterBlock) STORE AS SECUREFILE';
$END

END dz_testdata_constants;
/

GRANT EXECUTE ON dz_testdata_constants TO PUBLIC;

