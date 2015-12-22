CREATE OR REPLACE PACKAGE BODY dz_testdata_vector
AS

   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE refresh_vector
   AS
   BEGIN
      drop_vector();
      create_vector();
      load_vector();
      
   END refresh_vector;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE drop_vector
   AS
   BEGIN
      drop_census_vector();
      drop_nhdplus_vector();
      drop_osm_vector();
      
   END drop_vector;

   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE create_vector
   AS
   BEGIN
      create_census_vector();
      create_nhdplus_vector();
      create_osm_vector();
      
   END create_vector;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE load_vector
   AS
   BEGIN
      load_census_vector();
      load_nhdplus_vector();
      load_osm_vector();
      
   END load_vector;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   FUNCTION verify_vector
   RETURN VARCHAR
   AS
      str_results VARCHAR2(4000 Char);
      
   BEGIN
      str_results := verify_census_vector();
      
      IF str_results <> 'TRUE'
      THEN
         RETURN str_results;
         
      END IF;
      
      str_results := verify_nhdplus_vector();
      
      IF str_results <> 'TRUE'
      THEN
         RETURN str_results;
         
      END IF;
      
      str_results := verify_osm_vector();
      
      RETURN str_results;

   END verify_vector;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE drop_census_vector
   AS
   BEGIN
   
      --------------------------------------------------------------------------
      -- Step 10
      -- Drop all current census vector tables
      --------------------------------------------------------------------------
      dz_testdata_util.drop_table_quietly(
          p_table_name => 'TL_2014_55059_COUNTY'
      );
      
      dz_testdata_util.drop_table_quietly(
          p_table_name => 'TL_2014_55059_COUSUB'
      );
      
      dz_testdata_util.drop_table_quietly(
          p_table_name => 'TL_2014_55059_EDGES'
      );

      dz_testdata_util.drop_table_quietly(
          p_table_name => 'TL_2014_55059_FACES'
      );
      
      dz_testdata_util.drop_table_quietly(
          p_table_name => 'TL_2014_55059_PLACE'
      );
      
      dz_testdata_util.drop_table_quietly(
          p_table_name => 'TL_2014_55059_RAILS'
      );
      
      dz_testdata_util.drop_table_quietly(
          p_table_name => 'TL_2014_55059_ROADS'
      );
      
      dz_testdata_util.drop_table_quietly(
          p_table_name => 'TL_2014_55059_TABBLOCK10'
      );
      
      dz_testdata_util.drop_table_quietly(
          p_table_name => 'TL_2014_55059_TRACT'
      );
      
      dz_testdata_util.drop_table_quietly(
          p_table_name => 'TL_2014_55059_ZCTA510'
      );
      
   END drop_census_vector;

   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE create_census_vector
   AS
      str_sql VARCHAR2(4000 Char);
      
   BEGIN
   
      --------------------------------------------------------------------------
      -- Step 10
      -- Create the county table
      --------------------------------------------------------------------------
      str_sql := 'CREATE TABLE tl_2014_55059_county( '
              || '    objectid  INTEGER NOT NULL '
              || '   ,statefp   VARCHAR2(2 Char) NOT NULL '
              || '   ,countyfp  VARCHAR2(3 Char) NOT NULL '
              || '   ,countyns  VARCHAR2(8 Char) NOT NULL '
              || '   ,geoid     VARCHAR2(5 Char) '
              || '   ,name      VARCHAR2(100 Char) NOT NULL '
              || '   ,namelsad  VARCHAR2(100 Char) NOT NULL '
              || '   ,lsad      VARCHAR2(2 Char) NOT NULL '
              || '   ,classfp   VARCHAR2(2 Char) NOT NULL '
              || '   ,mtfcc     VARCHAR2(5 Char) NOT NULL '
              || '   ,csafp     VARCHAR2(3 Char) NOT NULL '
              || '   ,cbsafp    VARCHAR2(5 Char) NOT NULL '
              || '   ,metdivfp  VARCHAR2(5 Char) NOT NULL '
              || '   ,funcstat  VARCHAR2(1 Char) NOT NULL '
              || '   ,aland     NUMBER(14) NOT NULL '
              || '   ,awater    NUMBER(14) NOT NULL '
              || '   ,intptlat  VARCHAR2(11 Char) NOT NULL '
              || '   ,intptlon  VARCHAR2(12 Char) NOT NULL '
              || '   ,shape     MDSYS.SDO_GEOMETRY '
              || '   ,se_anno_cad_data BLOB '
              || '   ,CONSTRAINT tl_2014_55059_county_pk '
              || '    PRIMARY KEY(geoid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || '   ,CONSTRAINT tl_2014_55059_county_u01 '
              || '    UNIQUE(objectid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || ') '
              || 'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
              
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'DELETE FROM user_sdo_geom_metadata a WHERE a.table_name = :p01';
      EXECUTE IMMEDIATE str_sql USING 'TL_2014_55059_COUNTY';
      COMMIT;
      
      str_sql := 'INSERT INTO user_sdo_geom_metadata VALUES(:p01,:p02,:p03,:p04)';
      EXECUTE IMMEDIATE str_sql USING
       'TL_2014_55059_COUNTY'
      ,'SHAPE'
      ,dz_testdata_util.geodetic_XY_diminfo()
      ,8265;
      COMMIT;
      
      str_sql := 'CREATE INDEX tl_2014_55059_county_spx '
              || 'ON tl_2014_55059_county(shape) '
              || 'INDEXTYPE IS MDSYS.SPATIAL_INDEX '
              || 'PARAMETERS(''TABLESPACE=' || dz_testdata_constants.c_tablespace || ''') ';
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'GRANT SELECT ON tl_2014_55059_county TO public';
      EXECUTE IMMEDIATE str_sql;
      
      --------------------------------------------------------------------------
      -- Step 20
      -- Create the cousub table
      --------------------------------------------------------------------------
      str_sql := 'CREATE TABLE tl_2014_55059_cousub('
              || '    objectid  INTEGER NOT NULL '
              || '   ,statefp   VARCHAR2(2 Char) NOT NULL '
              || '   ,countyfp  VARCHAR2(3 Char) NOT NULL '
              || '   ,cousubfp  VARCHAR2(5 Char) NOT NULL '
              || '   ,cousubns  VARCHAR2(8 Char) NOT NULL '
              || '   ,geoid     VARCHAR2(10 Char) '
              || '   ,name      VARCHAR2(100 Char) NOT NULL '
              || '   ,namelsad  VARCHAR2(100 Char) NOT NULL '
              || '   ,lsad      VARCHAR2(2 Char) NOT NULL '
              || '   ,classfp   VARCHAR2(2 Char) NOT NULL '
              || '   ,mtfcc     VARCHAR2(5 Char) NOT NULL '
              || '   ,cnectafp  VARCHAR2(3 Char) '
              || '   ,nectafp   VARCHAR2(5 Char) '
              || '   ,nctadvfp  VARCHAR2(5 Char) '
              || '   ,funcstat  VARCHAR2(1 Char) NOT NULL '
              || '   ,aland     NUMBER(14) NOT NULL '
              || '   ,awater    NUMBER(14) NOT NULL '
              || '   ,intptlat  VARCHAR2(11 Char) NOT NULL '
              || '   ,intptlon  VARCHAR2(12 Char) NOT NULL '
              || '   ,shape     MDSYS.SDO_GEOMETRY '
              || '   ,se_anno_cad_data BLOB '
              || '   ,CONSTRAINT tl_2014_55059_cousub_pk '
              || '    PRIMARY KEY(geoid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || '   ,CONSTRAINT tl_2014_55059_cousub_u01 '
              || '    UNIQUE(objectid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || ') '
              || 'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
              
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'DELETE FROM user_sdo_geom_metadata a WHERE a.table_name = :p01';
      EXECUTE IMMEDIATE str_sql USING 'TL_2014_55059_COUSUB';
      COMMIT;
      
      str_sql := 'INSERT INTO user_sdo_geom_metadata VALUES(:p01,:p02,:p03,:p04)';
      EXECUTE IMMEDIATE str_sql USING
       'TL_2014_55059_COUSUB'
      ,'SHAPE'
      ,dz_testdata_util.geodetic_XY_diminfo()
      ,8265;
      COMMIT;
      
      str_sql := 'CREATE INDEX tl_2014_55059_cousub_spx '
              || 'ON tl_2014_55059_cousub(shape) '
              || 'INDEXTYPE IS MDSYS.SPATIAL_INDEX '
              || 'PARAMETERS(''TABLESPACE=' || dz_testdata_constants.c_tablespace || ''') ';
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'GRANT SELECT ON tl_2014_55059_cousub TO public';
      EXECUTE IMMEDIATE str_sql;
      
      --------------------------------------------------------------------------
      -- Step 30
      -- Create the edges table
      --------------------------------------------------------------------------
      str_sql := 'CREATE TABLE tl_2014_55059_edges( '
              || '    objectid    INTEGER NOT NULL '
              || '   ,statefp     VARCHAR2(2 Char) NOT NULL '
              || '   ,countyfp    VARCHAR2(3 Char) NOT NULL '
              || '   ,tlid        NUMBER(10) NOT NULL '
              || '   ,tfidl       NUMBER(10) NOT NULL '
              || '   ,tfidr       NUMBER(10) NOT NULL '
              || '   ,mtfcc       VARCHAR2(5 Char) NOT NULL '
              || '   ,fullname    VARCHAR2(100 Char) '
              || '   ,smid        VARCHAR2(22 Char) '
              || '   ,lfromadd    VARCHAR2(12 Char) '
              || '   ,ltoadd      VARCHAR2(12 Char) '
              || '   ,rfromadd    VARCHAR2(12 Char) '
              || '   ,rtoadd      VARCHAR2(12 Char) '
              || '   ,zipl        VARCHAR2(5 Char) '
              || '   ,zipr        VARCHAR2(5 Char) '
              || '   ,featcat     VARCHAR2(1 Char) '
              || '   ,hydroflg    VARCHAR2(1 Char) '
              || '   ,railflg     VARCHAR2(1 Char) '
              || '   ,roadflg     VARCHAR2(1 Char) '
              || '   ,olfflg      VARCHAR2(1 Char) '
              || '   ,passflg     VARCHAR2(1 Char) '
              || '   ,divroad     VARCHAR2(1 Char) '
              || '   ,exttyp      VARCHAR2(1 Char) '
              || '   ,ttyp        VARCHAR2(1 Char) '
              || '   ,deckedroad  VARCHAR2(1 Char) '
              || '   ,artpath     VARCHAR2(1 Char) '
              || '   ,persist     VARCHAR2(1 Char) '
              || '   ,gcseflg     VARCHAR2(1 Char) '
              || '   ,offsetl     VARCHAR2(1 Char) '
              || '   ,offsetr     VARCHAR2(1 Char) '
              || '   ,tnidf       NUMBER(10) '
              || '   ,tnidt       NUMBER(10) '
              || '   ,shape       MDSYS.SDO_GEOMETRY '
              || '   ,se_anno_cad_data BLOB '
              || '   ,CONSTRAINT tl_2014_55059_edges_pk '
              || '    PRIMARY KEY(tlid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || '   ,CONSTRAINT tl_2014_55059_edges_u01 '
              || '    UNIQUE(objectid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || ') '
              || 'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
              
      EXECUTE IMMEDIATE str_sql;

      str_sql := 'DELETE FROM user_sdo_geom_metadata a WHERE a.table_name = :p01';
      EXECUTE IMMEDIATE str_sql USING 'TL_2014_55059_EDGES';
      COMMIT;
      
      str_sql := 'INSERT INTO user_sdo_geom_metadata VALUES(:p01,:p02,:p03,:p04)';
      EXECUTE IMMEDIATE str_sql USING
       'TL_2014_55059_EDGES'
      ,'SHAPE'
      ,dz_testdata_util.geodetic_XY_diminfo()
      ,8265;
      COMMIT;
      
      str_sql := 'CREATE INDEX tl_2014_55059_edges_spx '
              || 'ON tl_2014_55059_edges(shape) '
              || 'INDEXTYPE IS MDSYS.SPATIAL_INDEX '
              || 'PARAMETERS(''TABLESPACE=' || dz_testdata_constants.c_tablespace || ''') ';
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'GRANT SELECT ON tl_2014_55059_edges TO public';
      EXECUTE IMMEDIATE str_sql;
      
      --------------------------------------------------------------------------
      -- Step 40
      -- Create the faces table
      --------------------------------------------------------------------------
      str_sql := 'CREATE TABLE tl_2014_55059_faces( '
              || '    objectid    INTEGER NOT NULL '
              || '   ,tfid        NUMBER(10) NOT NULL '
              || '   ,statefp10   VARCHAR2(2 Char) NOT NULL '
              || '   ,countyfp10  VARCHAR2(3 Char) NOT NULL '
              || '   ,tractce10   VARCHAR2(6 Char) NOT NULL '
              || '   ,blkgrpce10  VARCHAR2(1 Char) NOT NULL '
              || '   ,blockce10   VARCHAR2(4 Char) NOT NULL '
              || '   ,suffix1ce   VARCHAR2(1 Char) '
              || '   ,zcta5ce10   VARCHAR2(5 Char) '
              || '   ,uace10      VARCHAR2(5 Char) '
              || '   ,pumace10    VARCHAR2(5 Char) NOT NULL '
              || '   ,statefp     VARCHAR2(2 Char) NOT NULL '
              || '   ,countyfp    VARCHAR2(3 Char) NOT NULL '
              || '   ,tractce     VARCHAR2(6 Char) NOT NULL '
              || '   ,blkgrpce    VARCHAR2(1 Char) NOT NULL '
              || '   ,cousubfp    VARCHAR2(5 Char) NOT NULL '
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
              || '   ,shape       MDSYS.SDO_GEOMETRY '
              || '   ,se_anno_cad_data BLOB '
              || '   ,CONSTRAINT tl_2014_55059_faces_pk '
              || '    PRIMARY KEY(tfid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || '   ,CONSTRAINT tl_2014_55059_faces_u01 '
              || '    UNIQUE(objectid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || ') '
              || 'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
              
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'DELETE FROM user_sdo_geom_metadata a WHERE a.table_name = :p01';
      EXECUTE IMMEDIATE str_sql USING 'TL_2014_55059_FACES';
      COMMIT;
      
      str_sql := 'INSERT INTO user_sdo_geom_metadata VALUES(:p01,:p02,:p03,:p04)';
      EXECUTE IMMEDIATE str_sql USING
       'TL_2014_55059_FACES'
      ,'SHAPE'
      ,dz_testdata_util.geodetic_XY_diminfo()
      ,8265;
      COMMIT;
      
      str_sql := 'CREATE INDEX tl_2014_55059_faces_spx '
              || 'ON tl_2014_55059_faces(shape) '
              || 'INDEXTYPE IS MDSYS.SPATIAL_INDEX '
              || 'PARAMETERS(''TABLESPACE=' || dz_testdata_constants.c_tablespace || ''') ';
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'GRANT SELECT ON tl_2014_55059_faces TO public';
      EXECUTE IMMEDIATE str_sql;
      
      --------------------------------------------------------------------------
      -- Step 50
      -- Create the place table
      --------------------------------------------------------------------------
      str_sql := 'CREATE TABLE tl_2014_55059_place( '
              || '    objectid  INTEGER NOT NULL '
              || '   ,statefp   VARCHAR2(2 Char) NOT NULL '
              || '   ,placefp   VARCHAR2(5 Char) NOT NULL '
              || '   ,placens   VARCHAR2(8 Char) NOT NULL '
              || '   ,geoid     VARCHAR2(7 Char) '
              || '   ,name      VARCHAR2(100 Char) NOT NULL '
              || '   ,namelsad  VARCHAR2(100 Char) NOT NULL '
              || '   ,lsad      VARCHAR2(2 Char) NOT NULL '
              || '   ,classfp   VARCHAR2(2 Char) NOT NULL '
              || '   ,pcicbsa   VARCHAR2(1 Char) NOT NULL '
              || '   ,pcinecta  VARCHAR2(1 Char) NOT NULL '
              || '   ,mtfcc     VARCHAR2(5 Char) NOT NULL '
              || '   ,funcstat  VARCHAR2(1 Char) NOT NULL '
              || '   ,aland     NUMBER(14) NOT NULL '
              || '   ,awater    NUMBER(14) NOT NULL '
              || '   ,intptlat  VARCHAR2(11 Char) NOT NULL '
              || '   ,intptlon  VARCHAR2(12 Char) NOT NULL '
              || '   ,shape     MDSYS.SDO_GEOMETRY '
              || '   ,se_anno_cad_data BLOB '
              || '   ,CONSTRAINT tl_2014_55059_place_pk '
              || '    PRIMARY KEY(geoid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || '   ,CONSTRAINT tl_2014_55059_place_u01 '
              || '    UNIQUE(objectid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || ') '
              || 'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
              
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'DELETE FROM user_sdo_geom_metadata a WHERE a.table_name = :p01';
      EXECUTE IMMEDIATE str_sql USING 'TL_2014_55059_PLACE';
      COMMIT;
      
      str_sql := 'INSERT INTO user_sdo_geom_metadata VALUES(:p01,:p02,:p03,:p04)';
      EXECUTE IMMEDIATE str_sql USING
       'TL_2014_55059_PLACE'
      ,'SHAPE'
      ,dz_testdata_util.geodetic_XY_diminfo()
      ,8265;
      COMMIT;
      
      str_sql := 'CREATE INDEX tl_2014_55059_place_spx '
              || 'ON tl_2014_55059_place(shape) '
              || 'INDEXTYPE IS MDSYS.SPATIAL_INDEX '
              || 'PARAMETERS(''TABLESPACE=' || dz_testdata_constants.c_tablespace || ''') ';
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'GRANT SELECT ON tl_2014_55059_place TO public';
      EXECUTE IMMEDIATE str_sql;
      
      --------------------------------------------------------------------------
      -- Step 60
      -- Create the rails table
      --------------------------------------------------------------------------
      str_sql := 'CREATE TABLE tl_2014_55059_rails( '
              || '    objectid  INTEGER NOT NULL '
              || '   ,linearid  VARCHAR2(22 Char) NOT NULL '
              || '   ,fullname  VARCHAR2(100 Char) '
              || '   ,mtfcc     VARCHAR2(5 Char) NOT NULL '
              || '   ,shape     MDSYS.SDO_GEOMETRY '
              || '   ,se_anno_cad_data BLOB '
              || '   ,CONSTRAINT tl_2014_55059_rails_pk '
              || '    PRIMARY KEY(linearid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || '   ,CONSTRAINT tl_2014_55059_rails_u01 '
              || '    UNIQUE(objectid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || ') '
              || 'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
              
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'DELETE FROM user_sdo_geom_metadata a WHERE a.table_name = :p01';
      EXECUTE IMMEDIATE str_sql USING 'TL_2014_55059_RAILS';
      COMMIT;
      
      str_sql := 'INSERT INTO user_sdo_geom_metadata VALUES(:p01,:p02,:p03,:p04)';
      EXECUTE IMMEDIATE str_sql USING
       'TL_2014_55059_RAILS'
      ,'SHAPE'
      ,dz_testdata_util.geodetic_XY_diminfo()
      ,8265;
      COMMIT;
      
      str_sql := 'CREATE INDEX tl_2014_55059_rails_spx '
              || 'ON tl_2014_55059_rails(shape) '
              || 'INDEXTYPE IS MDSYS.SPATIAL_INDEX ';
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'GRANT SELECT ON tl_2014_55059_rails TO public';
      EXECUTE IMMEDIATE str_sql;
      
      --------------------------------------------------------------------------
      -- Step 70
      -- Create the roads table
      --------------------------------------------------------------------------
      str_sql := 'CREATE TABLE tl_2014_55059_roads( '
              || '    objectid  INTEGER NOT NULL '
              || '   ,linearid  VARCHAR2(22 Char) NOT NULL '
              || '   ,fullname  VARCHAR2(100 Char) '
              || '   ,rttyp     VARCHAR2(1 Char) '
              || '   ,mtfcc     VARCHAR2(5 Char) NOT NULL '
              || '   ,shape     MDSYS.SDO_GEOMETRY '
              || '   ,se_anno_cad_data BLOB '
              || '   ,CONSTRAINT tl_2014_55059_roads_pk '
              || '    PRIMARY KEY(linearid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || '   ,CONSTRAINT tl_2014_55059_roads_u01 '
              || '    UNIQUE(objectid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || ') '
              || 'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
              
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'DELETE FROM user_sdo_geom_metadata a WHERE a.table_name = :p01';
      EXECUTE IMMEDIATE str_sql USING 'TL_2014_55059_ROADS';
      COMMIT;
      
      str_sql := 'INSERT INTO user_sdo_geom_metadata VALUES(:p01,:p02,:p03,:p04)';
      EXECUTE IMMEDIATE str_sql USING
       'TL_2014_55059_ROADS'
      ,'SHAPE'
      ,dz_testdata_util.geodetic_XY_diminfo()
      ,8265;
      COMMIT;
      
      str_sql := 'CREATE INDEX tl_2014_55059_roads_spx '
              || 'ON tl_2014_55059_roads(shape) '
              || 'INDEXTYPE IS MDSYS.SPATIAL_INDEX '
              || 'PARAMETERS(''TABLESPACE=' || dz_testdata_constants.c_tablespace || ''') ';
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'GRANT SELECT ON tl_2014_55059_roads TO public';
      EXECUTE IMMEDIATE str_sql;
      
      --------------------------------------------------------------------------
      -- Step 80
      -- Create the tabblock table
      --------------------------------------------------------------------------
      str_sql := 'CREATE TABLE tl_2014_55059_tabblock10( '
              || '    objectid    INTEGER NOT NULL '
              || '   ,statefp10   VARCHAR2(2 Char) '
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
              || '   ,shape       MDSYS.SDO_GEOMETRY '
              || '   ,se_anno_cad_data BLOB '
              || '   ,CONSTRAINT tl_2014_55059_tabblock10_pk '
              || '    PRIMARY KEY(geoid10) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || '   ,CONSTRAINT tl_2014_55059_tabblock10_u01 '
              || '    UNIQUE(objectid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || ') '
              || 'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
              
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'DELETE FROM user_sdo_geom_metadata a WHERE a.table_name = :p01';
      EXECUTE IMMEDIATE str_sql USING 'TL_2014_55059_TABBLOCK10';
      COMMIT;
      
      str_sql := 'INSERT INTO user_sdo_geom_metadata VALUES(:p01,:p02,:p03,:p04)';
      EXECUTE IMMEDIATE str_sql USING
       'TL_2014_55059_TABBLOCK10'
      ,'SHAPE'
      ,dz_testdata_util.geodetic_XY_diminfo()
      ,8265;
      COMMIT;
      
      str_sql := 'CREATE INDEX tl_2014_55059_tabblock10_spx '
              || 'ON tl_2014_55059_tabblock10(shape) '
              || 'INDEXTYPE IS MDSYS.SPATIAL_INDEX '
              || 'PARAMETERS(''TABLESPACE=' || dz_testdata_constants.c_tablespace || ''') ';
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'GRANT SELECT ON tl_2014_55059_tabblock10 TO public';
      EXECUTE IMMEDIATE str_sql;
      
      --------------------------------------------------------------------------
      -- Step 90
      -- Create the tract table
      --------------------------------------------------------------------------
      str_sql := 'CREATE TABLE tl_2014_55059_tract( '
              || '    objectid  INTEGER NOT NULL '
              || '   ,statefp   VARCHAR2(2 Char) '
              || '   ,countyfp  VARCHAR2(3 Char) '
              || '   ,tractce   VARCHAR2(6 Char) '
              || '   ,geoid     VARCHAR2(11 Char) '
              || '   ,name      VARCHAR2(7 Char) '
              || '   ,namelsad  VARCHAR2(20 Char) '
              || '   ,mtfcc     VARCHAR2(5 Char) '
              || '   ,funcstat  VARCHAR2(1 Char) '
              || '   ,aland     NUMBER(14) '
              || '   ,awater    NUMBER(14) '
              || '   ,intptlat  VARCHAR2(11 Char) '
              || '   ,intptlon  VARCHAR2(12 Char) '
              || '   ,shape     MDSYS.SDO_GEOMETRY '
              || '   ,se_anno_cad_data BLOB '
              || '   ,CONSTRAINT tl_2014_55059_tract_pk '
              || '    PRIMARY KEY(geoid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || '   ,CONSTRAINT tl_2014_55059_tract_u01 '
              || '    UNIQUE(objectid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || ') '
              || 'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
              
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'DELETE FROM user_sdo_geom_metadata a WHERE a.table_name = :p01';
      EXECUTE IMMEDIATE str_sql USING 'TL_2014_55059_TRACT';
      COMMIT;
      
      str_sql := 'INSERT INTO user_sdo_geom_metadata VALUES(:p01,:p02,:p03,:p04)';
      EXECUTE IMMEDIATE str_sql USING
       'TL_2014_55059_TRACT'
      ,'SHAPE'
      ,dz_testdata_util.geodetic_XY_diminfo()
      ,8265;
      COMMIT;
      
      str_sql := 'CREATE INDEX tl_2014_55059_tract_spx '
              || 'ON tl_2014_55059_tract(shape) '
              || 'INDEXTYPE IS MDSYS.SPATIAL_INDEX '
              || 'PARAMETERS(''TABLESPACE=' || dz_testdata_constants.c_tablespace || ''') ';
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'GRANT SELECT ON tl_2014_55059_tract TO public';
      EXECUTE IMMEDIATE str_sql;
      
      --------------------------------------------------------------------------
      -- Step 100
      -- Create the zcta5 table
      --------------------------------------------------------------------------
      str_sql := 'CREATE TABLE tl_2014_55059_zcta510( '
              || '    objectid    INTEGER NOT NULL '
              || '   ,zcta5ce10   VARCHAR2(5 Char) '
              || '   ,geoid10     VARCHAR2(5 Char) '
              || '   ,classfp10   VARCHAR2(2 Char) '
              || '   ,mtfcc10     VARCHAR2(5 Char) '
              || '   ,funcstat10  VARCHAR2(1 Char) '
              || '   ,aland10     NUMBER(14) '
              || '   ,awater10    NUMBER(14) '
              || '   ,intptlat10  VARCHAR2(11 Char) '
              || '   ,intptlon10  VARCHAR2(12 Char) '
              || '   ,shape       MDSYS.SDO_GEOMETRY '
              || '   ,se_anno_cad_data BLOB '
              || '   ,CONSTRAINT tl_2014_55059_zcta510_pk '
              || '    PRIMARY KEY(geoid10) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || '   ,CONSTRAINT tl_2014_55059_zcta510_u01 '
              || '    UNIQUE(objectid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || ') '
              || 'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
              
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'DELETE FROM user_sdo_geom_metadata a WHERE a.table_name = :p01';
      EXECUTE IMMEDIATE str_sql USING 'TL_2014_55059_ZCTA510';
      COMMIT;
      
      str_sql := 'INSERT INTO user_sdo_geom_metadata VALUES(:p01,:p02,:p03,:p04)';
      EXECUTE IMMEDIATE str_sql USING
       'TL_2014_55059_ZCTA510'
      ,'SHAPE'
      ,dz_testdata_util.geodetic_XY_diminfo()
      ,8265;
      COMMIT;
      
      str_sql := 'CREATE INDEX tl_2014_55059_zcta510_spx '
              || 'ON tl_2014_55059_zcta510(shape) '
              || 'INDEXTYPE IS MDSYS.SPATIAL_INDEX '
              || 'PARAMETERS(''TABLESPACE=' || dz_testdata_constants.c_tablespace || ''') ';
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'GRANT SELECT ON tl_2014_55059_zcta510 TO public';
      EXECUTE IMMEDIATE str_sql;
  
   END create_census_vector;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE load_census_vector
   AS
   BEGIN

      --------------------------------------------------------------------------
      -- Step 10
      -- Load the county table
      --------------------------------------------------------------------------
      EXECUTE IMMEDIATE 'BEGIN load_tl_2014_55059_county(); END;';
      COMMIT;
      
      --------------------------------------------------------------------------
      -- Step 20
      -- Load the cousub table
      --------------------------------------------------------------------------
      EXECUTE IMMEDIATE 'BEGIN load_tl_2014_55059_cousub(); END;';
      COMMIT;
      
      --------------------------------------------------------------------------
      -- Step 30
      -- Load the edges table
      --------------------------------------------------------------------------
      EXECUTE IMMEDIATE 'BEGIN load01_tl_2014_55059_edges(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load02_tl_2014_55059_edges(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load03_tl_2014_55059_edges(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load04_tl_2014_55059_edges(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load05_tl_2014_55059_edges(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load06_tl_2014_55059_edges(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load07_tl_2014_55059_edges(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load08_tl_2014_55059_edges(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load09_tl_2014_55059_edges(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load10_tl_2014_55059_edges(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load11_tl_2014_55059_edges(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load12_tl_2014_55059_edges(); END;';
      COMMIT;
      
      --------------------------------------------------------------------------
      -- Step 40
      -- Load the faces table
      --------------------------------------------------------------------------
      EXECUTE IMMEDIATE 'BEGIN load01_tl_2014_55059_faces(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load02_tl_2014_55059_faces(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load03_tl_2014_55059_faces(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load04_tl_2014_55059_faces(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load05_tl_2014_55059_faces(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load06_tl_2014_55059_faces(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load07_tl_2014_55059_faces(); END;';
      COMMIT;
      
      --------------------------------------------------------------------------
      -- Step 50
      -- Load the place table
      --------------------------------------------------------------------------
      EXECUTE IMMEDIATE 'BEGIN load_tl_2014_55059_place(); END;';
      COMMIT;
      
      --------------------------------------------------------------------------
      -- Step 60
      -- Load the rails table
      --------------------------------------------------------------------------
      EXECUTE IMMEDIATE 'BEGIN load_tl_2014_55059_rails(); END;';
      COMMIT;
      
      --------------------------------------------------------------------------
      -- Step 70
      -- Load the roads table
      --------------------------------------------------------------------------
      EXECUTE IMMEDIATE 'BEGIN load01_tl_2014_55059_roads(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load02_tl_2014_55059_roads(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load03_tl_2014_55059_roads(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load04_tl_2014_55059_roads(); END;';
      COMMIT;
      
      --------------------------------------------------------------------------
      -- Step 80
      -- Load the tabblock10 table
      --------------------------------------------------------------------------
      EXECUTE IMMEDIATE 'BEGIN load01_tl_2014_55059_tabblk(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load02_tl_2014_55059_tabblk(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load03_tl_2014_55059_tabblk(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load04_tl_2014_55059_tabblk(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load05_tl_2014_55059_tabblk(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load06_tl_2014_55059_tabblk(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load07_tl_2014_55059_tabblk(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load08_tl_2014_55059_tabblk(); END;';
      COMMIT;
      
      --------------------------------------------------------------------------
      -- Step 90
      -- Load the tract table
      --------------------------------------------------------------------------
      EXECUTE IMMEDIATE 'BEGIN load_tl_2014_55059_tract(); END;';
      COMMIT;
      
      --------------------------------------------------------------------------
      -- Step 90
      -- Load the zcta510 table
      --------------------------------------------------------------------------
      EXECUTE IMMEDIATE 'BEGIN load_tl_2014_55059_zcta510(); END;';
      COMMIT;
      
   END load_census_vector;

   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   FUNCTION verify_census_vector
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
          'TL_2014_55059_COUNTY'
         ,'TL_2014_55059_COUSUB'
         ,'TL_2014_55059_EDGES'
         ,'TL_2014_55059_FACES'
         ,'TL_2014_55059_PLACE'
         ,'TL_2014_55059_RAILS'
         ,'TL_2014_55059_ROADS'
         ,'TL_2014_55059_TABBLOCK10'
         ,'TL_2014_55059_TRACT'
         ,'TL_2014_55059_ZCTA510'
      );
      
      IF num_count <> 10
      THEN
         RETURN 'FALSE';
         
      END IF;
      
      RETURN 'TRUE'; 
   
   END verify_census_vector;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE drop_nhdplus_vector
   AS
   BEGIN
   
      --------------------------------------------------------------------------
      -- Step 10
      -- Drop all current census vector tables
      --------------------------------------------------------------------------
      dz_testdata_util.drop_table_quietly(
          p_table_name => 'NHDPLUS21_CATCHMENT_55059'
      );
      
      dz_testdata_util.drop_table_quietly(
          p_table_name => 'NHDPLUS21_NHDFLOWLINE_55059'
      );
      
      dz_testdata_util.drop_table_quietly(
          p_table_name => 'NHDPLUS21_NHDWATERBODY_55059'
      );
      
      dz_testdata_util.drop_table_quietly(
          p_table_name => 'NHDPLUS21_PLUSFLOW_55059'
      );
      
      dz_testdata_util.drop_table_quietly(
          p_table_name => 'NHDPLUS21_PLUSFLOWLINEVA_55059'
      );
      
   END drop_nhdplus_vector;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE create_nhdplus_vector
   AS
      str_sql VARCHAR2(4000 Char);
      
   BEGIN
   
      --------------------------------------------------------------------------
      -- Step 10
      -- Create the catchment table
      --------------------------------------------------------------------------
      str_sql := 'CREATE TABLE nhdplus21_catchment_55059( '
              || '    objectid              INTEGER NOT NULL '
              || '   ,featureid             INTEGER '
              || '   ,sourcefc              VARCHAR2(20 Char) '
              || '   ,gridcode              INTEGER '
              || '   ,areasqkm              NUMBER '
              || '   ,wbd_huc12             VARCHAR2(12 Char) '
              || '   ,wbd_huc12_percent     NUMBER '
              || '   ,shape                 MDSYS.SDO_GEOMETRY '
              || '   ,se_anno_cad_data      BLOB '
              || '   ,CONSTRAINT nhdplus21_catchment_55059_pk '
              || '    PRIMARY KEY(featureid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || '   ,CONSTRAINT nhdplus21_catchment_55059_u01 '
              || '    UNIQUE(objectid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || ') '
              || 'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
              
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'DELETE FROM user_sdo_geom_metadata a WHERE a.table_name = :p01';
      EXECUTE IMMEDIATE str_sql USING 'NHDPLUS21_CATCHMENT_55059';
      COMMIT;
      
      str_sql := 'INSERT INTO user_sdo_geom_metadata VALUES(:p01,:p02,:p03,:p04)';
      EXECUTE IMMEDIATE str_sql USING
       'NHDPLUS21_CATCHMENT_55059'
      ,'SHAPE'
      ,dz_testdata_util.geodetic_XY_diminfo()
      ,8265;
      COMMIT;
      
      str_sql := 'CREATE INDEX nhdplus21_catchment_55059_spx '
              || 'ON nhdplus21_catchment_55059(shape) '
              || 'INDEXTYPE IS MDSYS.SPATIAL_INDEX '
              || 'PARAMETERS(''TABLESPACE=' || dz_testdata_constants.c_tablespace || ''') ';
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'GRANT SELECT ON nhdplus21_catchment_55059 TO public';
      EXECUTE IMMEDIATE str_sql;
      
      --------------------------------------------------------------------------
      -- Step 10
      -- Create the flowline table
      --------------------------------------------------------------------------
      str_sql := 'CREATE TABLE nhdplus21_nhdflowline_55059( '
              || '    objectid                     INTEGER NOT NULL '
              || '   ,permanent_identifier         VARCHAR2(40 Char) '
              || '   ,nhdplus_comid                INTEGER NOT NULL '
              || '   ,fdate                        DATE '
              || '   ,resolution                   INTEGER '
              || '   ,gnis_id                      VARCHAR2(10 Char) '
              || '   ,gnis_name                    VARCHAR2(65 Char) '
              || '   ,lengthkm                     NUMBER '
              || '   ,reachcode                    VARCHAR2(14 Char) '
              || '   ,flowdir                      INTEGER '
              || '   ,wbarea_permanent_identifier  VARCHAR2(40 Char) '
              || '   ,wbarea_nhdplus_comid         INTEGER '
              || '   ,ftype                        INTEGER '
              || '   ,fcode                        INTEGER '
              || '   ,wbd_huc12                    VARCHAR2(12 Char) '
              || '   ,wbd_huc12_percent            NUMBER '
              || '   ,reachsmdate                  DATE '
              || '   ,fmeasure                     NUMBER '
              || '   ,tmeasure                     NUMBER '
              || '   ,shape                        MDSYS.SDO_GEOMETRY '
              || '   ,se_anno_cad_data             BLOB '
              || '   ,CONSTRAINT nhdplus21_nhdflowline_55059_pk '
              || '    PRIMARY KEY(permanent_identifier) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || '   ,CONSTRAINT nhdplus21_nhdflowline_55059u01 '
              || '    UNIQUE(objectid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || '   ,CONSTRAINT nhdplus21_nhdflowline_55059u02 '
              || '    UNIQUE(nhdplus_comid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || ') '
              || 'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
              
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'DELETE FROM user_sdo_geom_metadata a WHERE a.table_name = :p01';
      EXECUTE IMMEDIATE str_sql USING 'NHDPLUS21_NHDFLOWLINE_55059';
      COMMIT;
      
      str_sql := 'INSERT INTO user_sdo_geom_metadata VALUES(:p01,:p02,:p03,:p04)';
      EXECUTE IMMEDIATE str_sql USING
       'NHDPLUS21_NHDFLOWLINE_55059'
      ,'SHAPE'
      ,dz_testdata_util.geodetic_XYM_diminfo()
      ,8265;
      COMMIT;
      
      str_sql := 'CREATE INDEX nhdplus21_nhdflowline_55059spx '
              || 'ON nhdplus21_nhdflowline_55059(shape) '
              || 'INDEXTYPE IS MDSYS.SPATIAL_INDEX '
              || 'PARAMETERS(''TABLESPACE=' || dz_testdata_constants.c_tablespace || ''') ';
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'GRANT SELECT ON nhdplus21_nhdflowline_55059 TO public';
      EXECUTE IMMEDIATE str_sql;
      
      --------------------------------------------------------------------------
      -- Step 30
      -- Create the waterbody table
      --------------------------------------------------------------------------
      str_sql := 'CREATE TABLE nhdplus21_nhdwaterbody_55059( '
              || '    objectid              INTEGER NOT NULL '
              || '   ,permanent_identifier  VARCHAR2(40 Char) '
              || '   ,nhdplus_comid         INTEGER NOT NULL '
              || '   ,fdate                 DATE '
              || '   ,resolution            INTEGER '
              || '   ,gnis_id               VARCHAR2(10 Char) '
              || '   ,gnis_name             VARCHAR2(65 Char) '
              || '   ,areasqkm              NUMBER '
              || '   ,elevation             NUMBER '
              || '   ,reachcode             VARCHAR2(14 Char) '
              || '   ,ftype                 INTEGER '
              || '   ,fcode                 INTEGER '
              || '   ,wbd_huc12             VARCHAR2(12 Char) '
              || '   ,wbd_huc12_percent     NUMBER '
              || '   ,reachsmdate           DATE '
              || '   ,nhdreach_cac          NUMBER '
              || '   ,shape                 MDSYS.SDO_GEOMETRY '
              || '   ,se_anno_cad_data      BLOB '
              || '   ,CONSTRAINT nhdplus21_nhdwaterbody_55059pk '
              || '    PRIMARY KEY(permanent_identifier) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || '   ,CONSTRAINT nhdplus21_nhdwaterbody_550_u01 '
              || '    UNIQUE(objectid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || '   ,CONSTRAINT nhdplus21_nhdwaterbody_550_u02 '
              || '    UNIQUE(nhdplus_comid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || ') '
              || 'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
              
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'DELETE FROM user_sdo_geom_metadata a WHERE a.table_name = :p01';
      EXECUTE IMMEDIATE str_sql USING 'NHDPLUS21_NHDWATERBODY_55059';
      COMMIT;
      
      str_sql := 'INSERT INTO user_sdo_geom_metadata VALUES(:p01,:p02,:p03,:p04)';
      EXECUTE IMMEDIATE str_sql USING
       'NHDPLUS21_NHDWATERBODY_55059'
      ,'SHAPE'
      ,dz_testdata_util.geodetic_XY_diminfo()
      ,8265;
      COMMIT;
      
      str_sql := 'CREATE INDEX nhdplus21_nhdwaterbody_5505spx '
              || 'ON nhdplus21_nhdwaterbody_55059(shape) '
              || 'INDEXTYPE IS MDSYS.SPATIAL_INDEX '
              || 'PARAMETERS(''TABLESPACE=' || dz_testdata_constants.c_tablespace || ''') ';
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'GRANT SELECT ON nhdplus21_nhdwaterbody_55059 TO public';
      EXECUTE IMMEDIATE str_sql;
      
      --------------------------------------------------------------------------
      -- Step 40
      -- Create the plusflow attribute table
      --------------------------------------------------------------------------
      str_sql := 'CREATE TABLE nhdplus21_plusflow_55059( '
              || '    objectid         INTEGER NOT NULL '
              || '   ,fromcomid        INTEGER '
              || '   ,fromhydroseq     INTEGER NOT NULL '
              || '   ,fromlevelpathid  INTEGER '
              || '   ,tocomid          INTEGER '
              || '   ,tohydroseq       INTEGER NOT NULL '
              || '   ,tolevelpathid    INTEGER '
              || '   ,nodenumber       INTEGER '
              || '   ,deltalevel       INTEGER '
              || '   ,direction        INTEGER '
              || '   ,gapdistkm        NUMBER '
              || '   ,hasgeo           VARCHAR2(1 Char) '
              || '   ,totdasqkm        NUMBER '
              || '   ,divdasqkm        NUMBER '
              || '   ,CONSTRAINT nhdplus21_plusflow_55059_pk '
              || '    PRIMARY KEY(fromcomid,tocomid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || '   ,CONSTRAINT nhdplus21_plusflow_55059_U01 '
              || '    UNIQUE(objectid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || '   ,CONSTRAINT nhdplus21_plusflow_55059_U02 '
              || '    UNIQUE(fromhydroseq,tohydroseq) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || ') '
              || 'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
              
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'GRANT SELECT ON nhdplus21_plusflow_55059 TO public';
      EXECUTE IMMEDIATE str_sql;
      
      --------------------------------------------------------------------------
      -- Step 50
      -- Create the plusflowlinevaa attribute table
      --------------------------------------------------------------------------
      str_sql := 'CREATE TABLE nhdplus21_plusflowlineva_55059( '
              || '    objectid              INTEGER NOT NULL '
              || '   ,comid                 INTEGER '
              || '   ,fdate                 DATE NOT NULL '
              || '   ,streamlevel           INTEGER '
              || '   ,streamorder           INTEGER '
              || '   ,streamcalculator      INTEGER '
              || '   ,fromnode              INTEGER NOT NULL '
              || '   ,tonode                INTEGER NOT NULL '
              || '   ,hydroseq              INTEGER NOT NULL '
              || '   ,levelpathid           INTEGER NOT NULL '
              || '   ,pathlength            NUMBER '
              || '   ,terminalpathid        INTEGER NOT NULL '
              || '   ,arbolatesum           NUMBER '
              || '   ,divergence            INTEGER '
              || '   ,startflag             INTEGER '
              || '   ,terminalflag          INTEGER '
              || '   ,dnlevel               INTEGER '
              || '   ,thinnercode           INTEGER '
              || '   ,uplevelpathid         INTEGER NOT NULL '
              || '   ,uphydroseq            INTEGER NOT NULL '
              || '   ,dnlevelpathid         INTEGER NOT NULL '
              || '   ,dnminorhyd            INTEGER NOT NULL '
              || '   ,dndraincount          INTEGER NOT NULL '
              || '   ,dnhydroseq            INTEGER NOT NULL '
              || '   ,frommeas              NUMBER NOT NULL '
              || '   ,tomeas                NUMBER NOT NULL '
              || '   ,reachcode             VARCHAR2(14 Char) NOT NULL '
              || '   ,lengthkm              NUMBER NOT NULL '
              || '   ,fcode                 INTEGER '
              || '   ,rtndiv                INTEGER '
              || '   ,outdiv                INTEGER '
              || '   ,diveffect             INTEGER '
              || '   ,vpuin                 INTEGER '
              || '   ,vpuout                INTEGER '
              || '   ,travtime              NUMBER '
              || '   ,pathtime              NUMBER '
              || '   ,areasqkm              NUMBER '
              || '   ,totdasqkm             NUMBER '
              || '   ,divdasqkm             NUMBER '
              || '   ,reachsmdate           DATE NOT NULL '
              || '   ,fmeasure              NUMBER NOT NULL '
              || '   ,tmeasure              NUMBER NOT NULL '
              || '   ,CONSTRAINT nhdplus21_plusflowlineva_55_pk '
              || '    PRIMARY KEY(comid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || '   ,CONSTRAINT nhdplus21_plusflowlineva_5_u01 '
              || '    UNIQUE(objectid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || '   ,CONSTRAINT nhdplus21_plusflowlineva_5_u02 '
              || '    UNIQUE(hydroseq) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || ') '
              || 'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
              
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'GRANT SELECT ON nhdplus21_plusflowlineva_55059 TO public';
      EXECUTE IMMEDIATE str_sql;
   
   END create_nhdplus_vector;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE load_nhdplus_vector
   AS
   BEGIN
   
      --------------------------------------------------------------------------
      -- Step 10
      -- Load the catchment table
      --------------------------------------------------------------------------
      EXECUTE IMMEDIATE 'BEGIN load01_np21_catchment_55059(); END;';
      COMMIT;
      EXECUTE IMMEDIATE 'BEGIN load02_np21_catchment_55059(); END;';
      COMMIT;
      
      --------------------------------------------------------------------------
      -- Step 20
      -- Load the flowline table
      --------------------------------------------------------------------------
      EXECUTE IMMEDIATE 'BEGIN load_np21_flowline_55059(); END;';
      COMMIT;
      
      --------------------------------------------------------------------------
      -- Step 30
      -- Load the waterbody table
      --------------------------------------------------------------------------
      EXECUTE IMMEDIATE 'BEGIN load_np21_waterbody_55059(); END;';
      COMMIT;
      
      --------------------------------------------------------------------------
      -- Step 40
      -- Load the plusflow table
      --------------------------------------------------------------------------
      EXECUTE IMMEDIATE 'BEGIN load_np21_plusflow_55059(); END;';
      COMMIT;
      
      --------------------------------------------------------------------------
      -- Step 50
      -- Load the plusflowlinevaa table
      --------------------------------------------------------------------------
      EXECUTE IMMEDIATE 'BEGIN load_np21_plusflowlineva_55059(); END;';
      COMMIT;
      
   END load_nhdplus_vector;

   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   FUNCTION verify_nhdplus_vector
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
          'NHDPLUS21_CATCHMENT_55059'
         ,'NHDPLUS21_NHDFLOWLINE_55059'
         ,'NHDPLUS21_NHDWATERBODY_55059'
         ,'NHDPLUS21_PLUSFLOW_55059'
         ,'NHDPLUS21_PLUSFLOWLINEVA_55059'
      );
      
      IF num_count <> 5
      THEN
         RETURN 'FALSE';
         
      END IF;
      
      RETURN 'TRUE'; 
   
   END verify_nhdplus_vector;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE drop_osm_vector
   AS
   BEGIN
   
      --------------------------------------------------------------------------
      -- Step 10
      -- Drop all current census vector tables
      --------------------------------------------------------------------------
      dz_testdata_util.drop_table_quietly(
          p_table_name => 'OSM_KENOSHA_POI'
      );
      
   END drop_osm_vector;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE create_osm_vector
   AS
      str_sql VARCHAR2(4000 Char);
      
   BEGIN
       
      --------------------------------------------------------------------------
      -- Step 30
      -- Create the poi table
      --------------------------------------------------------------------------
      str_sql := 'CREATE TABLE osm_kenosha_poi( '
              || '    objectid                INTEGER NOT NULL '
              || '   ,osm_id                  VARCHAR2(255 Char) '
              || '   ,amenity                 VARCHAR2(255 Char) '
              || '   ,created_by              VARCHAR2(255 Char) '
              || '   ,landuse                 VARCHAR2(255 Char) '
              || '   ,osm_name                VARCHAR2(255 Char) '
              || '   ,building                VARCHAR2(255 Char) '
              || '   ,cuisine                 VARCHAR2(255 Char) '
              || '   ,parking                 VARCHAR2(255 Char) '
              || '   ,addr_state              VARCHAR2(255 Char) '
              || '   ,ele                     VARCHAR2(255 Char) '
              || '   ,gnis_county_name        VARCHAR2(255 Char) '
              || '   ,gnis_feature_id         VARCHAR2(255 Char) '
              || '   ,gnis_import_uuid        VARCHAR2(255 Char) '
              || '   ,gnis_reviewed           VARCHAR2(255 Char) '
              || '   ,osm_source              VARCHAR2(255 Char) '
              || '   ,shop                    VARCHAR2(255 Char) '
              || '   ,addr_housenumber        VARCHAR2(255 Char) '
              || '   ,addr_street             VARCHAR2(255 Char) '
              || '   ,osm_area                VARCHAR2(255 Char) '
              || '   ,osm_operator            VARCHAR2(255 Char) '
              || '   ,addr_full               VARCHAR2(255 Char) '
              || '   ,car_wash                VARCHAR2(255 Char) '
              || '   ,addr_city               VARCHAR2(255 Char) '
              || '   ,addr_postcode           VARCHAR2(255 Char) '
              || '   ,website                 VARCHAR2(255 Char) '
              || '   ,capacity                VARCHAR2(255 Char) '
              || '   ,opening_hours           VARCHAR2(255 Char) '
              || '   ,recycling_garden_waste  VARCHAR2(255 Char) '
              || '   ,recycling_type          VARCHAR2(255 Char) '
              || '   ,osm_access              VARCHAR2(255 Char) '
              || '   ,emergency               VARCHAR2(255 Char) '
              || '   ,denomination            VARCHAR2(255 Char) '
              || '   ,religion                VARCHAR2(255 Char) '
              || '   ,drive_in                VARCHAR2(255 Char) '
              || '   ,addr_country            VARCHAR2(255 Char) '
              || '   ,supervised              VARCHAR2(255 Char) '
              || '   ,fee                     VARCHAR2(255 Char) '
              || '   ,phone                   VARCHAR2(255 Char) '
              || '   ,smoking                 VARCHAR2(255 Char) '
              || '   ,gnis_county_id          VARCHAR2(255 Char) '
              || '   ,gnis_created            VARCHAR2(255 Char) '
              || '   ,gnis_state_id           VARCHAR2(255 Char) '
              || '   ,wheelchair              VARCHAR2(255 Char) '
              || '   ,addr_housename          VARCHAR2(255 Char) '
              || '   ,fixme                   VARCHAR2(255 Char) '
              || '   ,note                    VARCHAR2(255 Char) '
              || '   ,wifi                    VARCHAR2(255 Char) '
              || '   ,park_ride               VARCHAR2(255 Char) '
              || '   ,addr                    VARCHAR2(255 Char) '
              || '   ,contact_phone           VARCHAR2(255 Char) '
              || '   ,contact_website         VARCHAR2(255 Char) '
              || '   ,designation             VARCHAR2(255 Char) '
              || '   ,toilets_disposal        VARCHAR2(255 Char) '
              || '   ,shape                   MDSYS.SDO_GEOMETRY '
              || '   ,se_anno_cad_data        BLOB '
              || '   ,CONSTRAINT osm_kenosha_poi_pk '
              || '    PRIMARY KEY(osm_id) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || '   ,CONSTRAINT osm_kenosha_poi_u01 '
              || '    UNIQUE(objectid) '
              || '    USING INDEX TABLESPACE ' || dz_testdata_constants.c_tablespace || ' '
              || '    ENABLE VALIDATE '
              || ') '
              || 'TABLESPACE ' || dz_testdata_constants.c_tablespace || ' ';
              
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'DELETE FROM user_sdo_geom_metadata a WHERE a.table_name = :p01';
      EXECUTE IMMEDIATE str_sql USING 'OSM_KENOSHA_POI';
      COMMIT;
      
      str_sql := 'INSERT INTO user_sdo_geom_metadata VALUES(:p01,:p02,:p03,:p04)';
      EXECUTE IMMEDIATE str_sql USING
       'OSM_KENOSHA_POI'
      ,'SHAPE'
      ,dz_testdata_util.geodetic_XY_diminfo()
      ,8265;
      COMMIT;
      
      str_sql := 'CREATE INDEX osm_kenosha_poi_spx '
              || 'ON osm_kenosha_poi(shape) '
              || 'INDEXTYPE IS MDSYS.SPATIAL_INDEX '
              || 'PARAMETERS(''TABLESPACE=' || dz_testdata_constants.c_tablespace || ''') ';
      EXECUTE IMMEDIATE str_sql;
      
      str_sql := 'GRANT SELECT ON osm_kenosha_poi TO public';
      EXECUTE IMMEDIATE str_sql;
   
   END create_osm_vector;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE load_osm_vector
   AS
      str_sql CLOB;
      
   BEGIN
   
      --------------------------------------------------------------------------
      -- Step 10
      -- Load the kenosha poi table
      --------------------------------------------------------------------------
      EXECUTE IMMEDIATE 'BEGIN load_osm_kenosha_poi(); END;';
      COMMIT;
      
   END load_osm_vector;

   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   FUNCTION verify_osm_vector
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
          'OSM_KENOSHA_POI'
      );
      
      IF num_count <> 1
      THEN
         RETURN 'FALSE';
         
      END IF;
      
      RETURN 'TRUE'; 
   
   END verify_osm_vector;
   
END dz_testdata_vector;
/

