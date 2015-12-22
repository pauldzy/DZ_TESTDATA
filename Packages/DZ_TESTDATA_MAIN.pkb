CREATE OR REPLACE PACKAGE BODY dz_testdata_main
AS

   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE drop_datasets
   AS
   BEGIN
   
      --------------------------------------------------------------------------
      -- Step 10
      -- Drop all vector tables
      --------------------------------------------------------------------------
      dz_testdata_vector.drop_vector();
      
      --------------------------------------------------------------------------
      -- Step 20
      -- Drop all raster tables
      --------------------------------------------------------------------------
      dz_testdata_raster.drop_raster();
      
      --------------------------------------------------------------------------
      -- Step 30
      -- Drop all topology tables
      --------------------------------------------------------------------------
      dz_testdata_topo.drop_topology();
      
      --------------------------------------------------------------------------
      -- Step 40
      -- Drop all network tables
      --------------------------------------------------------------------------
      dz_testdata_network.drop_network();
      
   END drop_datasets;

   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE create_datasets
   AS
   BEGIN
   
      --------------------------------------------------------------------------
      -- Step 10
      -- Create vector tables
      --------------------------------------------------------------------------
      dz_testdata_vector.create_vector();
      
      --------------------------------------------------------------------------
      -- Step 20
      -- Create raster tables
      --------------------------------------------------------------------------
      dz_testdata_raster.create_raster();
      
      --------------------------------------------------------------------------
      -- Step 30
      -- Create all topology tables
      --------------------------------------------------------------------------
      dz_testdata_topo.create_topology();
      
      --------------------------------------------------------------------------
      -- Step 40
      -- Create all network tables
      --------------------------------------------------------------------------
      dz_testdata_network.create_network();
      
   END create_datasets;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE load_datasets
   AS
   BEGIN
   
      --------------------------------------------------------------------------
      -- Step 10
      -- Load data into vector tables
      --------------------------------------------------------------------------
      dz_testdata_vector.load_vector();
      
      --------------------------------------------------------------------------
      -- Step 20
      -- Load data into raster tables
      --------------------------------------------------------------------------
      dz_testdata_raster.load_raster();
      
      --------------------------------------------------------------------------
      -- Step 30
      -- Load all topology tables
      --------------------------------------------------------------------------
      dz_testdata_topo.load_topology();
      
      --------------------------------------------------------------------------
      -- Step 40
      -- Load all network tables
      --------------------------------------------------------------------------
      dz_testdata_network.load_network();
      
   END load_datasets;

   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   FUNCTION verify_datasets
   RETURN VARCHAR
   AS
      str_results VARCHAR2(4000 Char);
      
   BEGIN
      
      str_results := dz_testdata_vector.verify_vector();
      
      IF str_results <> 'TRUE'
      THEN
         RETURN str_results;
         
      END IF;
      
      str_results := dz_testdata_raster.verify_raster();
      
      IF str_results <> 'TRUE'
      THEN
         RETURN str_results;
         
      END IF;
      
      str_results := dz_testdata_topo.verify_topology();
      
      IF str_results <> 'TRUE'
      THEN
         RETURN str_results;
         
      END IF;
 
      str_results := dz_testdata_network.verify_network();
      
      IF str_results <> 'TRUE'
      THEN
         RETURN str_results;
         
      END IF;
      
      RETURN 'TRUE'; 
      
   END verify_datasets;
  
END dz_testdata_main;
/

