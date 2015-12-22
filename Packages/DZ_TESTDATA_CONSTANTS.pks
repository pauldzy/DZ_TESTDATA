CREATE OR REPLACE PACKAGE dz_testdata_constants
AUTHID CURRENT_USER
AS
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   /*
   Constants:
      c_tablespace - tablespace in which to store resources created by 
      dz_testdata.  Some Oracle Spatial functions (such as topology spatial 
      indexes) are just created using the default tablespace of the owner.
      Default value is USERS.
      c_directory - directory used when creating Network Data Model resources.
      NDM requires a writeable directory in order to create a network.  If you
      do not have access to a directory, then you cannot build the NDM test
      data.
      c_albers_srid - srid to use for albers equal area conic for continental
      United States.  When using Oracle 12c, srid 5070 is available for this
      use.  For 11g and earlier, a custom srid is required.  For more 
      information on adding the custom srid see 
      http://www.epa.gov/waterdata/spatial-data-waters 
      c_raster_storage - storage blurb to use when creating raster table blobs.
      Set this to NULL if using Oracle without securelob support (10g and
      earlier).
   */
   c_tablespace     CONSTANT VARCHAR2(40 Char) := 'USERS';
   c_directory      CONSTANT VARCHAR2(40 Char) := 'LOADING_DOCK';
   c_albers_srid    CONSTANT NUMBER := 1000001;  -- Use 5070 on 12c
   c_raster_storage CONSTANT VARCHAR2(4000 Char) := 'LOB(rasterBlock) STORE AS SECUREFILE';
   
END dz_testdata_constants;
/

GRANT EXECUTE ON dz_testdata_constants TO PUBLIC;

