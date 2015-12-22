CREATE OR REPLACE PACKAGE BODY dz_testdata_topo
AS

   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE drop_topology
   AS
   BEGIN
      drop_kenosha_tiger_topology();
      drop_catchment_topology();
      
   END drop_topology;  
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE create_topology
   AS
   BEGIN
      create_kenosha_tiger_topology();
      create_catchment_topology();
      
   END create_topology; 
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE load_topology
   AS
   BEGIN
      load_kenosha_tiger_topology();
      load_catchment_topology();
      
   END load_topology;

   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   FUNCTION verify_topology
   RETURN VARCHAR
   AS
      str_results VARCHAR2(4000 Char);
      
   BEGIN
      
      str_results := verify_kenosha_tiger_topology();
      
      IF str_results <> 'TRUE'
      THEN
         RETURN str_results;
         
      END IF;
      
      str_results := verify_catchment_topology();
      
      IF str_results <> 'TRUE'
      THEN
         RETURN str_results;
         
      END IF;
      
      RETURN 'TRUE'; 
   
   END verify_topology;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   FUNCTION topo_exists(
      p_topology IN  VARCHAR2
   ) RETURN VARCHAR2
   AS
      num_count  NUMBER;
      
   BEGIN
   
      SELECT
      COUNT(*)
      INTO
      num_count
      FROM
      user_sdo_topo_metadata a
      WHERE
      a.topology = UPPER(p_topology);
      
      IF num_count > 0
      THEN
         RETURN 'TRUE';
         
      ELSE
         RETURN 'FALSE';
         
      END IF;
   
   END topo_exists;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE drop_topo(
      p_topology IN  VARCHAR2
   ) 
   AS
      ary_tables MDSYS.SDO_STRING2_ARRAY;
      
   BEGIN
   
      IF topo_exists(p_topology) <> 'TRUE'
      THEN
         RETURN;
         
      END IF;
      
      SELECT
      a.table_name
      BULK COLLECT INTO ary_tables
      FROM
      user_sdo_topo_metadata a
      WHERE
          a.topology = UPPER(p_topology)
      AND a.table_name IS NOT NULL
      ORDER BY
      a.tg_layer_level DESC;
      
      IF ary_tables IS NOT NULL
      AND ary_tables.COUNT > 0
      THEN
         FOR i IN 1 .. ary_tables.COUNT
         LOOP
            MDSYS.SDO_TOPO.DELETE_TOPO_GEOMETRY_LAYER(
                topology    => UPPER(p_topology)
               ,table_name  => ary_tables(i)
               ,column_name => 'TOPO_GEOM'
            );
            
            EXECUTE IMMEDIATE 'DROP TABLE ' || ary_tables(i);
            
         END LOOP;
      
      END IF;

      MDSYS.SDO_TOPO.DROP_TOPOLOGY(
          topology => UPPER(p_topology)
      );

   END drop_topo;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE drop_kenosha_tiger_topology
   AS
   BEGIN
   
      --------------------------------------------------------------------------
      -- Step 10
      -- Drop the kenosha topology
      --------------------------------------------------------------------------
      drop_topo('DZ_KENOSHA_TL_2014');

   END drop_kenosha_tiger_topology;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE create_kenosha_tiger_topology
   AS
      str_sql VARCHAR2(4000 Char);
      
   BEGIN
   
      --------------------------------------------------------------------------
      -- Step 10
      -- Check if kenosha topology already exists
      --------------------------------------------------------------------------
      IF topo_exists('DZ_KENOSHA_TL_2014') = 'TRUE'
      THEN
         RAISE_APPLICATION_ERROR(
             -20001
            ,'DZ_KENOSHA_TL_2014 test topology already exists'
         );
         
      END IF;
   
      --------------------------------------------------------------------------
      -- Step 20
      -- Create the topology
      --------------------------------------------------------------------------      
      MDSYS.SDO_TOPO.CREATE_TOPOLOGY(
          topology  => 'DZ_KENOSHA_TL_2014'
         ,tolerance => 0.05
         ,srid      => 8265
         ,node_table_storage    => 'TABLESPACE ' || dz_testdata_constants.c_tablespace
         ,edge_table_storage    => 'TABLESPACE ' || dz_testdata_constants.c_tablespace
         ,face_table_storage    => 'TABLESPACE ' || dz_testdata_constants.c_tablespace
         ,history_table_storage => 'TABLESPACE ' || dz_testdata_constants.c_tablespace
      );
      dbms_output.put_line('Topology Created');
      
      EXECUTE IMMEDIATE 'GRANT SELECT ON dz_kenosha_tl_2014_edge$ TO public';
      EXECUTE IMMEDIATE 'GRANT SELECT ON dz_kenosha_tl_2014_face$ TO public';
      EXECUTE IMMEDIATE 'GRANT SELECT ON dz_kenosha_tl_2014_history$ TO public';
      EXECUTE IMMEDIATE 'GRANT SELECT ON dz_kenosha_tl_2014_node$ TO public';
      
      --------------------------------------------------------------------------
      -- Step 30
      -- Insert the universal face
      --------------------------------------------------------------------------
      str_sql := 'INSERT INTO dz_kenosha_tl_2014_face$('
              || '    face_id '
              || '   ,boundary_edge_id '
              || '   ,island_edge_id_list '
              || '   ,island_node_id_list '
              || '   ,mbr_geometry '
              || ') VALUES ( '
              || '    -1 '
              || '   ,NULL '
              || '   ,MDSYS.SDO_LIST_TYPE() '
              || '   ,MDSYS.SDO_LIST_TYPE() '
              || '   ,NULL '
              || ') ';
      EXECUTE IMMEDIATE str_sql;
      COMMIT;
      
      --------------------------------------------------------------------------
      -- Step 40
      -- Create the kenosha face table
      -------------------------------------------------------------------------- 
      BEGIN
         EXECUTE IMMEDIATE 'DROP TABLE dz_kenosha_face';
      
      EXCEPTION
         WHEN OTHERS
         THEN
            NULL;
            
      END;
      
      str_sql := 'CREATE TABLE dz_kenosha_face( '
              || '    tfid        INTEGER '
              || '   ,statefp10   VARCHAR2(2 Char) '
              || '   ,countyfp10  VARCHAR2(3 Char) '
              || '   ,tractce10   VARCHAR2(6 Char) '
              || '   ,blkgrpce10  VARCHAR2(1 Char) '
              || '   ,blockce10   VARCHAR2(4 Char) '
              || '   ,suffix1ce   VARCHAR2(1 Char) '
              || '   ,zcta5ce10   VARCHAR2(5 Char) '
              || '   ,uace10      VARCHAR2(5 Char) '
              || '   ,pumace10    VARCHAR2(5 Char) '
              || '   ,statefp     VARCHAR2(2 Char) '
              || '   ,countyfp    VARCHAR2(3 Char) '
              || '   ,tractce     VARCHAR2(6 Char) '
              || '   ,blkgrpce    VARCHAR2(1 Char) '
              || '   ,cousubfp    VARCHAR2(5 Char) '
              || '   ,submcdfp    VARCHAR2(5 Char) '
              || '   ,estatefp    VARCHAR2(5 Char) '
              || '   ,conctyfp    VARCHAR2(5 Char) '
              || '   ,placefp     VARCHAR2(5 Char) '
              || '   ,aiannhfp    VARCHAR2(5 Char) '
              || '   ,aiannhce    VARCHAR2(4 Char) '
              || '   ,comptyp     VARCHAR2(1 Char) '
              || '   ,trsubfp     VARCHAR2(5 Char) '
              || '   ,trsubce     VARCHAR2(3 Char) '
              || '   ,anrcfp      VARCHAR2(5 Char) '
              || '   ,ttractce    VARCHAR2(6 Char) '
              || '   ,tblkgpce    VARCHAR2(1 Char) '
              || '   ,elsdlea     VARCHAR2(5 Char) '
              || '   ,scsdlea     VARCHAR2(5 Char) '
              || '   ,unsdlea     VARCHAR2(5 Char) '
              || '   ,cd114fp     VARCHAR2(2 Char) '
              || '   ,sldust      VARCHAR2(3 Char) '
              || '   ,sldlst      VARCHAR2(3 Char) '
              || '   ,csafp       VARCHAR2(3 Char) '
              || '   ,cbsafp      VARCHAR2(5 Char) '
              || '   ,metdivfp    VARCHAR2(5 Char) '
              || '   ,cnectafp    VARCHAR2(3 Char) '
              || '   ,nectafp     VARCHAR2(5 Char) '
              || '   ,nctadvfp    VARCHAR2(5 Char) '
              || '   ,lwflag      VARCHAR2(1 Char) '
              || '   ,offset      VARCHAR2(1 Char) '
              || '   ,atotal      NUMBER(14) '
              || '   ,intptlat    VARCHAR2(11 Char) '
              || '   ,intptlon    VARCHAR2(12 Char) '
              || '   ,topo_geom   MDSYS.SDO_TOPO_GEOMETRY '
              || ') '
              || 'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';    
      EXECUTE IMMEDIATE str_sql;
      
      EXECUTE IMMEDIATE 'CREATE UNIQUE INDEX dz_kenosha_face_pk ' || 
         'ON dz_kenosha_face(tfid)' ||
         'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
      EXECUTE IMMEDIATE 'CREATE INDEX dz_kenosha_face_02i ' || 
         'ON dz_kenosha_face(tractce)' ||
         'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
      EXECUTE IMMEDIATE 'CREATE INDEX dz_kenosha_face_03i ' || 
         'ON dz_kenosha_face(blockce10)' ||
         'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
      EXECUTE IMMEDIATE 'CREATE INDEX dz_kenosha_face_04i ' || 
         'ON dz_kenosha_face(cousubfp)' ||
         'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
      EXECUTE IMMEDIATE 'CREATE INDEX dz_kenosha_face_05i ' || 
         'ON dz_kenosha_face(countyfp)' ||
         'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
      
      EXECUTE IMMEDIATE 'GRANT SELECT ON dz_kenosha_face TO public';
      
      MDSYS.SDO_TOPO.ADD_TOPO_GEOMETRY_LAYER(
          topology      => 'DZ_KENOSHA_TL_2014'
         ,table_name    => 'DZ_KENOSHA_FACE'
         ,column_name   => 'TOPO_GEOM'
         ,topo_geometry_layer_type => 'POLYGON'
         ,relation_table_storage   => 'TABLESPACE ' || dz_testdata_constants.c_tablespace
      );
      MDSYS.SDO_TOPO.INITIALIZE_METADATA(
          topology => 'DZ_KENOSHA_TL_2014'
      );
      
      --------------------------------------------------------------------------
      -- Step 50
      -- Create the kenosha block table
      -------------------------------------------------------------------------- 
      BEGIN
         EXECUTE IMMEDIATE 'DROP TABLE dz_kenosha_block';
      
      EXCEPTION
         WHEN OTHERS
         THEN
            NULL;
            
      END;
      
      str_sql := 'CREATE TABLE dz_kenosha_block( '
              || '    statefp10   VARCHAR2(2 Char) '
              || '   ,countyfp10  VARCHAR2(3 Char) '
              || '   ,tractce10   VARCHAR2(6 Char) '
              || '   ,blockce10   VARCHAR2(4 Char) '
              || '   ,geoid10     VARCHAR2(15 Char) '
              || '   ,name10      VARCHAR2(10 Char) '
              || '   ,mtfcc10     VARCHAR2(5 Char) '
              || '   ,ur10        VARCHAR2(1 Char) '
              || '   ,uace10      VARCHAR2(5 Char) '
              || '   ,uatyp10     VARCHAR2(1 Char) '
              || '   ,funcstat10  VARCHAR2(1 Char) '
              || '   ,aland10     NUMBER(14) '
              || '   ,awater10    NUMBER(14) '
              || '   ,intptlat10  VARCHAR2(11 Char) '
              || '   ,intptlon10  VARCHAR2(12 Char) '
              || '   ,topo_geom   MDSYS.SDO_TOPO_GEOMETRY '
              || '   ,cousubfp    VARCHAR2(5 Char) '
              || ') '
              || 'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';   
      EXECUTE IMMEDIATE str_sql;
      
      EXECUTE IMMEDIATE 'CREATE UNIQUE INDEX dz_kenosha_block_pk ' || 
         'ON dz_kenosha_block(geoid10)' ||
         'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
      EXECUTE IMMEDIATE 'CREATE INDEX dz_kenosha_block_02i ' || 
         'ON dz_kenosha_block(tractce10)' ||
         'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
      EXECUTE IMMEDIATE 'CREATE INDEX dz_kenosha_block_03i ' || 
         'ON dz_kenosha_block(blockce10)' ||
         'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
      EXECUTE IMMEDIATE 'CREATE INDEX dz_kenosha_block_04i ' || 
         'ON dz_kenosha_block(cousubfp)' ||
         'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
      
      EXECUTE IMMEDIATE 'GRANT SELECT ON dz_kenosha_block TO public';
      
      MDSYS.SDO_TOPO.ADD_TOPO_GEOMETRY_LAYER(
          topology       => 'DZ_KENOSHA_TL_2014'
         ,table_name     => 'DZ_KENOSHA_BLOCK'
         ,column_name    => 'TOPO_GEOM'
         ,topo_geometry_layer_type => 'POLYGON'
         ,child_layer_id => 1
         ,relation_table_storage => 'TABLESPACE ' || dz_testdata_constants.c_tablespace
      );
      
      --------------------------------------------------------------------------
      -- Step 60
      -- Create the kenosha tract table
      --------------------------------------------------------------------------
      BEGIN
         EXECUTE IMMEDIATE 'DROP TABLE dz_kenosha_tract';
      
      EXCEPTION
         WHEN OTHERS
         THEN
            NULL;
            
      END;
      
      str_sql := 'CREATE TABLE dz_kenosha_tract( '
              || '    statefp     VARCHAR2(2 Char) '
              || '   ,countyfp    VARCHAR2(3 Char) '
              || '   ,tractce     VARCHAR2(6 Char) '
              || '   ,geoid       VARCHAR2(11 Char) '
              || '   ,name        VARCHAR2(7 Char) '
              || '   ,namelsad    VARCHAR2(20 Char) '
              || '   ,mtfcc       VARCHAR2(5 Char) '
              || '   ,funcstat    VARCHAR2(1 Char) '
              || '   ,aland       NUMBER(14) '
              || '   ,awater      NUMBER(14) '
              || '   ,intptlat    VARCHAR2(11 Char) '
              || '   ,intptlon    VARCHAR2(12 Char) '
              || '   ,topo_geom   MDSYS.SDO_TOPO_GEOMETRY '
              || ') '
              || 'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';    
      EXECUTE IMMEDIATE str_sql;
      
      EXECUTE IMMEDIATE 'CREATE UNIQUE INDEX dz_kenosha_tract_pk ' || 
         'ON dz_kenosha_tract(geoid)' ||
         'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
      EXECUTE IMMEDIATE 'CREATE INDEX dz_kenosha_tract_02i ' || 
         'ON dz_kenosha_tract(tractce)' ||
         'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
      
      EXECUTE IMMEDIATE 'GRANT SELECT ON dz_kenosha_tract TO public';
      
      MDSYS.SDO_TOPO.ADD_TOPO_GEOMETRY_LAYER(
          topology       => 'DZ_KENOSHA_TL_2014'
         ,table_name     => 'DZ_KENOSHA_TRACT'
         ,column_name    => 'TOPO_GEOM'
         ,topo_geometry_layer_type => 'POLYGON'
         ,child_layer_id => 2
         ,relation_table_storage => 'TABLESPACE ' || dz_testdata_constants.c_tablespace
      );
      
      --------------------------------------------------------------------------
      -- Step 70
      -- Create the kenosha cousub table
      --------------------------------------------------------------------------
      BEGIN
         EXECUTE IMMEDIATE 'DROP TABLE dz_kenosha_cousub';
      
      EXCEPTION
         WHEN OTHERS
         THEN
            NULL;
            
      END;
      
      str_sql := 'CREATE TABLE dz_kenosha_cousub( '
              || '    statefp     VARCHAR2(2 Char) '
              || '   ,countyfp    VARCHAR2(3 Char) '
              || '   ,cousubfp    VARCHAR2(5 Char) '
              || '   ,cousubns    VARCHAR2(8 Char) '
              || '   ,geoid       VARCHAR2(10 Char) '
              || '   ,name        VARCHAR2(100 Char) '
              || '   ,namelsad    VARCHAR2(100 Char) '
              || '   ,lsad        VARCHAR2(2 Char) '
              || '   ,classfp     VARCHAR2(2 Char) '
              || '   ,mtfcc       VARCHAR2(5 Char) '
              || '   ,cnectafp    VARCHAR2(3 Char) '
              || '   ,nectafp     VARCHAR2(5 Char) '
              || '   ,nctadvfp    VARCHAR2(5 Char) '
              || '   ,funcstat    VARCHAR2(1 Char) '
              || '   ,aland       NUMBER(14) '
              || '   ,awater      NUMBER(14) '
              || '   ,intptlat    VARCHAR2(11 Char) '
              || '   ,intptlon    VARCHAR2(12 Char) '
              || '   ,topo_geom   MDSYS.SDO_TOPO_GEOMETRY '
              || ') '
              || 'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';   
      EXECUTE IMMEDIATE str_sql;
      
      EXECUTE IMMEDIATE 'CREATE UNIQUE INDEX dz_kenosha_cousub_pk ' || 
         'ON dz_kenosha_cousub(geoid)' ||
         'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
      EXECUTE IMMEDIATE 'CREATE INDEX dz_kenosha_cousub_02i ' || 
         'ON dz_kenosha_cousub(countyfp)' ||
         'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
      EXECUTE IMMEDIATE 'CREATE INDEX dz_kenosha_cousub_03i ' || 
         'ON dz_kenosha_cousub(cousubfp)' ||
         'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
      
      EXECUTE IMMEDIATE 'GRANT SELECT ON dz_kenosha_cousub TO public';
      
      MDSYS.SDO_TOPO.ADD_TOPO_GEOMETRY_LAYER(
          topology       => 'DZ_KENOSHA_TL_2014'
         ,table_name     => 'DZ_KENOSHA_COUSUB'
         ,column_name    => 'TOPO_GEOM'
         ,topo_geometry_layer_type => 'POLYGON'
         ,child_layer_id => 2
         ,relation_table_storage => 'TABLESPACE ' || dz_testdata_constants.c_tablespace
      );
      
      --------------------------------------------------------------------------
      -- Step 80
      -- Create the kenosha county table
      --------------------------------------------------------------------------      
      BEGIN
         EXECUTE IMMEDIATE 'DROP TABLE dz_kenosha_county';
      
      EXCEPTION
         WHEN OTHERS
         THEN
            NULL;
            
      END;
      
      str_sql := 'CREATE TABLE dz_kenosha_county( '
              || '    statefp     VARCHAR2(2 Char) '
              || '   ,countyfp    VARCHAR2(3 Char) '
              || '   ,countyns    VARCHAR2(8 Char) '
              || '   ,geoid       VARCHAR2(5 Char) '
              || '   ,name        VARCHAR2(100 Char) '
              || '   ,namelsad    VARCHAR2(100 Char) '
              || '   ,lsad        VARCHAR2(2 Char) '
              || '   ,classfp     VARCHAR2(2 Char) '
              || '   ,mtfcc       VARCHAR2(5 Char) '
              || '   ,csafp       VARCHAR2(3 Char) '
              || '   ,cbsafp      VARCHAR2(5 Char) '
              || '   ,metdivfp    VARCHAR2(5 Char) '
              || '   ,funcstat    VARCHAR2(1 Char) '
              || '   ,aland       NUMBER(14) '
              || '   ,awater      NUMBER(14) '
              || '   ,intptlat    VARCHAR2(11 Char) '
              || '   ,intptlon    VARCHAR2(12 Char) '
              || '   ,topo_geom   MDSYS.SDO_TOPO_GEOMETRY '
              || ') '
              || 'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';  
      EXECUTE IMMEDIATE str_sql;
      
      EXECUTE IMMEDIATE 'CREATE UNIQUE INDEX dz_kenosha_county_pk ' || 
         'ON dz_kenosha_county(geoid)' ||
         'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
      EXECUTE IMMEDIATE 'CREATE INDEX dz_kenosha_county_02i ' || 
         'ON dz_kenosha_county(countyfp)' ||
         'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
      
      EXECUTE IMMEDIATE 'GRANT SELECT ON dz_kenosha_county TO public';
      
      MDSYS.SDO_TOPO.ADD_TOPO_GEOMETRY_LAYER(
          topology       => 'DZ_KENOSHA_TL_2014'
         ,table_name     => 'DZ_KENOSHA_COUNTY'
         ,column_name    => 'TOPO_GEOM'
         ,topo_geometry_layer_type => 'POLYGON'
         ,child_layer_id => 4
         ,relation_table_storage => 'TABLESPACE ' || dz_testdata_constants.c_tablespace
      );
      
      --------------------------------------------------------------------------
      -- Step 80
      -- Initialize metadata on the topology
      -------------------------------------------------------------------------- 
      MDSYS.SDO_TOPO.INITIALIZE_METADATA(
          topology => 'DZ_KENOSHA_TL_2014'
      );
      
   END create_kenosha_tiger_topology;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE load_kenosha_tiger_topology(
      p_java_memory   IN  NUMBER DEFAULT 2
   )
   AS
      str_sql     VARCHAR2(4000 Char);
      str_verify  VARCHAR2(4000 Char);
      ary_ids     MDSYS.SDO_NUMBER_ARRAY;
      ary_geoms   MDSYS.SDO_GEOMETRY_ARRAY;
      topo_temp   MDSYS.SDO_TOPO_GEOMETRY;
      ary_geoids  MDSYS.SDO_STRING2_ARRAY;
      ary_blckids MDSYS.SDO_STRING2_ARRAY;
      ary_trctids MDSYS.SDO_STRING2_ARRAY;
      
   BEGIN

      --------------------------------------------------------------------------
      -- Step 10
      -- Check if kenosha topology does not exist
      --------------------------------------------------------------------------
      IF topo_exists('DZ_KENOSHA_TL_2014') <> 'TRUE'
      THEN
         RAISE_APPLICATION_ERROR(
             -20001
            ,'DZ_KENOSHA_TL_2014 test topology does not exist'
         );
         
      END IF;
      
      --------------------------------------------------------------------------
      -- Step 20
      -- Check that source census vector data is available
      --------------------------------------------------------------------------
      str_verify := dz_testdata_vector.verify_census_vector(); 
      IF str_verify <> 'TRUE'
      THEN
         RAISE_APPLICATION_ERROR(
             -20001
            ,'census vector test data is not loaded'
         );
      
      END IF;
      
      --------------------------------------------------------------------------
      -- Step 30
      -- Generate a topo map object
      --------------------------------------------------------------------------
      BEGIN
         MDSYS.SDO_TOPO_MAP.ROLLBACK_TOPO_MAP();
         
      EXCEPTION
         WHEN OTHERS
         THEN
            NULL;
            
      END;
      
      BEGIN
         MDSYS.SDO_TOPO_MAP.DROP_TOPO_MAP(
            topo_map      => 'DZ_KENOSHA_TOPOMAP'
         );
         
      EXCEPTION
         WHEN OTHERS
         THEN
            NULL;
            
      END;
      
      MDSYS.SDO_TOPO_MAP.SET_MAX_MEMORY_SIZE(
         p_java_memory * 1073741824
      );
      
      MDSYS.SDO_TOPO_MAP.CREATE_TOPO_MAP(
          topology      => 'DZ_KENOSHA_TL_2014'
         ,topo_map      => 'DZ_KENOSHA_TOPOMAP'
      );
      
      MDSYS.SDO_TOPO_MAP.LOAD_TOPO_MAP(
          topo_map      => 'DZ_KENOSHA_TOPOMAP'
         ,allow_updates => 'true'
      );
      
      --------------------------------------------------------------------------
      -- Step 40
      -- Load the kenosha face topo table from vector faces
      --------------------------------------------------------------------------
      str_sql := 'SELECT '
              || ' a.tfid '
              || ',a.shape '
              || 'FROM '
              || 'tl_2014_55059_faces a ';  
              
      EXECUTE IMMEDIATE str_sql
      BULK COLLECT INTO ary_ids,ary_geoms; 

      str_sql := 'INSERT INTO dz_kenosha_face '
              || 'SELECT '
              || ' a.tfid '
              || ',a.statefp10 '
              || ',a.countyfp10 '
              || ',a.tractce10 '
              || ',a.blkgrpce10 '
              || ',a.blockce10 '
              || ',a.suffix1ce '
              || ',a.zcta5ce10 '
              || ',a.uace10 '
              || ',a.pumace10 '
              || ',a.statefp '
              || ',a.countyfp '
              || ',a.tractce '
              || ',a.blkgrpce '
              || ',a.cousubfp '
              || ',a.submcdfp '
              || ',a.estatefp '
              || ',a.conctyfp '
              || ',a.placefp '
              || ',a.aiannhfp '
              || ',a.aiannhce '
              || ',a.comptyp '
              || ',a.trsubfp '
              || ',a.trsubce '
              || ',a.anrcfp '
              || ',a.ttractce '
              || ',a.tblkgpce '
              || ',a.elsdlea '
              || ',a.scsdlea '
              || ',a.unsdlea '
              || ',a.cd114fp '
              || ',a.sldust '
              || ',a.sldlst '
              || ',a.csafp '
              || ',a.cbsafp '
              || ',a.metdivfp '
              || ',a.cnectafp '
              || ',a.nectafp '
              || ',a.nctadvfp '
              || ',a.lwflag '
              || ',a.offset '
              || ',a.atotal '
              || ',a.intptlat '
              || ',a.intptlon '
              || ',:p01 '
              || 'FROM '
              || 'tl_2014_55059_faces a '
              || 'WHERE '
              || 'a.tfid = :p02 ';
              
      FOR i IN 1 .. ary_ids.COUNT
      LOOP
         topo_temp := MDSYS.SDO_TOPO_MAP.CREATE_FEATURE(
             topology    => 'DZ_KENOSHA_TL_2014'
            ,table_name  => 'DZ_KENOSHA_FACE'
            ,column_name => 'TOPO_GEOM'
            ,geom        => ary_geoms(i)
         );
         
         EXECUTE IMMEDIATE str_sql 
         USING topo_temp,ary_ids(i);
      
      END LOOP;
      COMMIT;
      
      MDSYS.SDO_TOPO_MAP.COMMIT_TOPO_MAP();
      
      --------------------------------------------------------------------------
      -- Step 50
      -- Validate the topology
      --------------------------------------------------------------------------
      MDSYS.SDO_TOPO_MAP.DROP_TOPO_MAP(
          topo_map => 'DZ_KENOSHA_TOPOMAP'
      );
      
      str_verify := MDSYS.SDO_TOPO_MAP.VALIDATE_TOPOLOGY(
          topology => 'DZ_KENOSHA_TL_2014'
      );
      IF str_verify <> 'TRUE'
      THEN
         RAISE_APPLICATION_ERROR(-20001,str_verify);
          
      END IF;
      EXECUTE IMMEDIATE 'GRANT SELECT ON dz_kenosha_tl_2014_relation$ TO public';
      
      --------------------------------------------------------------------------
      -- Step 60
      -- Refresh the topo map
      --------------------------------------------------------------------------
      BEGIN
         MDSYS.SDO_TOPO_MAP.DROP_TOPO_MAP(
            topo_map      => 'DZ_KENOSHA_TOPOMAP'
         );
      
      EXCEPTION
         WHEN OTHERS
         THEN
            NULL;
            
      END;
          
      MDSYS.SDO_TOPO_MAP.CREATE_TOPO_MAP(
          topology      => 'DZ_KENOSHA_TL_2014'
         ,topo_map      => 'DZ_KENOSHA_TOPOMAP'
      );
      
      MDSYS.SDO_TOPO_MAP.LOAD_TOPO_MAP(
          topo_map      => 'DZ_KENOSHA_TOPOMAP'
         ,allow_updates => 'true'
      );
      
      --------------------------------------------------------------------------
      -- Step 70
      -- Load tabblocks into topology tables
      --------------------------------------------------------------------------
      str_sql := 'SELECT '
              || ' a.geoid10 '
              || ',a.tractce10 '
              || ',a.blockce10 '
              || 'FROM '
              || 'tl_2014_55059_tabblock10 a ';
              
      EXECUTE IMMEDIATE str_sql
      BULK COLLECT INTO ary_geoids,ary_trctids,ary_blckids; 
  
      str_sql := 'INSERT INTO dz_kenosha_block '
              || 'SELECT '
              || ' a.statefp10 '
              || ',a.countyfp10 '
              || ',a.tractce10 '
              || ',a.blockce10 '
              || ',a.geoid10 '
              || ',a.name10 '
              || ',a.mtfcc10 '
              || ',a.ur10 '
              || ',a.uace10 '
              || ',a.uatyp10 '
              || ',a.funcstat10 '
              || ',a.aland10 '
              || ',a.awater10 '
              || ',a.intptlat10 '
              || ',a.intptlon10 '
              || ',:p01 '
              || ',b.cousubfp ' 
              || 'FROM '
              || 'tl_2014_55059_tabblock10 a '
              || 'JOIN ('
              || '   SELECT '
              || '    bb.tractce10 '
              || '   ,bb.blockce10 '
              || '   ,MAX(cousubfp) AS cousubfp '
              || '   FROM '
              || '   tl_2014_55059_faces bb '
              || '   GROUP BY '
              || '    bb.tractce10 '
              || '   ,bb.blockce10 '   
              || ') b '
              || 'ON '
              || '    a.tractce10 = b.tractce10 '
              || 'AND a.blockce10 = b.blockce10 '
              || 'WHERE '
              || 'a.geoid10 = :p02 ';
      
      FOR i IN 1 .. ary_geoids.COUNT
      LOOP
         topo_temp := MDSYS.SDO_TOPO_MAP.CREATE_FEATURE(
             topology      => 'DZ_KENOSHA_TL_2014'
            ,table_name    => 'DZ_KENOSHA_BLOCK'
            ,column_name   => 'TOPO_GEOM'
            ,dml_condition => 'tractce10=''' || ary_trctids(i) || ''' AND blockce10=''' || ary_blckids(i) || ''' '
         );
         
         EXECUTE IMMEDIATE str_sql
         USING topo_temp,ary_geoids(i);
      
      END LOOP;
      COMMIT;
      
      --------------------------------------------------------------------------
      -- Step 80
      -- Load tracts into topology tables
      --------------------------------------------------------------------------
      str_sql := 'SELECT '
              || ' a.geoid '
              || ',a.tractce '
              || 'FROM '
              || 'tl_2014_55059_tract a ';  
      EXECUTE IMMEDIATE str_sql
      BULK COLLECT INTO ary_geoids,ary_trctids;
      
      str_sql := 'INSERT INTO dz_kenosha_tract '
              || 'SELECT '
              || ' a.statefp '
              || ',a.countyfp '
              || ',a.tractce '
              || ',a.geoid '
              || ',a.name '
              || ',a.namelsad '
              || ',a.mtfcc '
              || ',a.funcstat '
              || ',a.aland '
              || ',a.awater '
              || ',a.intptlat '
              || ',a.intptlon '
              || ',:p01 '
              || 'FROM '
              || 'tl_2014_55059_tract a '
              || 'WHERE '
              || 'a.geoid = :p02 ';
      
      FOR i IN 1 .. ary_geoids.COUNT
      LOOP
         topo_temp := MDSYS.SDO_TOPO_MAP.CREATE_FEATURE(
             topology      => 'DZ_KENOSHA_TL_2014'
            ,table_name    => 'DZ_KENOSHA_TRACT'
            ,column_name   => 'TOPO_GEOM'
            ,dml_condition => 'tractce10=''' || ary_trctids(i) || '''  '
         );
         
         EXECUTE IMMEDIATE str_sql
         USING topo_temp,ary_geoids(i);
      
      END LOOP;
      COMMIT;
      
      --------------------------------------------------------------------------
      -- Step 90
      -- Load cousubs into topology tables
      --------------------------------------------------------------------------
      str_sql := 'SELECT '
              || ' a.geoid '
              || ',a.cousubfp '
              || 'FROM '
              || 'tl_2014_55059_cousub a ';
              
      EXECUTE IMMEDIATE str_sql
      BULK COLLECT INTO ary_geoids,ary_trctids;
      
      str_sql := 'INSERT INTO dz_kenosha_cousub '
              || 'SELECT '
              || ' a.statefp '
              || ',a.countyfp '
              || ',a.cousubfp '
              || ',a.cousubns '
              || ',a.geoid '
              || ',a.name '
              || ',a.namelsad '
              || ',a.lsad '
              || ',a.classfp '
              || ',a.mtfcc '
              || ',a.cnectafp '
              || ',a.nectafp '
              || ',a.nctadvfp '
              || ',a.funcstat '
              || ',a.aland '
              || ',a.awater '
              || ',a.intptlat '
              || ',a.intptlon '
              || ',:p01 '
              || 'FROM '
              || 'tl_2014_55059_cousub a '
              || 'WHERE '
              || 'a.geoid = :p02 ';
      
      FOR i IN 1 .. ary_geoids.COUNT
      LOOP
         topo_temp := MDSYS.SDO_TOPO_MAP.CREATE_FEATURE(
             topology      => 'DZ_KENOSHA_TL_2014'
            ,table_name    => 'DZ_KENOSHA_COUSUB'
            ,column_name   => 'TOPO_GEOM'
            ,dml_condition => 'cousubfp=''' || ary_trctids(i) || '''  '
         );
         
         EXECUTE IMMEDIATE str_sql
         USING topo_temp,ary_geoids(i);
      
      END LOOP;
      COMMIT;
      
      --------------------------------------------------------------------------
      -- Step 100
      -- Load county into topology tables
      --------------------------------------------------------------------------
      str_sql := 'SELECT '
              || ' a.geoid '
              || ',a.countyfp '
              || 'FROM '
              || 'tl_2014_55059_county a ';
              
      EXECUTE IMMEDIATE str_sql
      BULK COLLECT INTO ary_geoids,ary_trctids;
      
      str_sql := 'INSERT INTO dz_kenosha_county '
              || 'SELECT '
              || ' a.statefp '
              || ',a.countyfp '
              || ',a.countyns '
              || ',a.geoid '
              || ',a.name '
              || ',a.namelsad '
              || ',a.lsad '
              || ',a.classfp '
              || ',a.mtfcc '
              || ',a.csafp '
              || ',a.cbsafp '
              || ',a.metdivfp '
              || ',a.funcstat '
              || ',a.aland '
              || ',a.awater '
              || ',a.intptlat '
              || ',a.intptlon '
              || ',:p01 '
              || 'FROM '
              || 'tl_2014_55059_county a '
              || 'WHERE '
              || 'a.geoid = :p02 ';
      
      FOR i IN 1 .. ary_geoids.COUNT
      LOOP
         topo_temp := MDSYS.SDO_TOPO_MAP.CREATE_FEATURE(
             topology      => 'DZ_KENOSHA_TL_2014'
            ,table_name    => 'DZ_KENOSHA_COUNTY'
            ,column_name   => 'TOPO_GEOM'
            ,dml_condition => 'countyfp=''' || ary_trctids(i) || '''  '
         );
         
         EXECUTE IMMEDIATE str_sql
         USING topo_temp,ary_geoids(i);
      
      END LOOP;
      COMMIT;
      
      --------------------------------------------------------------------------
      -- Step 110
      -- Drop topo map object
      --------------------------------------------------------------------------
      MDSYS.SDO_TOPO_MAP.COMMIT_TOPO_MAP();
      MDSYS.SDO_TOPO_MAP.DROP_TOPO_MAP(
          topo_map => 'DZ_KENOSHA_TOPOMAP'
      );
      
      --------------------------------------------------------------------------
      -- Step 120
      -- Validate topology for final time
      --------------------------------------------------------------------------
      str_verify := MDSYS.SDO_TOPO_MAP.VALIDATE_TOPOLOGY(
          topology => 'DZ_KENOSHA_TL_2014'
      );
      IF str_verify <> 'TRUE'
      THEN
         RAISE_APPLICATION_ERROR(-20001,str_verify);
          
      END IF;
      
   END load_kenosha_tiger_topology;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   FUNCTION verify_kenosha_tiger_topology
   RETURN VARCHAR
   AS
      str_results VARCHAR2(4000 Char);
      
   BEGIN
      
      -- Work needed here
      RETURN 'TRUE';
      
   END verify_kenosha_tiger_topology;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE drop_catchment_topology
   AS
   BEGIN
      drop_topo('DZ_CATCHMENTS_NP21');

   END drop_catchment_topology;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE create_catchment_topology
   AS
      str_sql VARCHAR2(4000 Char);
      
   BEGIN
      
      --------------------------------------------------------------------------
      -- Step 10
      -- Check if catchment topology already exists
      --------------------------------------------------------------------------
      IF topo_exists('DZ_CATCHMENTS_NP21') = 'TRUE'
      THEN
         RAISE_APPLICATION_ERROR(
             -20001
            ,'DZ_CATCHMENTS_NP21 test topology already exists'
         );
         
      END IF;
      
      --------------------------------------------------------------------------
      -- Step 20
      -- Create the topology
      --------------------------------------------------------------------------
      MDSYS.SDO_TOPO.CREATE_TOPOLOGY(
          topology  => 'DZ_CATCHMENTS_NP21'
         ,tolerance => 0.05
         ,srid      => 8265
         ,node_table_storage    => 'TABLESPACE ' || dz_testdata_constants.c_tablespace
         ,edge_table_storage    => 'TABLESPACE ' || dz_testdata_constants.c_tablespace
         ,face_table_storage    => 'TABLESPACE ' || dz_testdata_constants.c_tablespace
         ,history_table_storage => 'TABLESPACE ' || dz_testdata_constants.c_tablespace
      );
      dbms_output.put_line('Topology Created');
      
      EXECUTE IMMEDIATE 'GRANT SELECT ON dz_catchments_np21_edge$ TO public';
      EXECUTE IMMEDIATE 'GRANT SELECT ON dz_catchments_np21_face$ TO public';
      EXECUTE IMMEDIATE 'GRANT SELECT ON dz_catchments_np21_history$ TO public';
      EXECUTE IMMEDIATE 'GRANT SELECT ON dz_catchments_np21_node$ TO public';
      
      --------------------------------------------------------------------------
      -- Step 30
      -- Insert the universal face
      --------------------------------------------------------------------------
      str_sql := 'INSERT INTO dz_catchments_np21_face$('
              || '    face_id '
              || '   ,boundary_edge_id '
              || '   ,island_edge_id_list '
              || '   ,island_node_id_list '
              || '   ,mbr_geometry '
              || ') VALUES ( '
              || '    -1 '
              || '   ,NULL '
              || '   ,MDSYS.SDO_LIST_TYPE() '
              || '   ,MDSYS.SDO_LIST_TYPE() '
              || '   ,NULL '
              || ') ';
      EXECUTE IMMEDIATE str_sql;
      COMMIT;    
      
      --------------------------------------------------------------------------
      -- Step 40
      -- Create the catchments topo table
      --------------------------------------------------------------------------
      BEGIN
         EXECUTE IMMEDIATE 'DROP TABLE dz_catchments_np21_topo';
      
      EXCEPTION
         WHEN OTHERS
         THEN
            NULL;
            
      END;
      
      str_sql := 'CREATE TABLE dz_catchments_np21_topo( '
              || '    featureid         INTEGER           NOT NULL '
              || '   ,sourcefc          VARCHAR2(20 Char) NOT NULL '
              || '   ,gridcode          INTEGER           NOT NULL '
              || '   ,areasqkm          NUMBER            NOT NULL '
              || '   ,wbd_huc12         VARCHAR2(12 Char) NOT NULL '
              || '   ,wbd_huc12_percent NUMBER '
              || '   ,topo_geom         MDSYS.SDO_TOPO_GEOMETRY '
              || ') '
              || 'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';    
      EXECUTE IMMEDIATE str_sql;
      
      EXECUTE IMMEDIATE 'CREATE UNIQUE INDEX dz_catchments_np21_topo_pk ' || 
         'ON dz_catchments_np21_topo(featureid) ' ||
         'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '; 
   
      EXECUTE IMMEDIATE 'GRANT SELECT ON dz_catchments_np21_topo TO public';
      
      MDSYS.SDO_TOPO.ADD_TOPO_GEOMETRY_LAYER(
          topology      => 'DZ_CATCHMENTS_NP21'
         ,table_name    => 'DZ_CATCHMENTS_NP21_TOPO'
         ,column_name   => 'TOPO_GEOM'
         ,topo_geometry_layer_type => 'POLYGON'
         ,relation_table_storage   => 'TABLESPACE ' || dz_testdata_constants.c_tablespace
      );
      
      MDSYS.SDO_TOPO.INITIALIZE_METADATA(
          topology => 'DZ_CATCHMENTS_NP21'
      );

   END create_catchment_topology;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE load_catchment_topology(
      p_java_memory   IN  NUMBER DEFAULT 2
   )
   AS
      str_sql     VARCHAR2(4000 Char);
      str_verify  VARCHAR2(4000 Char);
      ary_ids     MDSYS.SDO_NUMBER_ARRAY;
      ary_geoms   MDSYS.SDO_GEOMETRY_ARRAY;
      topo_temp   MDSYS.SDO_TOPO_GEOMETRY;
      
   BEGIN
   
      --------------------------------------------------------------------------
      -- Step 10
      -- Check if catchment topology does not exist
      --------------------------------------------------------------------------
      IF topo_exists('DZ_CATCHMENTS_NP21') <> 'TRUE'
      THEN
         RAISE_APPLICATION_ERROR(
             -20001
            ,'DZ_CATCHMENTS_NP21 test topology does not exist'
         );
         
      END IF;
   
      --------------------------------------------------------------------------
      -- Step 20
      -- Check that source census vector data is available
      --------------------------------------------------------------------------
      str_verify := dz_testdata_vector.verify_nhdplus_vector(); 
      IF str_verify <> 'TRUE'
      THEN
         RAISE_APPLICATION_ERROR(
             -20001
            ,'nhdplus vector test data is not loaded'
         );
      
      END IF;
      
      --------------------------------------------------------------------------
      -- Step 30
      -- Generate a topo map object
      --------------------------------------------------------------------------
      BEGIN
         MDSYS.SDO_TOPO_MAP.ROLLBACK_TOPO_MAP();
         
      EXCEPTION
         WHEN OTHERS
         THEN
            NULL;
            
      END;
      
      BEGIN
         MDSYS.SDO_TOPO_MAP.DROP_TOPO_MAP(
            topo_map => 'DZ_CATCHMENTS_TOPOMAP'
         );
      
      EXCEPTION
         WHEN OTHERS
         THEN
            NULL;
            
      END;
      
      MDSYS.SDO_TOPO_MAP.SET_MAX_MEMORY_SIZE(
         p_java_memory * 1073741824
      );
      
      MDSYS.SDO_TOPO_MAP.CREATE_TOPO_MAP(
          topology      => 'DZ_CATCHMENTS_NP21'
         ,topo_map      => 'DZ_CATCHMENTS_TOPOMAP'
      );
      
      MDSYS.SDO_TOPO_MAP.LOAD_TOPO_MAP(
          topo_map      => 'DZ_CATCHMENTS_TOPOMAP'
         ,allow_updates => 'true'
      );
      
      --------------------------------------------------------------------------
      -- Step 40
      -- Load the catchment topo table from vector catchments
      --------------------------------------------------------------------------
      str_sql := 'SELECT '
              || ' a.featureid '
              || ',a.shape '
              || 'FROM '
              || 'nhdplus21_catchment_55059 a ';  
              
      EXECUTE IMMEDIATE str_sql
      BULK COLLECT INTO ary_ids,ary_geoms; 

      str_sql := 'INSERT INTO dz_catchments_np21_topo '
              || 'SELECT '
              || ' a.featureid '
              || ',a.sourcefc '
              || ',a.gridcode '
              || ',a.areasqkm '
              || ',a.wbd_huc12 '
              || ',a.wbd_huc12_percent '
              || ',:p01 '
              || 'FROM '
              || 'nhdplus21_catchment_55059 a '
              || 'WHERE '
              || 'a.featureid = :p02 ';
              
      FOR i IN 1 .. ary_ids.COUNT
      LOOP
         topo_temp := MDSYS.SDO_TOPO_MAP.CREATE_FEATURE(
             topology    => 'DZ_CATCHMENTS_NP21'
            ,table_name  => 'DZ_CATCHMENTS_NP21_TOPO'
            ,column_name => 'TOPO_GEOM'
            ,geom        => ary_geoms(i)
         );
         
         EXECUTE IMMEDIATE str_sql 
         USING topo_temp,ary_ids(i);
      
      END LOOP;
      COMMIT;
      
      MDSYS.SDO_TOPO_MAP.COMMIT_TOPO_MAP();
      
      MDSYS.SDO_TOPO_MAP.DROP_TOPO_MAP(
          topo_map => 'DZ_CATCHMENTS_TOPOMAP'
      );
      
      --------------------------------------------------------------------------
      -- Step 50
      -- Validate the topology
      --------------------------------------------------------------------------
      str_verify := MDSYS.SDO_TOPO_MAP.VALIDATE_TOPOLOGY(
          topology => 'DZ_CATCHMENTS_NP21'
      );
      IF str_verify <> 'TRUE'
      THEN
         RAISE_APPLICATION_ERROR(-20001,str_verify);
          
      END IF;
      EXECUTE IMMEDIATE 'GRANT SELECT ON dz_catchments_np21_relation$ TO public';
   
   END load_catchment_topology;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   FUNCTION verify_catchment_topology
   RETURN VARCHAR
   AS
      str_results VARCHAR2(4000 Char);
      
   BEGIN
      
      -- Work needed here
      RETURN 'TRUE';
      
   END verify_catchment_topology;
   
END dz_testdata_topo;
/

