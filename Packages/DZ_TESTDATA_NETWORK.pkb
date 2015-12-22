CREATE OR REPLACE PACKAGE BODY dz_testdata_network
AS
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE bump_sdo_metadata(
       p_table_name     IN  VARCHAR2
      ,p_column_name    IN  VARCHAR2
      ,p_min_x          IN  NUMBER
      ,p_max_x          IN  NUMBER
      ,p_min_y          IN  NUMBER
      ,p_max_y          IN  NUMBER
      ,p_tolerance      IN  NUMBER
      ,p_srid           IN  NUMBER
   )
   AS
      num_counter     NUMBER;
      str_table_name  VARCHAR2(30 Char) := UPPER(p_table_name);
      str_column_name VARCHAR2(30 Char) := UPPER(p_column_name);
   
   BEGIN
      
      SELECT
      COUNT(*)
      INTO num_counter
      FROM
      user_sdo_geom_metadata a
      WHERE
          a.table_name = str_table_name
      AND a.column_name = str_column_name;
      
      IF num_counter = 1
      THEN
         UPDATE user_sdo_geom_metadata a
         SET
          a.diminfo = MDSYS.SDO_DIM_ARRAY(
              SDO_DIM_ELEMENT('X',p_min_x,p_max_x,p_tolerance)
             ,SDO_DIM_ELEMENT('Y',p_min_y,p_max_y,p_tolerance)
          )
         ,a.srid = p_srid
         WHERE
             a.table_name = str_table_name
         AND a.column_name = str_column_name;   
      
      ELSE
        INSERT INTO user_sdo_geom_metadata a(
            table_name
           ,column_name
           ,diminfo
           ,srid
        ) VALUES (
            str_table_name
           ,str_column_name
           ,MDSYS.SDO_DIM_ARRAY(
                SDO_DIM_ELEMENT('X',p_min_x,p_max_x,p_tolerance)
               ,SDO_DIM_ELEMENT('Y',p_min_y,p_max_y,p_tolerance)
            )
           ,p_srid
        );
      
      END IF;
      
      COMMIT;

   END bump_sdo_metadata;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE drop_spatial_indexes(
       p_network                IN  VARCHAR2
   )
   AS
      str_network VARCHAR2(15 Char) := UPPER(p_network);
      num_counter NUMBER;
      
   BEGIN
   
      SELECT
      COUNT(*)
      INTO num_counter
      FROM
      user_indexes a
      WHERE
      a.index_name = str_network || '_NODE_SPX';
      
      IF num_counter > 0
      THEN
         EXECUTE IMMEDIATE 'DROP INDEX ' || str_network || '_NODE_SPX';
         
      END IF;      
   
      SELECT
      COUNT(*)
      INTO num_counter
      FROM
      user_indexes a
      WHERE
      a.index_name = str_network || '_LINK_SPX';
      
      IF num_counter > 0
      THEN
         EXECUTE IMMEDIATE 'DROP INDEX ' || str_network || '_LINK_SPX';
         
      END IF;
         
      SELECT
      COUNT(*)
      INTO num_counter
      FROM
      user_indexes a
      WHERE
      a.index_name = str_network || '_PATH_SPX';
      
      IF num_counter > 0
      THEN
         EXECUTE IMMEDIATE 'DROP INDEX ' || str_network || '_PATH_SPX';
         
      END IF;
         
      SELECT
      COUNT(*)
      INTO num_counter
      FROM
      user_indexes a
      WHERE
      a.index_name = str_network || '_SUBP_SPX';
      
      IF num_counter > 0
      THEN
         EXECUTE IMMEDIATE 'DROP INDEX ' || str_network || '_SUBP_SPX';
         
      END IF;

   END drop_spatial_indexes;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE add_spatial_indexes(
       p_network                IN  VARCHAR2
      ,p_parameters             IN  VARCHAR2 DEFAULT NULL
   )
   AS
      str_network VARCHAR2(15 Char) := UPPER(p_network);
      str_sql     VARCHAR2(4000 Char);
      
   BEGIN
      
      drop_spatial_indexes(
          p_network => p_network
      );
   
      str_sql := 'CREATE INDEX ' || str_network || '_NODE_SPX '
              || 'ON ' || str_network || '_NODE$(GEOMETRY) '
              || 'INDEXTYPE IS MDSYS.SPATIAL_INDEX ';
              
      IF p_parameters IS NOT NULL
      THEN
         str_sql := str_sql || 'PARAMETERS(''' || p_parameters || ''')';
         
      END IF; 
                 
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'CREATE INDEX ' || str_network || '_LINK_SPX '
              || 'ON ' || str_network || '_LINK$(GEOMETRY) '
              || 'INDEXTYPE IS MDSYS.SPATIAL_INDEX ';
        
      IF p_parameters IS NOT NULL
      THEN
         str_sql := str_sql || 'PARAMETERS(''' || p_parameters || ''')';
         
      END IF;
               
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'CREATE INDEX ' || str_network || '_PATH_SPX '
              || 'ON ' || str_network || '_PATH$(GEOMETRY) '
              || 'INDEXTYPE IS MDSYS.SPATIAL_INDEX ';
      
      IF p_parameters IS NOT NULL
      THEN
         str_sql := str_sql || 'PARAMETERS(''' || p_parameters || ''')';
         
      END IF;
                 
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'CREATE INDEX ' || str_network || '_SUBP_SPX '
              || 'ON ' || str_network || '_SUBP$(GEOMETRY) '
              || 'INDEXTYPE IS MDSYS.SPATIAL_INDEX ';
                 
      IF p_parameters IS NOT NULL
      THEN
         str_sql := str_sql || 'PARAMETERS(''' || p_parameters || ''')';
         
      END IF;
      
      EXECUTE IMMEDIATE str_sql;
   
   END add_spatial_indexes;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE create_sdo_lod_network(
       p_network                IN  VARCHAR2
      ,p_no_of_hierarchy_levels IN  NUMBER
      ,p_is_directed            IN  BOOLEAN
      ,p_node_with_cost         IN  BOOLEAN
      ,p_storage_parameters     IN  VARCHAR2
      ,p_min_x                  IN  NUMBER DEFAULT -180
      ,p_max_x                  IN  NUMBER DEFAULT 180
      ,p_min_y                  IN  NUMBER DEFAULT -90
      ,p_max_y                  IN  NUMBER DEFAULT 90
      ,p_srid                   IN  NUMBER DEFAULT 8265
      ,p_tolerance              IN  NUMBER DEFAULT 0.05
      ,p_defer_spatial_indexes  IN  BOOLEAN DEFAULT TRUE
   )
   AS
      str_network  VARCHAR2(30 Char) := UPPER(p_network);
      str_sql      VARCHAR2(4000 Char);
      str_results  VARCHAR2(4000 Char);
      
   BEGIN
   
      --------------------------------------------------------------------------
      -- Step 10
      -- Check over incoming parameters
      --------------------------------------------------------------------------
      IF MDSYS.SDO_NET.NETWORK_EXISTS(
         network => str_network
      ) = 'TRUE'
      THEN
         RAISE_APPLICATION_ERROR(
             -20001
            ,'Error network already exists'
         );
      
      END IF;
      
      --------------------------------------------------------------------------
      -- Step 20
      -- Call the usual create network
      --------------------------------------------------------------------------
      MDSYS.SDO_NET.CREATE_SDO_NETWORK(
          network                => str_network
         ,no_of_hierarchy_levels => p_no_of_hierarchy_levels
         ,is_directed            => p_is_directed
         ,node_with_cost         => p_node_with_cost
         ,is_complex             => FALSE
         ,storage_parameters     => p_storage_parameters
      );
      
      MDSYS.SDO_NET.CREATE_SUBPATH_TABLE(
          table_name             => str_network || '_SUBP$'
         ,geom_column            => 'GEOMETRY'
         ,storage_parameters     => p_storage_parameters
      );
      
      MDSYS.SDO_NET.CREATE_PARTITION_TABLE(
          table_name             => str_network || '_PART$'
      );
      
      str_sql := 'CREATE TABLE ' || str_network || '_PBLOB$( '
              || '    link_level          NUMBER '
              || '   ,partition_id        NUMBER '
              || '   ,blob                BLOB   '
              || '   ,num_inodes          NUMBER '
              || '   ,num_enodes          NUMBER '
              || '   ,num_ilinks          NUMBER '
              || '   ,num_elinks          NUMBER '
              || '   ,num_inlinks         NUMBER '
              || '   ,num_outlinks        NUMBER '
              || '   ,user_data_included  VARCHAR2(1 Char) '
              || '   ,CONSTRAINT ' || str_network || '_PBLOB$_PK '
              || '    PRIMARY KEY(link_level,partition_id) '
              || '    ENABLE VALIDATE '
              || ') '
              || p_storage_parameters;
              
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'CREATE TABLE ' || str_network || '_COMP$( '
              || '    link_level          NUMBER '
              || '   ,node_id             NUMBER '
              || '   ,component_id        NUMBER '
              || '   ,CONSTRAINT ' || str_network || '_COMP$_PK '
              || '    PRIMARY KEY(link_level,node_id) '
              || '    ENABLE VALIDATE '
              || ') '
              || p_storage_parameters;
              
      EXECUTE IMMEDIATE str_sql;

      --------------------------------------------------------------------------
      -- Step 30
      -- Update the network metadata
      --------------------------------------------------------------------------
      UPDATE user_sdo_network_metadata a
      SET
       subpath_table_name        = str_network || '_SUBP$'
      ,subpath_geom_column       = 'GEOMETRY'
      ,partition_table_name      = str_network || '_PART$'
      ,partition_blob_table_name = str_network || '_PBLOB$'
      ,component_table_name      = str_network || '_COMP$'
      ,node_level_table_name     = str_network || '_SUBP$'
      WHERE
      a.network = str_network;
      COMMIT;
      
      --------------------------------------------------------------------------
      -- Step 40
      -- Add indexes 
      --------------------------------------------------------------------------
      str_sql := 'CREATE BITMAP INDEX ' || str_network || '_NODE_04I '
              || 'ON ' || str_network || '_NODE$(active) '
              || p_storage_parameters;
                 
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'CREATE BITMAP INDEX ' || str_network || '_NODE_05I '
              || 'ON ' || str_network || '_NODE$(partition_id) '
              || p_storage_parameters;
                 
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'CREATE INDEX ' || str_network || '_LINK_03I '
              || 'ON ' || str_network || '_LINK$(start_node_id) '
              || p_storage_parameters;
                 
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'CREATE INDEX ' || str_network || '_LINK_04I '
              || 'ON ' || str_network || '_LINK$(end_node_id) '
              || p_storage_parameters;
                 
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'CREATE BITMAP INDEX ' || str_network || '_LINK_06I '
              || 'ON ' || str_network || '_LINK$(active) '
              || p_storage_parameters;
                 
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'CREATE BITMAP INDEX ' || str_network || '_LINK_07I '
              || 'ON ' || str_network || '_LINK$(link_level) '
              || p_storage_parameters;
                 
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'CREATE BITMAP INDEX ' || str_network || '_LINK_10I '
              || 'ON ' || str_network || '_LINK$(bidirected) '
              || p_storage_parameters;
                 
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'CREATE INDEX ' || str_network || '_PART_01I '
              || 'ON ' || str_network || '_PART$(node_id) '
              || p_storage_parameters;
                 
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'CREATE INDEX ' || str_network || '_PATH_04I '
              || 'ON ' || str_network || '_PATH$(start_node_id) '
              || p_storage_parameters;
                 
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'CREATE INDEX ' || str_network || '_PATH_05I '
              || 'ON ' || str_network || '_PATH$(end_node_id) '
              || p_storage_parameters;
                 
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'CREATE INDEX ' || str_network || '_SUBP_04I '
              || 'ON ' || str_network || '_SUBP$(reference_path_id) '
              || p_storage_parameters;
                 
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'CREATE INDEX ' || str_network || '_SUBP_05I '
              || 'ON ' || str_network || '_SUBP$(start_link_index) '
              || p_storage_parameters;
                 
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'CREATE INDEX ' || str_network || '_SUBP_06I '
              || 'ON ' || str_network || '_SUBP$(end_link_index) '
              || p_storage_parameters;
                 
      EXECUTE IMMEDIATE str_sql;
      
      --------------------------------------------------------------------------
      -- Step 50
      -- Update the sdo metadata
      --------------------------------------------------------------------------
      bump_sdo_metadata(
          p_table_name     => str_network || '_NODE$'
         ,p_column_name    => 'GEOMETRY'
         ,p_min_x          => p_min_x
         ,p_max_x          => p_max_x
         ,p_min_y          => p_min_y
         ,p_max_y          => p_max_y
         ,p_tolerance      => p_tolerance
         ,p_srid           => p_srid
      );
      
      bump_sdo_metadata(
          p_table_name     => str_network || '_LINK$'
         ,p_column_name    => 'GEOMETRY'
         ,p_min_x          => p_min_x
         ,p_max_x          => p_max_x
         ,p_min_y          => p_min_y
         ,p_max_y          => p_max_y
         ,p_tolerance      => p_tolerance
         ,p_srid           => p_srid
      );
      
      bump_sdo_metadata(
          p_table_name     => str_network || '_PATH$'
         ,p_column_name    => 'GEOMETRY'
         ,p_min_x          => p_min_x
         ,p_max_x          => p_max_x
         ,p_min_y          => p_min_y
         ,p_max_y          => p_max_y
         ,p_tolerance      => p_tolerance
         ,p_srid           => p_srid
      );
      
      bump_sdo_metadata(
          p_table_name     => str_network || '_SUBP$'
         ,p_column_name    => 'GEOMETRY'
         ,p_min_x          => p_min_x
         ,p_max_x          => p_max_x
         ,p_min_y          => p_min_y
         ,p_max_y          => p_max_y
         ,p_tolerance      => p_tolerance
         ,p_srid           => p_srid
      );
      
      --------------------------------------------------------------------------
      -- Step 60
      -- Add spatial indexes if requested
      --------------------------------------------------------------------------
      IF NOT p_defer_spatial_indexes
      THEN
         add_spatial_indexes(
             p_network  => str_network
         );
         
      END IF;
      
      --------------------------------------------------------------------------
      -- Step 70
      -- Validate results
      --------------------------------------------------------------------------
      str_results := MDSYS.SDO_NET.VALIDATE_NETWORK(
          network    => str_network
         ,check_data => 'TRUE'
      );
      
      IF str_results <> 'TRUE'
      THEN
         RAISE_APPLICATION_ERROR(
             -20001
            ,'Network does not validate: ' || str_results
         );
         
      END IF;
      
   END create_sdo_lod_network;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE drop_network
   AS
   BEGIN
      drop_plusflow_network();
      
   END drop_network;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE create_network
   AS
   BEGIN
      create_plusflow_network();
      
   END create_network;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE load_network
   AS
   BEGIN
      load_plusflow_network();
      
   END load_network;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   FUNCTION verify_network
   RETURN VARCHAR
   AS
      str_results VARCHAR2(4000 Char);
      
   BEGIN
      
      str_results := verify_plusflow_network();
      
      IF str_results <> 'TRUE'
      THEN
         RETURN str_results;
         
      END IF;
      
      RETURN 'TRUE'; 
   
   END verify_network;

   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE drop_plusflow_network
   AS
   BEGIN
      
      --------------------------------------------------------------------------
      -- Step 10
      -- Check if network exists
      --------------------------------------------------------------------------
      IF MDSYS.SDO_NET.NETWORK_EXISTS(
         network => 'DZ_PLUSFLOW'
      ) <> 'TRUE'
      THEN
         RETURN;
      
      END IF;
      
      --------------------------------------------------------------------------
      -- Step 20
      -- Drop the network
      --------------------------------------------------------------------------
      MDSYS.SDO_NET.DROP_NETWORK(
         network => 'DZ_PLUSFLOW'
      );
      
      --------------------------------------------------------------------------
      -- Step 30
      -- Drop any additional tables in the network
      --------------------------------------------------------------------------
      
      --------------------------------------------------------------------------
      -- Step 40
      -- Commit to clear the metadata
      --------------------------------------------------------------------------
      COMMIT;
   
   END drop_plusflow_network;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE create_plusflow_network
   AS
      str_sql VARCHAR2(4000 Char);
      
   BEGIN
      
      --------------------------------------------------------------------------
      -- Step 10
      -- Check that network does not already exist
      --------------------------------------------------------------------------
      IF MDSYS.SDO_NET.NETWORK_EXISTS('DZ_PLUSFLOW') = 'TRUE'
      THEN
         RAISE_APPLICATION_ERROR(
             -20001
            ,'dz_plusflow network already exists'
         );
         
      END IF;
      
      --------------------------------------------------------------------------
      -- Step 20
      -- Create a simple sdo network
      --------------------------------------------------------------------------
      create_sdo_lod_network(
          p_network                => 'DZ_PLUSFLOW'
         ,p_no_of_hierarchy_levels => 1
         ,p_is_directed            => TRUE
         ,p_node_with_cost         => FALSE
         ,p_storage_parameters     => 'TABLESPACE ' || dz_testdata_constants.c_tablespace
      );
      
      --------------------------------------------------------------------------
      -- Step 30
      -- Alter the link table to add user fields for mainpath information
      --------------------------------------------------------------------------
      str_sql := 'ALTER TABLE dz_plusflow_link$ '
              || 'ADD (uphydroseq  INTEGER)';      
      EXECUTE IMMEDIATE str_sql;

      str_sql := 'ALTER TABLE dz_plusflow_link$ '
              || 'ADD (dnhydroseq  INTEGER) ';
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'ALTER TABLE dz_plusflow_link$ '
              || 'ADD (divergence  INTEGER) ';
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'ALTER TABLE dz_plusflow_link$ '
              || 'ADD (fcode  INTEGER) ';
      EXECUTE IMMEDIATE str_sql;
      
      --------------------------------------------------------------------------
      -- Step 60
      -- Add indexes to user link fields
      --------------------------------------------------------------------------
      str_sql := 'CREATE INDEX dz_plusflow_link_11I '
              || 'ON dz_plusflow_link$( '
              || '   uphydroseq '
              || ') TABLESPACE ' || dz_testdata_constants.c_tablespace;      
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'CREATE INDEX dz_plusflow_link_12I '
              || 'ON dz_plusflow_link$( '
              || '   dnhydroseq '
              || ') TABLESPACE ' || dz_testdata_constants.c_tablespace;      
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'CREATE BITMAP INDEX dz_plusflow_link_13I '
              || 'ON dz_plusflow_link$( '
              || '   divergence '
              || ') TABLESPACE ' || dz_testdata_constants.c_tablespace;       
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'CREATE INDEX dz_plusflow_link_14I '
              || 'ON dz_plusflow_link$( '
              || '   fcode '
              || ') TABLESPACE ' || dz_testdata_constants.c_tablespace;       
      EXECUTE IMMEDIATE str_sql;
      
      --------------------------------------------------------------------------
      -- Step 40
      -- Update metadata with user fields
      --------------------------------------------------------------------------
      DELETE FROM user_sdo_network_user_data
      WHERE network = 'DZ_PLUSFLOW';
      
      INSERT INTO user_sdo_network_user_data(
          network
         ,table_type
         ,data_name
         ,data_type
         ,category_id
      ) VALUES (
          'DZ_PLUSFLOW'
         ,'LINK'
         ,'UPHYDROSEQ'
         ,'INTEGER'
         ,0
      );
      
      INSERT INTO user_sdo_network_user_data(
          network
         ,table_type
         ,data_name
         ,data_type
         ,category_id
      ) VALUES (
          'DZ_PLUSFLOW'
         ,'LINK'
         ,'DNHYDROSEQ'
         ,'INTEGER'
         ,0
      );
      
      INSERT INTO user_sdo_network_user_data(
          network
         ,table_type
         ,data_name
         ,data_type
         ,category_id
      ) VALUES (
          'DZ_PLUSFLOW'
         ,'LINK'
         ,'DIVERGENCE'
         ,'INTEGER'
         ,0
      );
      
      INSERT INTO user_sdo_network_user_data(
          network
         ,table_type
         ,data_name
         ,data_type
         ,category_id
      ) VALUES (
          'DZ_PLUSFLOW'
         ,'LINK'
         ,'FCODE'
         ,'INTEGER'
         ,0
      );
      
      UPDATE user_sdo_network_metadata a
      SET a.user_defined_data = 'Y'
      WHERE a.network = 'DZ_PLUSFLOW';
      
      COMMIT;
      
      --------------------------------------------------------------------------
      -- Step 50
      -- Grant parts to public
      --------------------------------------------------------------------------
      EXECUTE IMMEDIATE
      'GRANT SELECT ON dz_plusflow_path$ TO public';
      
      EXECUTE IMMEDIATE
      'GRANT SELECT ON dz_plusflow_link$ TO public';
      
      EXECUTE IMMEDIATE
      'GRANT SELECT ON dz_plusflow_node$ TO public';
      
      EXECUTE IMMEDIATE
      'GRANT SELECT ON dz_plusflow_subp$ TO public';
      
      
   END create_plusflow_network;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE load_plusflow_network(
      p_java_memory   IN  NUMBER DEFAULT 2
   )
   AS
      num_max_num_nodes NUMBER            := 5000;
      str_log_file      VARCHAR2(30 Char) := 'dz_plusflow_main.log';
      
      str_sql     VARCHAR2(4000 Char);
      str_results VARCHAR2(4000 Char);
      
   BEGIN

      --------------------------------------------------------------------------
      -- Step 10
      -- Check that network exists
      --------------------------------------------------------------------------
      IF MDSYS.SDO_NET.NETWORK_EXISTS('DZ_PLUSFLOW') <> 'TRUE'
      THEN
         RAISE_APPLICATION_ERROR(
             -20001
            ,'dz_plusflow network does not exists'
         );
         
      END IF;
      
      --------------------------------------------------------------------------
      -- Step 20
      -- Add the Plusflow nodes fro flowline vector source
      --------------------------------------------------------------------------
      str_sql := 'INSERT INTO dz_plusflow_node$( '
              || '    node_id, active, geometry ) '
              || 'SELECT '
              || ' a.nodenumber '
              || ',''Y'' '
              || ',CASE '
              || ' WHEN a.tocomid = 0 '
              || ' OR a.tocomid NOT IN (SELECT dd.nhdplus_comid FROM nhdplus21_nhdflowline_55059 dd) '
              || ' THEN '
              || '    ( '
              || '     SELECT ' 
              || '     dz_testdata_util.downsize_2d( '
              || '        dz_testdata_util.get_end_point(bb.shape) '
              || '     ) '
              || '     FROM '
              || '     nhdplus21_nhdflowline_55059 bb '
              || '     WHERE '
              || '     bb.nhdplus_comid = a.fromcomid '
              || '    ) '
              || ' ELSE '
              || '    ( '
              || '     SELECT ' 
              || '     dz_testdata_util.downsize_2d( '
              || '        dz_testdata_util.get_start_point(cc.shape) '
              || '     ) '
              || '     FROM '
              || '     nhdplus21_nhdflowline_55059 cc '
              || '     WHERE '
              || '     cc.nhdplus_comid = a.tocomid '
              || '    ) '
              || ' END AS shape '
              || 'FROM ( '
              || '   SELECT '
              || '    aa.nodenumber '
              || '   ,MAX(aa.tocomid) AS tocomid '
              || '   ,MAX(aa.fromcomid) AS fromcomid '
              || '   FROM '
              || '   nhdplus21_plusflow_55059 aa '
              || '   GROUP BY '
              || '   aa.nodenumber '
              || ') a '
              || 'WHERE '
              || 'a.nodenumber <> 0 ';
      
      EXECUTE IMMEDIATE str_sql;
      COMMIT;
      
      DBMS_STATS.gather_table_stats(
          USER
         ,'dz_plusflow_node$'
      );
      
      --------------------------------------------------------------------------
      -- Step 50
      -- Add the plusflowline links
      --------------------------------------------------------------------------
      str_sql := 'INSERT INTO dz_plusflow_link$( '
              || '    link_id '
              || '   ,link_name '
              || '   ,start_node_id '
              || '   ,end_node_id '
              || '   ,active '
              || '   ,link_level '
              || '   ,geometry '
              || '   ,cost '
              || '   ,bidirected '
              || '   ,uphydroseq '  
              || '   ,dnhydroseq '
              || '   ,divergence '
              || '   ,fcode '
              || ') '
              || 'SELECT '
              || ' a.hydroseq '
              || ',TO_CHAR(a.comid) '
              || ',a.fromnode '
              || ',a.tonode '
              || ',''Y'' '
              || ',1 '
              || ',dz_testdata_util.downsize_2d(b.shape) '
              || ',a.lengthkm '
              || ',''N'' '
              || ',a.uphydroseq '
              || ',a.dnhydroseq '
              || ',a.divergence '
              || ',a.fcode '
              || 'FROM '
              || 'nhdplus21_plusflowlineva_55059 a '
              || 'JOIN '
              || 'nhdplus21_nhdflowline_55059 b '
              || 'ON '
              || 'a.comid = b.nhdplus_comid ';
              
      EXECUTE IMMEDIATE str_sql;
      COMMIT;
      
      DBMS_STATS.gather_table_stats(
          USER
         ,'dz_plusflow_link$'
      );
      
      --------------------------------------------------------------------------
      -- Step 80
      -- Partition the network
      --------------------------------------------------------------------------
      MDSYS.SDO_NET.SPATIAL_PARTITION(
          network                => 'DZ_PLUSFLOW'
         ,partition_table_name   => 'DZ_PLUSFLOW_PART$'
         ,max_num_nodes          => num_max_num_nodes
         ,log_loc                => dz_testdata_constants.c_directory
         ,log_file               => str_log_file
         ,open_mode              => 'W'
         ,link_level             => 1
      );
      
      DBMS_STATS.gather_table_stats(
          USER
         ,'dz_plusflow_part$'
      );
      
      --------------------------------------------------------------------------
      -- Step 90
      -- Generate the pblobs
      --------------------------------------------------------------------------
      MDSYS.SDO_NET.GENERATE_PARTITION_BLOBS(
          network                   => 'DZ_PLUSFLOW'
         ,link_level                => 1
         ,partition_blob_table_name => 'DZ_PLUSFLOW_PBLOB$'
         ,include_user_data         => TRUE
         ,commit_for_each_blob      => TRUE
         ,log_loc                   => dz_testdata_constants.c_directory
         ,log_file                  => str_log_file
         ,open_mode                 => 'W'
         ,regenerate_node_levels    => FALSE
      );
      
      DBMS_STATS.gather_table_stats(
          USER
         ,'dz_plusflow_pblob$'
      );
      
      --------------------------------------------------------------------------
      -- Step 100
      -- Find the connected components
      --------------------------------------------------------------------------
      MDSYS.SDO_NET.FIND_CONNECTED_COMPONENTS(
          network                => 'DZ_PLUSFLOW'
         ,link_level             => 1
         ,component_table_name   => 'DZ_PLUSFLOW_COMP$'
         ,log_loc                => dz_testdata_constants.c_directory
         ,log_file               => str_log_file
         ,open_mode              => 'W'
      );
      
      DBMS_STATS.gather_table_stats(
          USER
         ,'dz_plusflow_comp$'
      );
      
      --------------------------------------------------------------------------
      -- Step 110
      -- Build the spatial indexes
      --------------------------------------------------------------------------
      add_spatial_indexes(
          p_network    => 'DZ_PLUSFLOW'
         ,p_parameters => 'TABLESPACE=' || dz_testdata_constants.c_tablespace
      );
      
      --------------------------------------------------------------------------
      -- Step 120
      -- Grant parts to public
      --------------------------------------------------------------------------
      EXECUTE IMMEDIATE
      'GRANT SELECT ON dz_plusflow_comp$ TO public';
      
      EXECUTE IMMEDIATE
      'GRANT SELECT ON dz_plusflow_link$ TO public';
      
      EXECUTE IMMEDIATE
      'GRANT SELECT ON dz_plusflow_node$ TO public';
      
      EXECUTE IMMEDIATE
      'GRANT SELECT ON dz_plusflow_part$ TO public';
      
      EXECUTE IMMEDIATE
      'GRANT SELECT ON dz_plusflow_path$ TO public';

      EXECUTE IMMEDIATE
      'GRANT SELECT ON dz_plusflow_pblob$ TO public';
      
      EXECUTE IMMEDIATE
      'GRANT SELECT ON dz_plusflow_plink$ TO public';
      
      EXECUTE IMMEDIATE
      'GRANT SELECT ON dz_plusflow_subp$ TO public';
      
      --------------------------------------------------------------------------
      -- Step 130
      -- Validate the final results
      --------------------------------------------------------------------------
      str_results := MDSYS.SDO_NET.VALIDATE_NETWORK(
          network    => 'DZ_PLUSFLOW'
         ,check_data => 'TRUE'
      );
      
      IF str_results <> 'TRUE'
      THEN
         RAISE_APPLICATION_ERROR(
             -20001
            ,'Network does not validate: ' || str_results
         );
         
      END IF;
      
   END load_plusflow_network;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   FUNCTION verify_plusflow_network
   RETURN VARCHAR
   AS
      str_results VARCHAR2(4000 Char);
      
   BEGIN
      
      -- Obviously needs some work
      RETURN 'TRUE'; 
   
   END verify_plusflow_network;
   
END dz_testdata_network;
/

