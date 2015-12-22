CREATE OR REPLACE PROCEDURE load_np21_fdr_55059(
   p_albers_srid IN NUMBER DEFAULT 5070
)
AUTHID CURRENT_USER
AS
   -- Custom Albers is 1000001 
   str_sql CLOB;
   num_albers_srid NUMBER := p_albers_srid;
   
BEGIN
   
   IF num_albers_srid IS NULL
   THEN
      num_albers_srid := 5070;
      
   END IF;

   str_sql := 
q'[Insert into NHDPLUS_FDR_55059(georaster_id,georaster_description,georaster,raster_srid,grid_size_km) Values (1,'Kenosha County',:p01,:p02,30)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEORASTER(
   20001,
   MDSYS.SDO_GEOMETRY(
      2003,
      8265,
      NULL,
      MDSYS.SDO_ELEM_INFO_ARRAY(
         1,
         1003,
         1
      ),
      MDSYS.SDO_ORDINATE_ARRAY(
         -88.2911459212039,
         42.7437506014213,
         -88.3049939664713,
         42.619476899525,
         -88.3187924563978,
         42.4952233772097,
         -87.6739547352555,
         42.4554377139682,
         -87.0302499445513,
         42.4124846902188,
         -87.0141623430339,
         42.5365760510931,
         -86.9980171033403,
         42.6606865292206,
         -87.6443772184359,
         42.7038318721578,
         -88.2911459212039,
         42.7437506014213
      )
   ),
   'NHDPLUS_FDR_55059_RDT',
   78,
   SYS.XMLTYPE('<georasterMetadata xmlns="http://xmlns.oracle.com/spatial/georaster"><objectInfo><rasterType>20001</rasterType><isBlank>false</isBlank><defaultRed>1</defaultRed><defaultGreen>1</defaultGreen><defaultBlue>1</defaultBlue></objectInfo><rasterInfo><cellRepresentation>UNDEFINED</cellRepresentation><cellDepth>8BIT_U</cellDepth><totalDimensions>2</totalDimensions><dimensionSize type="ROW"><size>929</size></dimensionSize><dimensionSize type="COLUMN"><size>3524</size></dimensionSize><ULTCoordinate><row>46729</row><column>103257</column></ULTCoordinate><blocking><type>REGULAR</type><totalRowBlocks>8</totalRowBlocks><totalColumnBlocks>28</totalColumnBlocks><rowBlockSize>128</rowBlockSize><columnBlockSize>128</columnBlockSize></blocking><interleaving>BSQ</interleaving><pyramid><type>NONE</type></pyramid><compression><type>NONE</type></compression></rasterInfo><spatialReferenceInfo><isReferenced>true</isReferenced><isRectified>true</isRectified><SRID>' || num_albers_srid || '</SRID><spatialResolution dimensionType="X"><resolution>30</resolution></spatialResolution><spatialResolution dimensionType="Y"><resolution>30</resolution></spatialResolution><modelCoordinateLocation>CENTER</modelCoordinateLocation><modelType>FunctionalFitting</modelType><polynomialModel rowOff="0" columnOff="0" xOff="0" yOff="0" zOff="0" rowScale="1" columnScale="1" xScale="1" yScale="1" zScale="1"><pPolynomial pType="1" nVars="2" order="1" nCoefficients="3"><polynomialCoefficients>120712 -0 -0.03333333333333333</polynomialCoefficients></pPolynomial><qPolynomial pType="1" nVars="0" order="0" nCoefficients="1"><polynomialCoefficients>1</polynomialCoefficients></qPolynomial><rPolynomial pType="1" nVars="2" order="1" nCoefficients="3"><polynomialCoefficients>82365 0.03333333333333333 -0</polynomialCoefficients></rPolynomial><sPolynomial pType="1" nVars="0" order="0" nCoefficients="1"><polynomialCoefficients>1</polynomialCoefficients></sPolynomial></polynomialModel></spatialReferenceInfo><layerInfo><layerDimension>BAND</layerDimension><objectLayer><layerNumber>0</layerNumber><layerDimensionOrdinate>0</layerDimensionOrdinate><layerID/><NODATA><value>255</value></NODATA></objectLayer></layerInfo></georasterMetadata>')
),
num_albers_srid;

END load_np21_fdr_55059;
/

GRANT EXECUTE ON load_np21_fdr_55059 TO public;

