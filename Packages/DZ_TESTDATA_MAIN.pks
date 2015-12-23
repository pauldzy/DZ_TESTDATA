CREATE OR REPLACE PACKAGE dz_testdata_main
AUTHID CURRENT_USER
AS
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   /*
   Procedure: dz_testdata_main.drop_datasets

   Procedure to drop all datasets currently in the dz_testdata package.

   Parameters:

      None
      
   Returns:

      Nothing
      
   Notes:
   
   - Procedure does not empty the recycle bin.

   */
   PROCEDURE drop_datasets;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   /*
   Procedure: dz_testdata_main.create_datasets

   Procedure to create the tabular resources that hold dz_testdata.  Only the 
   creation DDL is executed.  

   Parameters:

      None
      
   Returns:

      Nothing
      
   Notes:
   
   - Before executing, review the constants in the constants package to make sure 
   tablespaces and other configurable values are set as desired.

   */
   PROCEDURE create_datasets;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   /*
   Procedure: dz_testdata_main.load_datasets

   Procedure to load tabular data into dz_testdata datasets.  All tabular data
   is persisted as text in the procedures included with the package.

   Parameters:

      None
      
   Returns:

      Nothing
      
   Notes:
   
   - Before executing, review the constants in the constants package to make sure 
   tablespaces and other configurable values are set as desired.

   */
   PROCEDURE load_datasets;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   /*
   Function: dz_testdata_main.verify_datasets

   Function to verify that all datasets exist and are valid.  This function 
   needs additional logic to better test the readiness of each dataset.
   
   Parameters:

      None
      
   Returns:

      VARCHAR2 results of dataset verification, TRUE indicates success.
      
   */
   FUNCTION verify_datasets
   RETURN VARCHAR;
   
END dz_testdata_main;
/

GRANT EXECUTE ON dz_testdata_main TO public;

