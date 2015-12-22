CREATE OR REPLACE PACKAGE BODY dz_testdata_util
AS

   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   PROCEDURE drop_table_quietly(
       p_owner            IN  VARCHAR2 DEFAULT NULL
      ,p_table_name       IN  VARCHAR2
   )
   AS
      str_owner VARCHAR2(30 Char) := UPPER(p_owner);
      
   BEGIN
   
      IF str_owner IS NULL
      THEN
         str_owner := USER;
      
      END IF;
   
      BEGIN
          EXECUTE IMMEDIATE 
          'DROP TABLE ' || str_owner || '.' || p_table_name || ' PURGE ';
          
      EXCEPTION
         WHEN OTHERS
         THEN
            IF SQLCODE = -942
            THEN
               NULL;
            ELSE
               RAISE;
            END IF;
            
      END;
      
   END drop_table_quietly;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   FUNCTION geodetic_XY_diminfo
   RETURN MDSYS.SDO_DIM_ARRAY
   AS
   BEGIN
      RETURN MDSYS.SDO_DIM_ARRAY(
          MDSYS.SDO_DIM_ELEMENT(
              'X'
             ,-180
             ,180
             ,0.05
          )
         ,MDSYS.SDO_DIM_ELEMENT(
              'Y'
             ,-90
             ,90
             ,0.05
          )
      );
      
   END geodetic_XY_diminfo;

   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   FUNCTION geodetic_XYM_diminfo(
       p_m_lower_bound NUMBER DEFAULT 0
      ,p_m_upper_bound NUMBER DEFAULT 100
      ,p_m_tolerance   NUMBER DEFAULT 0.00001
   ) RETURN MDSYS.SDO_DIM_ARRAY
   AS
   BEGIN
      RETURN MDSYS.SDO_DIM_ARRAY(
          MDSYS.SDO_DIM_ELEMENT(
              'X'
             ,-180
             ,180
             ,.05
          )
         ,MDSYS.SDO_DIM_ELEMENT(
              'Y'
             ,-90
             ,90
             ,.05
          )
         ,MDSYS.SDO_DIM_ELEMENT(
              'M'
             ,p_m_lower_bound
             ,p_m_upper_bound
             ,p_m_tolerance
          )
      );
      
   END geodetic_XYM_diminfo;
   
   ----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   FUNCTION true_point(
      p_input      IN MDSYS.SDO_GEOMETRY
   ) RETURN MDSYS.SDO_GEOMETRY
   AS
   BEGIN

      IF p_input.SDO_POINT IS NOT NULL
      THEN
         RETURN p_input;
         
      END IF;

      IF p_input.get_gtype() = 1
      THEN
         IF p_input.get_dims() = 2
         THEN
            RETURN MDSYS.SDO_GEOMETRY(
                p_input.SDO_GTYPE
               ,p_input.SDO_SRID
               ,MDSYS.SDO_POINT_TYPE(
                   p_input.SDO_ORDINATES(1)
                  ,p_input.SDO_ORDINATES(2)
                  ,NULL
                )
               ,NULL
               ,NULL
            );
            
         ELSIF p_input.get_dims() = 3
         THEN
            RETURN MDSYS.SDO_GEOMETRY(
                p_input.SDO_GTYPE
               ,p_input.SDO_SRID
               ,MDSYS.SDO_POINT_TYPE(
                    p_input.SDO_ORDINATES(1)
                   ,p_input.SDO_ORDINATES(2)
                   ,p_input.SDO_ORDINATES(3)
                )
               ,NULL
               ,NULL
            );
            
         ELSE
            RAISE_APPLICATION_ERROR(
                -20001
               ,'function true_point can only work on 2 and 3 dimensional points - dims=' || p_input.get_dims() || ' '
            );
            
         END IF;
         
      ELSE
         RAISE_APPLICATION_ERROR(
             -20001
            ,'function true_point can only work on point geometries'
         );
         
      END IF;
      
   END true_point;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   FUNCTION fast_point(
       p_x             IN  NUMBER
      ,p_y             IN  NUMBER
      ,p_z             IN  NUMBER DEFAULT NULL
      ,p_m             IN  NUMBER DEFAULT NULL
      ,p_srid          IN  NUMBER DEFAULT 8265
   ) RETURN MDSYS.SDO_GEOMETRY
   AS
   BEGIN
   
      --------------------------------------------------------------------------
      -- Step 10
      -- Check over incoming parameters
      --------------------------------------------------------------------------
      IF p_x IS NULL
      OR p_y IS NULL
      THEN
         RAISE_APPLICATION_ERROR(-20001,'x and y cannot be NULL');
         
      END IF;
      
      --------------------------------------------------------------------------
      -- Step 20
      -- Do the simplest solution first
      --------------------------------------------------------------------------
      IF  p_z IS NULL
      AND p_m IS NULL
      THEN
         RETURN MDSYS.SDO_GEOMETRY(
             2001
            ,p_srid
            ,MDSYS.SDO_POINT_TYPE(
                 p_x
                ,p_y
                ,NULL
             )
            ,NULL
            ,NULL
         );
         
      END IF;
      
      --------------------------------------------------------------------------
      -- Step 30
      -- Do the other wilder choices
      --------------------------------------------------------------------------
      IF p_z IS NULL
      AND p_m IS NOT NULL
      THEN
         RETURN MDSYS.SDO_GEOMETRY(
             3301
            ,p_srid
            ,MDSYS.SDO_POINT_TYPE(
                 p_x
                ,p_y
                ,p_m
             )
            ,NULL
            ,NULL
         );
         
      ELSIF p_z IS NOT NULL
      AND   p_m IS NULL
      THEN
         RETURN MDSYS.SDO_GEOMETRY(
             3001
            ,p_srid
            ,MDSYS.SDO_POINT_TYPE(
                 p_x
                ,p_y
                ,p_z
             )
            ,NULL
            ,NULL
         );
         
      ELSIF p_z IS NOT NULL
      AND   p_m IS NOT NULL
      THEN
         RETURN MDSYS.SDO_GEOMETRY(
             4401
            ,p_srid
            ,NULL
            ,MDSYS.SDO_ELEM_INFO_ARRAY(1,1,1)
            ,MDSYS.SDO_ORDINATE_ARRAY(p_x,p_y,p_z,p_m)
         );
      
      ELSE
         RAISE_APPLICATION_ERROR(-20001,'err');
         
      END IF;
      
   END fast_point;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   FUNCTION get_start_point(
      p_input        IN  MDSYS.SDO_GEOMETRY
   ) RETURN MDSYS.SDO_GEOMETRY
   AS
      int_dims PLS_INTEGER;
      int_gtyp PLS_INTEGER;
      int_lrs  PLS_INTEGER;
      
   BEGIN
   
      --------------------------------------------------------------------------
      -- Step 10
      -- Check over incoming parameters
      --------------------------------------------------------------------------
      IF p_input IS NULL
      THEN
         RETURN NULL;
         
      END IF;
      
      --------------------------------------------------------------------------
      -- Step 20
      -- Gather information about the geometry
      --------------------------------------------------------------------------
      int_dims := p_input.get_dims();
      int_gtyp := p_input.get_gtype();
      int_lrs  := p_input.get_lrs_dim();
      
      --------------------------------------------------------------------------
      -- Step 30
      -- Handle point and multipoint inputs
      --------------------------------------------------------------------------
      IF int_gtyp = 1
      THEN
         RETURN p_input;
         
      ELSIF int_gtyp = 5
      THEN
         RETURN MDSYS.SDO_UTIL.EXTRACT(p_input,1);
         
      END IF;

      --------------------------------------------------------------------------
      -- Step 40
      -- Return results
      --------------------------------------------------------------------------
      IF int_dims = 2
      THEN
         RETURN fast_point(
             p_x    => p_input.SDO_ORDINATES(1)
            ,p_y    => p_input.SDO_ORDINATES(2)
            ,p_srid => p_input.SDO_SRID
         );
         
      ELSIF  int_dims = 3
      AND int_lrs = 3
      THEN 
         RETURN fast_point(
             p_x    => p_input.SDO_ORDINATES(1)
            ,p_y    => p_input.SDO_ORDINATES(2)
            ,p_m    => p_input.SDO_ORDINATES(3)
            ,p_srid => p_input.SDO_SRID
         );
         
      ELSIF  int_dims = 3
      AND int_lrs = 0
      THEN 
         RETURN fast_point(
             p_x    => p_input.SDO_ORDINATES(1)
            ,p_y    => p_input.SDO_ORDINATES(2)
            ,p_z    => p_input.SDO_ORDINATES(3)
            ,p_srid => p_input.SDO_SRID
         );
         
      ELSIF  int_dims = 4
      AND int_lrs IN (4,0)
      THEN 
         RETURN fast_point(
             p_x    => p_input.SDO_ORDINATES(1)
            ,p_y    => p_input.SDO_ORDINATES(2)
            ,p_z    => p_input.SDO_ORDINATES(3)
            ,p_m    => p_input.SDO_ORDINATES(4)
            ,p_srid => p_input.SDO_SRID
         );
         
      ELSIF  int_dims = 4
      AND int_lrs = 3
      THEN 
         RETURN fast_point(
             p_x    => p_input.SDO_ORDINATES(1)
            ,p_y    => p_input.SDO_ORDINATES(2)
            ,p_z    => p_input.SDO_ORDINATES(4)
            ,p_m    => p_input.SDO_ORDINATES(3)
            ,p_srid => p_input.SDO_SRID
         );
      
      ELSE
         RAISE_APPLICATION_ERROR(-20001,'err');
            
      END IF;

   END get_start_point;
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   FUNCTION get_end_point(
      p_input        IN  MDSYS.SDO_GEOMETRY
   ) RETURN MDSYS.SDO_GEOMETRY
   AS
      int_dims PLS_INTEGER;
      int_gtyp PLS_INTEGER;
      int_lrs  PLS_INTEGER;
      int_len  PLS_INTEGER;
      
   BEGIN
   
      --------------------------------------------------------------------------
      -- Step 10
      -- Check over incoming parameters
      --------------------------------------------------------------------------
      IF p_input IS NULL
      THEN
         RETURN NULL;
         
      END IF;
      
      --------------------------------------------------------------------------
      -- Step 20
      -- Gather information about the geometry
      --------------------------------------------------------------------------
      int_dims := p_input.get_dims();
      int_gtyp := p_input.get_gtype();
      int_lrs  := p_input.get_lrs_dim();
      int_len  := p_input.SDO_ORDINATES.COUNT();
      
      --------------------------------------------------------------------------
      -- Step 30
      -- Handle point and multipoint inputs
      --------------------------------------------------------------------------
      IF int_gtyp = 1
      THEN
         RETURN p_input;
         
      ELSIF int_gtyp = 5
      THEN
         RETURN MDSYS.SDO_UTIL.EXTRACT(
             p_input
            ,MDSYS.SDO_UTIL.GETNUMELEM(p_input)
         );
         
      END IF;

      --------------------------------------------------------------------------
      -- Step 40
      -- Return results
      --------------------------------------------------------------------------
      IF int_dims = 2
      THEN
         RETURN fast_point(
             p_x    => p_input.SDO_ORDINATES(int_len - 1)
            ,p_y    => p_input.SDO_ORDINATES(int_len)
            ,p_srid => p_input.SDO_SRID
         );
         
      ELSIF  int_dims = 3
      AND int_lrs = 3
      THEN
         RETURN fast_point(
             p_x    => p_input.SDO_ORDINATES(int_len - 2)
            ,p_y    => p_input.SDO_ORDINATES(int_len - 1)
            ,p_m    => p_input.SDO_ORDINATES(int_len)
            ,p_srid => p_input.SDO_SRID
         );
         
      ELSIF  int_dims = 3
      AND int_lrs = 0
      THEN 
         RETURN fast_point(
             p_x    => p_input.SDO_ORDINATES(int_len - 2)
            ,p_y    => p_input.SDO_ORDINATES(int_len - 1)
            ,p_z    => p_input.SDO_ORDINATES(int_len)
            ,p_srid => p_input.SDO_SRID
         );
         
      ELSIF  int_dims = 4
      AND int_lrs IN (4,0)
      THEN 
         RETURN fast_point(
             p_x    => p_input.SDO_ORDINATES(int_len - 3)
            ,p_y    => p_input.SDO_ORDINATES(int_len - 2)
            ,p_z    => p_input.SDO_ORDINATES(int_len - 1)
            ,p_m    => p_input.SDO_ORDINATES(int_len)
            ,p_srid => p_input.SDO_SRID
         );
         
      ELSIF  int_dims = 4
      AND int_lrs = 3
      THEN 
         RETURN fast_point(
             p_x    => p_input.SDO_ORDINATES(int_len - 3)
            ,p_y    => p_input.SDO_ORDINATES(int_len - 2)
            ,p_z    => p_input.SDO_ORDINATES(int_len)
            ,p_m    => p_input.SDO_ORDINATES(int_len - 1)
            ,p_srid => p_input.SDO_SRID
         );
         
      ELSE
         RAISE_APPLICATION_ERROR(-20001,'err');
         
      END IF;

   END get_end_point;

   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   FUNCTION downsize_2d(
      p_input   IN MDSYS.SDO_GEOMETRY
   ) RETURN MDSYS.SDO_GEOMETRY
   AS
      geom_2d       MDSYS.SDO_GEOMETRY;
      dim_count     PLS_INTEGER;
      gtype         PLS_INTEGER;
      n_points      PLS_INTEGER;
      n_ordinates   PLS_INTEGER;
      i             PLS_INTEGER;
      j             PLS_INTEGER;
      k             PLS_INTEGER;
      offset        PLS_INTEGER;
      
   BEGIN

      IF p_input IS NULL
      THEN
         RETURN NULL;
         
      END IF;

      IF LENGTH (p_input.SDO_GTYPE) = 4
      THEN
         dim_count := p_input.get_dims();
         gtype     := p_input.get_gtype();
         
      ELSE
         RAISE_APPLICATION_ERROR(
             -20001
            ,'unable to determine dimensionality from gtype'
         );
         
      END IF;

      IF dim_count = 2
      THEN
         RETURN p_input;
         
      END IF;

      geom_2d := MDSYS.SDO_GEOMETRY(
          2000 + gtype
         ,p_input.sdo_srid
         ,p_input.sdo_point
         ,MDSYS.SDO_ELEM_INFO_ARRAY()
         ,MDSYS.SDO_ORDINATE_ARRAY()
      );

      IF geom_2d.sdo_point IS NOT NULL
      THEN
         geom_2d.sdo_point.z   := NULL;
         geom_2d.sdo_elem_info := NULL;
         geom_2d.sdo_ordinates := NULL;
         
      ELSE
         n_points    := p_input.SDO_ORDINATES.COUNT / dim_count;
         n_ordinates := n_points * 2;
         geom_2d.SDO_ORDINATES.EXTEND(n_ordinates);
         j := p_input.SDO_ORDINATES.FIRST;
         k := 1;
         FOR i IN 1 .. n_points
         LOOP
            geom_2d.SDO_ORDINATES(k) := p_input.SDO_ORDINATES(j);
            geom_2d.SDO_ORDINATES(k + 1) := p_input.SDO_ORDINATES(j + 1);
            j := j + dim_count;
            k := k + 2;
         
         END LOOP;

         geom_2d.sdo_elem_info := p_input.sdo_elem_info;

         i := geom_2d.SDO_ELEM_INFO.FIRST;
         WHILE i < geom_2d.SDO_ELEM_INFO.LAST
         LOOP
            offset := geom_2d.SDO_ELEM_INFO(i);
            geom_2d.SDO_ELEM_INFO(i) := (offset - 1) / dim_count * 2 + 1;
            i := i + 3;
            
         END LOOP;

      END IF;

      IF geom_2d.SDO_GTYPE = 2001
      THEN
         RETURN true_point(geom_2d);
         
      ELSE
         RETURN geom_2d;
         
      END IF;

   END downsize_2d;
   
END dz_testdata_util;
/

