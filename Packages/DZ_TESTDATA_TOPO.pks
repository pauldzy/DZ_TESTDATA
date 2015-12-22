CREATE OR REPLACE PACKAGE dz_testdata_topo
AUTHID CURRENT_USER
AS
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE drop_topology;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE create_topology;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE load_topology;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   FUNCTION verify_topology
   RETURN VARCHAR;

   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE drop_kenosha_tiger_topology;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE create_kenosha_tiger_topology;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE load_kenosha_tiger_topology(
      p_java_memory   IN  NUMBER DEFAULT 2
   );
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   FUNCTION verify_kenosha_tiger_topology
   RETURN VARCHAR;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE drop_catchment_topology;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE create_catchment_topology;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE load_catchment_topology(
      p_java_memory   IN  NUMBER DEFAULT 2
   );
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   FUNCTION verify_catchment_topology
   RETURN VARCHAR;
   
END dz_testdata_topo;
/

GRANT EXECUTE ON dz_testdata_topo TO public;

