CREATE OR REPLACE PACKAGE BODY dz_testdata_raster
AS

   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE drop_raster
   AS
   BEGIN
   
      --------------------------------------------------------------------------
      -- Step 10
      -- Drop fdr georaster and rdt tables
      --------------------------------------------------------------------------
      drop_np21_fdr_raster();
      
   END drop_raster;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE create_raster
   AS
   BEGIN
   
      --------------------------------------------------------------------------
      -- Step 10
      -- Create fdr georaster and rdt tables
      --------------------------------------------------------------------------
      create_np21_fdr_raster();
      
   END create_raster;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE load_raster
   AS
   BEGIN
      
      --------------------------------------------------------------------------
      -- Step 10
      -- Load fdr georaster and rdt tables
      --------------------------------------------------------------------------
      load_np21_fdr_raster();
   
   END load_raster;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   FUNCTION verify_raster
   RETURN VARCHAR
   AS
      str_results VARCHAR2(4000 Char);
      
   BEGIN
      str_results := verify_np21_fdr_raster();
      
      IF str_results <> 'TRUE'
      THEN
         RETURN str_results;
         
      END IF;
      
      RETURN str_results;

   END verify_raster;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE drop_np21_fdr_raster
   AS
   BEGIN
      
      --------------------------------------------------------------------------
      -- Step 10
      -- Drop all fdr georaster and rdt tables
      --------------------------------------------------------------------------
      dz_testdata_util.drop_table_quietly(
          p_table_name => 'NHDPLUS_FDR_55059'
      );
      
      dz_testdata_util.drop_table_quietly(
          p_table_name => 'NHDPLUS_FDR_55059_RDT'
      );
   
   END drop_np21_fdr_raster;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE create_np21_fdr_raster
   AS   
   str_sql VARCHAR2(4000 Char);
      
   BEGIN
   
      --------------------------------------------------------------------------
      -- Step 10
      -- Create the fdr georaster table
      --------------------------------------------------------------------------
      str_sql := 'CREATE TABLE nhdplus_fdr_55059( '
              || '    georaster_id           INTEGER '
              || '   ,georaster_description  VARCHAR2(40 Char) '
              || '   ,georaster              MDSYS.SDO_GEORASTER '
              || '   ,raster_srid            NUMBER '
              || '   ,grid_size_km           NUMBER '
              || '   ,CONSTRAINT nhdplus_fdr_55059_pk '
              || '    PRIMARY KEY(georaster_id) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || ') '
              || 'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
              
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'DELETE FROM user_sdo_geom_metadata a WHERE a.table_name = :p01';
      EXECUTE IMMEDIATE str_sql USING 'NHDPLUS_FDR_55059';
      COMMIT;
      
      str_sql := 'INSERT INTO user_sdo_geom_metadata VALUES(:p01,:p02,:p03,:p04)';
      EXECUTE IMMEDIATE str_sql USING
       'NHDPLUS_FDR_55059'
      ,'GEORASTER.SPATIALEXTENT'
      ,dz_testdata_util.geodetic_XY_diminfo()
      ,8265;
      COMMIT;
      
      str_sql := 'CREATE INDEX nhdplus_fdr_55059_spx '
              || 'ON nhdplus_fdr_55059(georaster.spatialextent) '
              || 'INDEXTYPE IS MDSYS.SPATIAL_INDEX '
              || 'PARAMETERS(''TABLESPACE=' || dz_testdata_constants.c_tablespace || ''') ';
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'GRANT SELECT ON nhdplus_fdr_55059 TO public';
      EXECUTE IMMEDIATE str_sql;
      
      --------------------------------------------------------------------------
      -- Step 20
      -- Create the fdr rdt table
      --------------------------------------------------------------------------
      str_sql := 'CREATE TABLE nhdplus_fdr_55059_rdt '
              || 'OF MDSYS.SDO_RASTER( '
              || '    PRIMARY KEY( '
              || '        rasterID '
              || '       ,pyramidLevel '
              || '       ,bandBlockNumber '
              || '       ,rowBlockNumber '
              || '       ,columnBlockNumber '
              || '    ) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || ') '
              || 'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || dz_testdata_constants.c_raster_storage || ' ';
              
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'GRANT SELECT ON nhdplus_fdr_55059 TO public';
      EXECUTE IMMEDIATE str_sql;
      
   END create_np21_fdr_raster;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE load_np21_fdr_raster
   AS
   BEGIN
      
      --------------------------------------------------------------------------
      -- Step 10
      -- Load the georaster table
      --------------------------------------------------------------------------
      EXECUTE IMMEDIATE 'BEGIN load_np21_fdr_55059(p_albers_srid => :p01); END;'
      USING dz_testdata_constants.c_albers_srid;
      COMMIT;
      
      --------------------------------------------------------------------------
      -- Step 20
      -- Load the rdt table
      --------------------------------------------------------------------------
      EXECUTE IMMEDIATE 'BEGIN load01_np21_fdr_rdt_55059(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load02_np21_fdr_rdt_55059(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load03_np21_fdr_rdt_55059(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load04_np21_fdr_rdt_55059(); END;';
      COMMIT;
      
   END load_np21_fdr_raster;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   FUNCTION verify_np21_fdr_raster
   RETURN VARCHAR
   AS
      num_count NUMBER;
      
   BEGIN
      
      SELECT
      COUNT(*)
      INTO num_count
      FROM
      user_tables a
      WHERE
      table_name IN (
          'NHDPLUS_FDR_55059'
         ,'NHDPLUS_FDR_55059_RDT'
      );
      
      IF num_count <> 2
      THEN
         RETURN 'FALSE';
         
      END IF;
      
      RETURN 'TRUE'; 
   
   END verify_np21_fdr_raster;
   
END dz_testdata_raster;
/

