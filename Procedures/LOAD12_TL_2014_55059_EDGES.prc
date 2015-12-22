CREATE OR REPLACE PROCEDURE load12_tl_2014_55059_edges
AUTHID CURRENT_USER
AS
   str_sql CLOB;
   
BEGIN

   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14595,'55','059',627912980,247926025,247926024,'S1400','98th St',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',407433229,407433229,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8588539997117,42.5305039998606,-87.8588650002189,42.5306500002982,-87.8590170000339,42.5306349996064,-87.8590469996187,42.5304829997915,-87.8589709997112,42.5304069998841,-87.8589099995962,42.5303910000455,-87.8588539997117,42.5305039998606));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14596,'55','059',633139421,257476550,257476538,'S1400','Creekside Cir','4694',NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65188673,422294143,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8832610001944,42.5416169997256,-87.8832650003788,42.5414180004413,-87.8832570000099,42.5413049997269,-87.8832509997332,42.5411990002346,-87.8832279995719,42.5410430002352));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14597,'55','059',633139432,257476551,257476538,'S1400','Creekside Cir',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',65188674,422294146,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8872919999252,42.5397760002631,-87.8873370002017,42.5398059998479,-87.887633000362,42.5400700003312,-87.887675999647,42.540109000331,-87.887715999693,42.5401500004231,-87.8877409999466,42.5401779999157,-87.8877759997619,42.5402210001,-87.8878280003613,42.5402959999614,-87.8878630001767,42.5403580001225,-87.8878929997615,42.5404220003759,-87.8879099996461,42.5404709999376,-87.8879240002917,42.5405210004447,-87.8879329998074,42.5405590003984));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14598,'55','059',622470293,262377218,236551080,'S1400','39th Ave','4694',NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',413165316,65185962,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8544329999824,42.5428800004126,-87.8544289997978,42.5427230003671,-87.8544269997057,42.5426380000446));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14599,'55','059',605369551,257537582,257537582,'S1400','Prairie Village Dr','4694','4176','4500','4319','4501','53142','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',403188235,403188972,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8579680002224,42.5382750002919,-87.8583930000363,42.538338999646,-87.858703999989,42.538428000153,-87.8589769999879,42.5385640001294,-87.8591849996873,42.5387349999212,-87.8593290000327,42.5389239996438,-87.8594229998709,42.5391219997814,-87.8594449999861,42.5392690002651));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14600,'55','059',623920724,238810568,236624073,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',415062406,415062455,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8701119999682,42.5699379999397,-87.870109999876,42.5699109995938));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14601,'55','059',622495537,262358258,262368372,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',413196536,413196537,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8930269999954,42.5572779997808,-87.8931019998568,42.55742100008,-87.8926200001123,42.5575590001487));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14602,'55','059',627804615,230181800,247876847,'S1640','Frontage Rd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',417224374,403189842,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9076160000777,42.5671309999966,-87.9077140001004,42.5670620004119,-87.9077330000773,42.5670099998126));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14603,'55','059',639534643,261589276,261589275,'P0004',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',424484431,424484432,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9360039997841,42.5674739996263,-87.9359999995997,42.5673839999725));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14604,'55','059',641439480,263510128,238809599,'S1400','122nd St','4694',NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',415061345,65187622,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9511440000949,42.5020190001776,-87.9510260000492,42.5020160000393,-87.9509140002802,42.5020139999471,-87.95083100005,42.502012999901));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14605,'55','059',637706452,247957995,260324089,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',403189598,423921083,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9509140002802,42.4975019996185,-87.9509009996808,42.4974010003568));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14606,'55','059',623130791,262382990,238810712,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',409299967,65187076,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8691030002026,42.56985999994,-87.8691020001565,42.5698369997786,-87.8690990000182,42.5697609998712));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14607,'55','059',622483979,260643827,238811076,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',413184420,65187230,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.860770999981,42.5482459996541,-87.860770999981,42.5484059998379));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14608,'55','059',618140216,262356901,257537580,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',409299644,65186589,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8494110004167,42.5388990002895,-87.8494060001861,42.5386870004057));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14609,'55','059',618138671,229582811,260818662,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',409299052,65187616,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8518109995773,42.5452439997117,-87.8518090003844,42.5454639999645,-87.8535840004006,42.545468000149,-87.8543109997522,42.5454700002412));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14610,'55','059',79820450,247861426,247957444,'S1400','79th St','4694','5101','5499','5100','5498','53142','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65181626,65188709,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8694740002243,42.5599790002316,-87.8703829998749,42.5599839995629,-87.8731099997261,42.5600000003007,-87.874019000276,42.560005999678));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14611,'55','059',627758875,247861389,247861391,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',417203533,403173604,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9502870001443,42.4956289995796,-87.9504670003511,42.4954310003413));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14612,'55','059',636572264,263510138,263510146,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',423441739,417203546,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9503949997288,42.4978359997325,-87.9505010001204,42.4977359996176,-87.9504939997976,42.4973160000343));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14613,'55','059',627923430,262377039,263459546,'S1400','120th Ave',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',417289414,417203582,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9530780002489,42.5356909998407,-87.9527789999502,42.534772999775));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14947,'55','059',79799260,211918172,211918169,'S1400','40th Ave','4694','6001','6099','6000','6098','53142','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65181922,65181924,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8566719998123,42.5810509998047,-87.8566669995817,42.5807450000826,-87.8566549999277,42.5798290001092,-87.8566509997432,42.5795240004332));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14948,'55','059',79799278,211918180,211918172,'S1400','39th Ave','4694','6029','6099','6050','6098','53142','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65181930,65181933,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8553710000709,42.5801319996929,-87.8553689999787,42.5800060001777,-87.855362999702,42.5796309999716,-87.8553619996559,42.5795059996031));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14949,'55','059',79799281,211918181,211918173,'S1400','38th Ave','4694','6001','6027','6000','6026','53142','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65181931,65181932,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8541870003291,42.5810050003814,-87.8541840001908,42.5808260002207,-87.854176999868,42.5802889997385,-87.8541749997758,42.5801109996239));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14950,'55','059',79799280,211918178,211918176,'S1400','59th St','4694','3701','3799','3700','3798','53144','53144','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65181934,65181928,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8533799999864,42.5821239998236,-87.8536079997088,42.582126999962,-87.8542939998675,42.5821389996161,-87.8545229996361,42.5821429998005));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14951,'55','059',79799354,211918184,211918178,'S1400','37th Ave','4694','5901','5999','5900','5998','53144','53144','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65181934,65181935,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8533799999864,42.5821239998236,-87.8533749997558,42.5818970001474,-87.8533599999634,42.5812160002191,-87.8533549997328,42.5809899996896));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14952,'55','059',79799319,211918182,211918182,'S1400','61st St','4694',NULL,NULL,'3700','3798',NULL,'53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65181956,65181936,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8538999996846,42.5794800002028,-87.8539530003301,42.5794810002488,-87.8541129996146,42.5794840003872,-87.8541670003062,42.5794850004334));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14953,'55','059',79799325,211918192,211918190,'S1400','40th Ave','4694','6501','6699','6500','6698','53142','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65181946,65181951,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8564100003206,42.5757400004016,-87.8564029999978,42.5752949996654,-87.8563910003438,42.5743340003148,-87.8563969997211,42.5739630002931,-87.85640500009,42.5735199996492));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14954,'55','059',79799793,211918222,211918198,'S1400','39th Ave','4694','6901','6999','6900','6998','53142','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182234,65182238,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8552239995873,42.5713429999803,-87.855219000256,42.5711409996583,-87.8552049996104,42.5705349995915,-87.8552010003253,42.5703330001687));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14955,'55','059',79799773,211917938,211918198,'S1400','70th St','4694','4101','4199','4100','4198','53142','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182224,65182222,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8576649997393,42.5703340002149,-87.8579120003379,42.5703340002149,-87.858653000335,42.5703340002149,-87.8589010000804,42.5703340002149));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14956,'55','059',79799790,211918194,211918198,'S1400','Grant Rd','4694','4001','4099','4000','4098','53142','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182236,65182223,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8566939999275,42.5716780001405,-87.8567560000887,42.5716899997946,-87.856809999881,42.5716879997023,-87.8568770002727,42.5716699997716,-87.8569019996269,42.5716560000253,-87.8574729998784,42.5713589998189,-87.8576249996933,42.5712809998192,-87.8576590003619,42.5712520002805));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14957,'55','059',79799771,211918194,211918198,'S1400','41st Ave','4694','6901','6999','6900','6998','53142','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182223,65182224,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8576590003619,42.5712520002805,-87.8576790003849,42.5712169995658,-87.8576839997162,42.5711839998426,-87.8576809995778,42.5710720000736,-87.8576689999238,42.5705179997069,-87.8576649997393,42.5703340002149));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14958,'55','059',79799355,211918184,211918201,'S1400','59th St','4694','3501','3603','3500','3598','53144','53144','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65181972,65181969,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8512349999946,42.5820890000082,-87.8514500000168,42.5820920001466,-87.8520950000835,42.5821019997084,-87.8523100001058,42.5821059998929));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14959,'55','059',79799352,211918204,211918203,'S1400','34th Ave','4694','5701','5799','5700','5798','53144','53144','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65181971,65181975,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8501989998833,42.5831680003039,-87.8501989998833,42.5830110002584,-87.8502009999755,42.5825410001679,-87.8502020000216,42.5823850001685));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14960,'55','059',79799384,211918213,211918208,'S1400','32nd Ave','4694','5801','5999','5800','5998','53144','53144','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65181985,65181989,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8481580001909,42.5823520004454,-87.8481560000987,42.5820609996164,-87.848149999822,42.5811879998273,-87.8481489997759,42.5808969998976));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14961,'55','059',605323528,211918208,211918210,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65181987,403174254,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8491789996105,42.5809159998744,-87.8491259998644,42.5809149998283));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14962,'55','059',79799385,211918213,211918211,'S1400','58th St','4694','3101','3199','3100','3198','53144','53144','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65181991,65181985,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8468649999191,42.5823310003763,-87.8471230001257,42.5823349996614,-87.8478989999383,42.5823470002148,-87.8481580001909,42.5823520004454));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14963,'55','059',79799587,211918219,262379530,'S1400','58th St','4694','3001','3099','3000','3098','53144','53144','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182113,65181991,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8455800000164,42.582309000261,-87.8458360001306,42.5823130004455,-87.8466079997588,42.5823260001457,-87.8468649999191,42.5823310003763));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14964,'55','059',79799403,211918209,211918216,'S1400','63rd St','4694',NULL,NULL,'3300','3398',NULL,'53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182004,65181995,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8490930001412,42.5775549995645,-87.8492969996562,42.5775579997028,-87.849912000138,42.5775690002101,-87.8501169996991,42.5775730003946));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14965,'55','059',79820539,211918291,211918220,'P0004',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'T','N','N',65188878,65188879,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8796330001622,42.5741489998774,-87.8795059997015,42.5741419995546));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14966,'55','059',605365167,223657364,211918221,'S1400','30th Ave','4694','6001','6033','6000','6014','53144','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182114,403186919,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8455719996474,42.5808509995749,-87.8455650002239,42.5805459998989,-87.8455610000395,42.5803289997844));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14967,'55','059',79804007,228693924,211918225,'R1011','Union Pacific RR','11676',NULL,NULL,NULL,NULL,NULL,NULL,'R','N','Y','N','N',NULL,NULL,'N','M',NULL,'N',NULL,'N','N','N',65184959,65182008,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8479339997536,42.5770440002813,-87.8479559998689,42.5770319997279,-87.8480250003528,42.5769959998664,-87.8480479996148,42.5769850002584));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14968,'55','059',605321085,211918701,228693924,'S1400','67th St',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',65182283,403173908,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8497829995851,42.5734229996726,-87.8498299999539,42.5734229996726,-87.8499740002993,42.5734259998109,-87.8500219998148,42.5734269998571));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14969,'55','059',79799628,257537614,211918234,'S1400','30th Ave','4694','6613','6699','6612','6698','53142','53142','S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',65182139,65182140,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8454189997864,42.5741910000156,-87.8454149996019,42.5740230003621,-87.8454029999479,42.573518999603,-87.8453999998095,42.5733509999496));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14970,'55','059',79799438,211918238,211918237,'S1400','45th St','4694','2801','2899','2800','2898','53140','53144','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182027,65182022,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8432509996333,42.5953580003723,-87.8434909999091,42.5953629997036,-87.8442129999294,42.5953780003953,-87.8444540002513,42.5953839997727));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14971,'55','059',79799453,211918244,211918242,'S1400','46th St','4694','2701','2799','2700','2798','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182033,65182029,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8423700003746,42.5940739996163,-87.8425440003047,42.5940769997546,-87.8430690002335,42.594089000308,-87.8432440002098,42.5940929995932));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15359,'55','059',79796919,211920644,260641872,'P0002',NULL,'5726',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65180352,65180353,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8217540002463,42.6084699997916,-87.8216839997162,42.6083769999995,-87.8215319999013,42.6082250001845,-87.8215000002242,42.6081999999309));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15360,'55','059',79796904,262369202,211920607,'S1400','13th Ave','4694',NULL,NULL,'3298','3100',NULL,'53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180338,65180340,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8261460004369,42.609688000202,-87.8261460004369,42.6093350001111,-87.8261479996298,42.6082779999306,-87.826148999676,42.6079259998859));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15361,'55','059',79796855,211920616,211920608,'S1400','35th St','4694','1401','1599','1400','1548','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180316,65180314,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8274050000401,42.6062370002383,-87.8276309996702,42.6062350001461,-87.8283109995523,42.6062279998233,-87.828538000128,42.6062269997771));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15362,'55','059',79796853,211920613,211920608,'S1400','35th St','4694','1601','1699','1550','1698','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180314,65180308,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.828538000128,42.6062269997771,-87.8287720001271,42.6062249996849,-87.8290169997341,42.6062229995927,-87.8294760002166,42.6062190003075,-87.8297110002618,42.6062170002153));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15363,'55','059',79796881,211920614,211920613,'S1400','35th Pl','4694','1601','1699','1600','1698','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180315,65180313,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8285390001741,42.6052309997118,-87.8287730001732,42.6052289996196,-87.8294770002627,42.6052220001961,-87.8297120003079,42.6052210001499));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15364,'55','059',79796888,211920616,211920614,'S1400','16th Ave','4694','3533','3599','3536','3598','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180315,65180328,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8285390001741,42.6052309997118,-87.8285390001741,42.6050480002659,-87.8285390001741,42.6044990001296,-87.8285390001741,42.6043159997845));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15365,'55','059',79796861,211920619,211920615,'S1400','36th St','4694','1701','1799','1700','1798','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180319,65180317,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8297120003079,42.6043060002227,-87.8299949998687,42.6043030000843,-87.8308460004419,42.6042959997615,-87.8311300000488,42.6042939996693));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15366,'55','059',79796890,211920628,211920616,'S1400','36th St','4694','1401','1599','1400','1598','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180332,65180328,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8274070001323,42.6043260002456,-87.8276329997625,42.6043240001534,-87.8283119995984,42.6043169998306,-87.8285390001741,42.6043159997845));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15367,'55','059',79796869,211920622,211920620,'S1400','38th St','4694','1701','1799','1700','1798','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180324,65180320,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8297120003079,42.6024950003449,-87.8299959999148,42.6024920002066,-87.8308479996348,42.6024849998838,-87.8311330001872,42.6024829997915));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15368,'55','059',79796891,211920629,211920623,'S1400','16th Ave','4694','3701','3799','3700','3798','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180329,65180330,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8285400002202,42.6034110003183,-87.8285400002202,42.6032300000654,-87.8285400002202,42.6026860001597,-87.8285400002202,42.6025059999528));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15369,'55','059',79796877,211920626,211920624,'S1400','40th St','4694','1701','1799','1700','1798','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180327,65180325,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8297120003079,42.6006950000751,-87.8299939998226,42.6006919999368,-87.8308430003036,42.600684999614,-87.8311259998644,42.600683000421));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15370,'55','059',79800383,260641445,211920634,'S1400','Washington Rd','4694',NULL,NULL,'1306','1398',NULL,'53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182576,65180369,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8267129996046,42.5988939997592,-87.8268519997194,42.5988919996669,-87.8272700001098,42.5988880003818,-87.8274100002707,42.5988880003818));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15371,'55','059',79796959,211920646,211920638,'S1200','Sheridan Rd','4694','3701','3799','3660','3798','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180358,65180376,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8230760000567,42.6034809999491,-87.8230780001489,42.6032940003188,-87.8230849995724,42.6027349997213,-87.8230879997108,42.6025490001372));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15372,'55','059',638425166,260641889,260641886,'P0004',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65180390,424204035,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8192679998177,42.6025779996759,-87.8180429999838,42.6025809998142));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15373,'55','059',79796986,211920660,211920648,'S1400','40th St','4694','701','799','700','798','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180392,65180380,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.820546000297,42.6007190002825,-87.8208180002499,42.6007190002825,-87.8216340001084,42.6007190002825,-87.8219070001073,42.6007200003286));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15374,'55','059',79815869,211920640,211920650,'R1011','Union Pacific RR','11676',NULL,NULL,NULL,NULL,NULL,NULL,'R','N','Y','N','N',NULL,NULL,'N','M',NULL,'N',NULL,'N','N','N',65186255,65180371,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8259510004377,42.6004129996611,-87.8259510004377,42.6003250000996,-87.8259519995844,42.6000609996163,-87.8259529996306,42.5999740001009));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15375,'55','059',79815868,262361629,211920650,'R1011','Union Pacific RR','11676',NULL,NULL,NULL,NULL,NULL,NULL,'R','N','Y','N','N',NULL,NULL,'N','M',NULL,'N',NULL,'N','N','N',65186726,65186255,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8259500003916,42.6007160001442,-87.8259500003916,42.6006550000291,-87.8259500003916,42.6006309998217,-87.8259500003916,42.6004729997301,-87.8259510004377,42.6004129996611));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15376,'55','059',79796954,211920640,211920654,'R1011','Union Pacific RR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'R','N','Y','N','N',NULL,NULL,'N','M',NULL,'N',NULL,'N','N','N',65180371,65180373,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8259529996306,42.5999740001009,-87.8258989998383,42.5997580000326,-87.8257389996544,42.5991119999198,-87.8256859999083,42.5988969998975));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15377,'55','059',79800404,262382444,211920656,'S1400','43rd St','4694','1101','1229','1100','1228','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182586,65182584,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8253719998173,42.5970930003426,-87.8254230003705,42.5970930003426,-87.8255780003238,42.5970930003426,-87.8256300000239,42.5970940003887));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15378,'55','059',79796970,260333268,211920657,'S1200','Sheridan Rd','4694','4031','4099','4028','4098','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180383,65180385,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8230539999415,42.5998160000093,-87.8230529998954,42.599631999618,-87.823049999757,42.5990810002888,-87.8230489997109,42.5988979999436));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15379,'55','059',79796993,211920667,211920665,'S1400','40th St','4694','501','599','500','598','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180397,65180394,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.818033000422,42.6007170001903,-87.818278000029,42.6007170001903,-87.8190129997495,42.6007170001903,-87.819259000302,42.6007180002364));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15380,'55','059',79800796,211920670,211920668,'S1400','Washington Rd','4694','501','599','500','598','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180402,65180399,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.818024000007,42.5988979999436,-87.818268999614,42.5988979999436,-87.8190040002338,42.5988979999436,-87.8192489998409,42.5988989999898));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15381,'55','059',79797000,260643958,211920668,'S1400','5th Ave','4694','4033','4101','4024','4098','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180398,65180402,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8180280001914,42.5998119998249,-87.8180270001453,42.599629000379,-87.818024000007,42.5990800002427,-87.818024000007,42.5988979999436));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15382,'55','059',79819186,211921298,211920750,'S1400','67th St','4694',NULL,NULL,'10513','10501',NULL,'53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65188302,65188303,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9361209997837,42.5748780002205,-87.9358980002918,42.5748750000821,-87.9352290000177,42.5748689998054,-87.9350059996265,42.5748669997132));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15383,'55','059',79796661,211920819,211920817,'S1400','21st Ave','4694','3101','3199','3100','3198','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180202,65180205,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.834262999737,42.609618999718,-87.834262999737,42.6094449997878,-87.834262999737,42.6089229999973,-87.834262999737,42.6087490000672));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14251,'55','059',79801794,211919950,211919951,'S1400','115th St','4694','801','899','800','898','53158','53158','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65183421,65183445,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.818288999637,42.5085579995529,-87.8185770003277,42.5085589995991,-87.8194409997017,42.5085639998296,-87.8197290003924,42.5085659999219));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14252,'55','059',79820584,211919692,247907867,'S1400','Ridgeway Ct',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65188900,65188766,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9242879999906,42.5585310000066,-87.923421999625,42.5581729996851));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14253,'55','059',79807099,247940745,247940745,'S1400','94th Pl',NULL,'3198','3000','3099','3001','53158','53158','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65185160,65185716,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8478199998925,42.5330029999894,-87.8475910001239,42.5328740003358,-87.847500000424,42.5328439998516,-87.8474239996173,42.5328320001976,-87.8463949998288,42.5328120001746,-87.846193000406,42.5328090000363,-87.8460510001529,42.5327289999443));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14254,'55','059',605371001,230281451,223658977,'P0001',NULL,'4694',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',403188211,403189741,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8445379996284,42.5387669995982,-87.8445459999973,42.5381469997851));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14255,'55','059',627880259,247908131,258541948,'S1400','W Ridge Dr',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',65187023,65187023,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9315739996397,42.5556090001562,-87.931555999709,42.5556520003404,-87.9315609999396,42.5556880002019,-87.9316060002161,42.5556880002019,-87.9316549997778,42.5556540004327,-87.9316690004234,42.5556100002023,-87.9316640001928,42.555576000433,-87.9316349997548,42.5555409997183,-87.9316149997318,42.5555310001565,-87.931595999755,42.555536000387,-87.9315710004007,42.55555600041,-87.9315609999396,42.5555849999487,-87.9315739996397,42.5556090001562));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14256,'55','059',79815169,258541948,258541948,'S1400','Northview Dr',NULL,'8401','8455','8498','8400','53158','53158','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65187201,65187196,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9289770003876,42.5560800002927,-87.9290470000184,42.5560339999701,-87.929083999926,42.5559869996013,-87.929103999949,42.5559359999473,-87.9291049999951,42.5558820001551,-87.9290880001105,42.5558299995557,-87.929052000249,42.5557830000863,-87.9290019997418,42.5557440000865,-87.9289489999957,42.5557209999251,-87.9288699999499,42.5557019999483,-87.9284510004127,42.5557009999021,-87.9283540004361,42.5556969997177,-87.9282579996063,42.5556860001097,-87.9281180003448,42.5556559996256,-87.9275840000009,42.5554750002719,-87.9275280001165,42.5554570003412,-87.9270630002566,42.555314000042));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14257,'55','059',79813903,262372383,262360987,'S1400','122nd St','4694','3770','3632','3767','3627','53158','53158','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65184825,65186998,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8515910002238,42.5003949999302,-87.8513550001325,42.5003909997458,-87.851025000203,42.5003860004145,-87.8507730002731,42.5003709997227,-87.8506499999968,42.5003549998842,-87.8506069998126,42.5003499996537,-87.8504190001361,42.500312999746));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14258,'55','059',618148501,229587426,229587425,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',409302758,409302760,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8906890000966,42.5623519999457,-87.8906880000505,42.5622400001768));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14259,'55','059',79814851,211921513,211920172,'S1400','3rd Ave','4694','11067','11219','11134','11220','53158','53158','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65187234,65187235,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8126440001199,42.5140570004311,-87.8127820001885,42.5139120000397,-87.8130210004182,42.5136640002943,-87.8131989996335,42.5134769997646,-87.8133379997482,42.5133330003186));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14260,'55','059',79801803,211919956,211920173,'S1400','115th St','4694','191','303','200','298','53158','53158','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65183448,65183435,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8133440000249,42.5086340003597,-87.8135879995859,42.5086009997373,-87.8143200000673,42.5085039997607,-87.8145649996744,42.5084720000837));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14261,'55','059',79801802,211920171,211920173,'S1400','2nd Ave','4694','11401','11499','11400','11498','53158','53143','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65183437,65183448,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8130809995878,42.5094579996879,-87.8131330001872,42.5092930001727,-87.8132910002788,42.5087979998287,-87.8133440000249,42.5086340003597));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14262,'55','059',79801786,262376198,211920174,'S1400','Lakeshore Dr','4694','11301','11325','11300','11334','53158','53158','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65183441,65183442,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8106410003812,42.5131010004117,-87.8106220004044,42.5129149999282,-87.8105640004276,42.5123570002763,-87.8105459995975,42.5121709997927));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14263,'55','059',79801778,211920171,211920176,'S1400','114th St','4694','101','139','100','120','53158','53158','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65183439,65183438,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8110520004488,42.509692999733,-87.8110719995725,42.5096620001021,-87.8111240001718,42.5096270002867,-87.8111680004022,42.509611999595,-87.8111929997565,42.5096100004021,-87.811238000033,42.5096070002638,-87.8112850004018,42.5096149997333,-87.8113269996407,42.5096309995719,-87.8116599997086,42.5098040003552,-87.8118129995696,42.509883000401));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14264,'55','059',79801790,211920171,211920176,'S1400','1st Ct',NULL,'11365','11499','11364','11498','53158','53158','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65183443,65183439,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8116910002389,42.5100449997778,-87.8115370003317,42.50999500017,-87.811126000264,42.509862000332,-87.8110880003103,42.5098400002167,-87.8110490003105,42.5097959999863,-87.8110349996649,42.5097450003324,-87.8110409999416,42.5097099996177,-87.8110520004488,42.509692999733));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14265,'55','059',634248767,257826190,257826189,'L4150','Great Lakes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'L','N','N','N','Y',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',422757015,422757020,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8025319996514,42.4923939996842,-87.8022569995603,42.4929629998435));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14266,'55','059',79798999,211917742,259731597,'S1400','47th Ave','4694','8429','8499','8400','8498','53142','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65181753,65181756,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8629410002263,42.5528299997056,-87.8629479996498,42.5526159997295,-87.8629689997189,42.5519759998934,-87.8629770000878,42.5517629999634));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14267,'55','059',605371694,223659141,261303256,'S1400','79th St','4694',NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',403190133,65181265,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8888410003113,42.5613969999725,-87.8890710001259,42.5614050003414));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14268,'55','059',639197393,236644109,261303256,'S1200','Green Bay Rd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',409301772,65187936,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8887509997582,42.561665999787,-87.8887949999886,42.5615620003869,-87.888809999781,42.561504999557));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14269,'55','059',637399068,260641342,223658933,'S1200','104th St','4694',NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',403188814,65181183,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.916949999742,42.5240449996779,-87.9170109998571,42.5240720000237,-87.9177800002462,42.5243979997688));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14270,'55','059',605365080,223657339,223657338,'S1400','Jelly Belly Ln','4694','10101','10399','10100','10398','53158','53158','S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',65188099,65186940,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8945259998744,42.523548000141,-87.8945370003816,42.5231069995893));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14271,'55','059',79803552,262358022,211918554,'S1400','90th St','4694','26201','26299','26200','26298','53168','53168','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65184636,65184634,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1251000001643,42.5449689996206,-88.1255080000935,42.5449660003815,-88.1267329999274,42.5449590000587,-88.1271419999027,42.5449580000126));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14272,'55','059',79807768,262358022,211918555,'P0002',NULL,'5726',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65184996,65186393,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1265280003663,42.5397659998019,-88.1265470003432,42.5397469998251,-88.126597999997,42.5396590002636,-88.1266050003198,42.5396170001254,-88.1266129997895,42.5395709998027,-88.1265379999281,42.5395060004025,-88.1264559997439,42.53947299978,-88.1263369996522,42.5393860002646,-88.1262179995604,42.5393339996652,-88.126061999561,42.5392660001267));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14273,'55','059',79807769,211918555,211918556,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65186392,65186393,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1265699996052,42.5392670001728,-88.1264680002973,42.5392660001267,-88.126162999722,42.5392660001267,-88.126061999561,42.5392660001267));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14614,'55','059',641361023,263459605,263459546,'S1400','120th Ave',NULL,NULL,NULL,'9700','9798',NULL,'53104','S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',424916731,417289414,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9567390000042,42.5419279996784,-87.9564470000284,42.5410240002583,-87.9563510000979,42.5405950002599,-87.9561820003984,42.5401820001001,-87.9557860001232,42.5395250003794,-87.9552279995719,42.5388509998746,-87.9545279996668,42.537932999809,-87.9538540000614,42.5370499995587,-87.9533259999943,42.5363509996998,-87.9530780002489,42.5356909998407));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14615,'55','059',605371131,230181800,247876848,'S1640','Frontage Rd','4694',NULL,NULL,'8000','8298',NULL,NULL,'S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',403189812,403189813,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9051620002255,42.5670410003428,-87.9051830002946,42.5670820004349,-87.9052509998331,42.5671249997199,-87.9053259996945,42.5671540001579,-87.9054930002011,42.567166999858,-87.906292000175,42.5671760002731));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14616,'55','059',627912898,247926022,247925989,'S1400','96th Pl',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',407433167,407433167,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8620420001375,42.5334899999644,-87.8620480004142,42.5336959995716,-87.8618799998615,42.5336049998717,-87.8618189997464,42.5334679998492,-87.8619409999765,42.5334069997342,-87.8620630002067,42.5333459996191,-87.8620420001375,42.5334899999644));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14617,'55','059',627921100,262362455,262356901,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',417288569,409299646,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8481580001909,42.5388820004049,-87.846963999988,42.5388669997132));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14618,'55','059',627923343,258542073,247932542,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',417289379,65187139,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9560040002838,42.5222759999384,-87.9560119997533,42.5222440002613,-87.9560099996611,42.5220929995932));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14619,'55','059',627923185,259558405,247932542,'S1400','120th Ave',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',417289316,417289309,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9543699995752,42.5209999995512,-87.9556100001008,42.5214169998956,-87.9560640003527,42.5216439995718,-87.9565019998668,42.5220939996393));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14620,'55','059',79801553,247930230,262369125,'S1200','104th St','4694','2801','2899','2816','2898','53158','53158','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65183266,65183263,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8402119997833,42.5222299996157,-87.8407120003579,42.5222379999846,-87.8422130003291,42.5222630002382,-87.8427140000504,42.5222719997539));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14621,'55','059',616251826,247930230,262369125,'S1200','104th St','4694','1829','2199','1834','2198','53158','53158','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',408399870,65183291,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8302899999829,42.5220939996393,-87.8309259996345,42.5220989998699,-87.831556999955,42.5221050001466,-87.833299000248,42.5221189998928,-87.8340909998991,42.5221260002156));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14622,'55','059',635598495,247930230,262369125,'S1200','104th St','4694','2901','3099','2900','3098','53158','53158','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65183263,409936874,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8427140000504,42.5222719997539,-87.8428229996811,42.5222729998,-87.8431500003716,42.5222790000767,-87.8432600000483,42.5222810001689,-87.843306000371,42.5222810001689,-87.8434459996325,42.5222840003073,-87.8434930000013,42.5222850003534,-87.8439490003454,42.522292999823,-87.8440600000683,42.5222939998691,-87.844655999674,42.5223040003303));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14623,'55','059',79807154,229586361,257470530,'S1400','82nd St',NULL,'5597','5699','5640','5698','53142','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65185752,65181584,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8745610000894,42.5563940003837,-87.8747459996275,42.5563930003376,-87.8753010000405,42.5563930003376,-87.8754859995786,42.5563940003837));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14624,'55','059',633107031,211918355,257470945,'S1400','Prairie Ridge Blvd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',422289834,65187027,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9234819996939,42.5620949997853,-87.9230040001339,42.5621139997622,-87.9222729996985,42.5621499996237,-87.9222060002061,42.5621549998543,-87.9213539995868,42.5622240003382));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14625,'55','059',633139092,257476485,257476485,'S1400','123rd St',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',65185400,422294087,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8592590004019,42.4986250001446,-87.859768999639,42.4984399997071));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14626,'55','059',619916468,257476550,257476550,'S1400','90th St',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',409938799,409938801,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8823129996446,42.5424559997455,-87.8815880003852,42.5424430000453));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14627,'55','059',79820037,211919671,257476550,'S1400','63rd Ave',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65188681,65188682,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8834610004242,42.5374819996954,-87.8834550001475,42.5376579997178,-87.8834659997555,42.5377529996022,-87.8834990003779,42.5378450002474,-87.8836880001005,42.5381499999235,-87.8837840000309,42.5383049998767));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14628,'55','059',605371417,247926024,257476550,'S1400','93rd St','4694','5313','5501','5400','5918','53158','53158','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65181777,403189976,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8718970004456,42.5372750000421,-87.8740679998377,42.5373039995808,-87.8742090000447,42.537305999673,-87.8790710003258,42.5373990003645));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14629,'55','059',624366667,257476551,257476551,'S1400',NULL,'7190',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',415275417,415275420,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8915229998859,42.5408559997055,-87.8914199996327,42.5408840000974,-87.8913360002556,42.5408630000283,-87.8912200003022,42.5408240000285,-87.8911529999104,42.5408070001438,-87.8910800001412,42.5407940004437,-87.891006000326,42.5407829999364,-87.8909290003724,42.5407839999825,-87.8908460001422,42.5407930003976,-87.8907629999119,42.5408029999594,-87.8906770004426,42.5408060000977,-87.8905930001662,42.5408080001899,-87.8905160002126,42.5408070001438,-87.8904370001668,42.5407989997749,-87.8903590001671,42.5407860000748,-87.8902840003057,42.5407710002823,-87.8902070003521,42.5407609998212,-87.8901319995915,42.5407599997751,-87.8900579997762,42.5407670000979,-87.8899799997765,42.5407809998442,-87.8899080000535,42.5407989997749,-87.8898360003305,42.5408149996135,-87.8897689999388,42.5408290002591,-87.8897020004463,42.5408389998209,-87.8896319999162,42.5408409999131,-87.8895640003777,42.5408310003513,-87.889506000401,42.5408120003744,-87.8894179999401,42.5407850000286));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14630,'55','059',624366811,223658956,257476551,'S1400','Old Green Bay Rd','4694',NULL,NULL,'9211','9109',NULL,'53158','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',415275485,415275417,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.891483999886,42.5390429997356,-87.891492000255,42.5394790000567,-87.8914950003933,42.539604999572,-87.8915229998859,42.5408559997055));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14631,'55','059',622470143,236549060,257537581,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',413164321,409299357,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8508090001346,42.5424219999762,-87.8506340001583,42.5424320004374));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14632,'55','059',79804160,261302030,257537591,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65185028,65185029,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.882103999899,42.5555740003408,-87.8818580002459,42.5555659999718,-87.8811239996722,42.5555419997644,-87.8808790000651,42.5555350003409));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14633,'55','059',634248749,257826188,257826190,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',422757015,50550134,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8025319996514,42.4923939996842,-87.8028049996504,42.492461000076));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14634,'55','059',619900089,230179050,263510138,'S1400','120th Ave',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',409931727,65188105,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9498109997772,42.5009729996052,-87.9495419999627,42.5008130003206,-87.9492990004479,42.5008350004358,-87.9490570000798,42.5008130003206,-87.9488139996657,42.5007570004361,-87.9478660000153,42.5007130002057,-87.9475240004317,42.5007130002057,-87.9472810000175,42.5007459999289,-87.9470160003875,42.5008019998133,-87.9468069997426,42.5009120003894,-87.9466299996741,42.5010440001814,-87.9465090003894,42.5012760000882,-87.9464870002742,42.5015079999951,-87.9465539997666,42.5019119997399));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14635,'55','059',79818826,211921373,263510138,'S1400','122nd St','4694','11210','9912','11515','9913','53158','53158','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65188105,65181176,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9465539997666,42.5019119997399,-87.9423649999442,42.501811999625,-87.9415490000857,42.5017929996481,-87.9297979995774,42.5016349995565,-87.9256089997549,42.501578999672));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14636,'55','059',637706453,247957995,260324090,'S1100','I- 94','12018',NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',423921083,403189599,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9509009996808,42.4974010003568,-87.9505400001203,42.4961979997388));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14972,'55','059',79799454,211918245,211918244,'S1400','48th St','4694','2701','2799','2700','2798','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182037,65182030,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8423640000979,42.5928089997365,-87.842538000028,42.5928119998748,-87.8430619999107,42.5928230003821,-87.843236999887,42.5928269996672));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14973,'55','059',79799475,211918252,211918245,'S1400','50th St','4694','2701','2799','2700','2798','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182039,65182038,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8423280002364,42.5909369997436,-87.8425080004432,42.590939999882,-87.8430480001645,42.5909510003893,-87.8432280003713,42.5909549996744));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14974,'55','059',79799492,211920018,211918247,'S1400','26th Ave','4694','4601','4799','4600','4798','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182055,65182058,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.840502999713,42.5940359996625,-87.8405039997592,42.5937829996866,-87.8405089999897,42.5930249998048,-87.840511000082,42.592772999875));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14975,'55','059',79800331,211918660,211918270,'S1400','44th St','4694','1701','1799','1700','1798','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182546,65182533,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8300810002373,42.5960319999777,-87.8303089999598,42.5960299998855,-87.8309940000724,42.5960259997011,-87.8312229998409,42.5960259997011));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14976,'55','059',637230929,229426267,228693900,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65187940,423152904,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8871099996261,42.5814619998723,-87.8870539997417,42.5793250002495));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14977,'55','059',617767549,229426266,228693900,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',409131919,65187942,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8851839998411,42.5799609999011,-87.8850330000723,42.5799629999934));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14978,'55','059',79817264,211918275,228693900,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65187330,65187332,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8958659996155,42.5816680003788,-87.8958859996386,42.5807019998983,-87.8957139998006,42.5806710002673,-87.8950230003106,42.5805490000373,-87.8950319998263,42.5778309997018,-87.8950360000107,42.5769870003507,-87.8950370000568,42.5766910001904));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14979,'55','059',605369996,223658632,228693900,'S1400','74th Pl','4694','7111','7001',NULL,NULL,'53142',NULL,'S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',65187353,403189189,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8930429998339,42.5676709997178,-87.8932939997177,42.5677069995793,-87.8935679997628,42.567753999948,-87.895190999964,42.5678200002937));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14980,'55','059',611715473,230281490,258541985,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',406383813,65187096,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8884060000362,42.5864770000144,-87.8882190004059,42.5870630000583));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14981,'55','059',79818453,230281490,258541985,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65187096,65187962,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8882190004059,42.5870630000583,-87.8882249997833,42.5872440003113,-87.8882469998985,42.5874810004487,-87.8882029996681,42.587728000148));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14982,'55','059',79819200,211921073,211918298,'S1400','111th Ave','4694','6598','6504',NULL,NULL,'53142',NULL,'S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65188297,65188310,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9414649998092,42.575916000424,-87.9414609996248,42.5761040001004,-87.941451000063,42.5766680000291,-87.9414479999246,42.5768569997517));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14983,'55','059',632706605,211918325,211918298,'S1400','65th St','4694','11098','10900','11099','10901','53142','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65188310,422169653,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9414479999246,42.5768569997517,-87.9409409999266,42.5768500003281,-87.9400409997917,42.5768389998209,-87.9399639998381,42.5768339995903,-87.9398590003919,42.5768139995673,-87.9398140001153,42.5767979997288));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14984,'55','059',79810923,211920532,211918304,'S1400','107th Ave','4694','6701','6899','6700','6898','53142','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180894,65180901,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9370529995956,42.5739299996707,-87.9371109995723,42.5738680004088,-87.9371549998028,42.573789000363,-87.9371739997796,42.5737250001096,-87.9371790000102,42.573668000179,-87.9371830001946,42.5735379995799,-87.9371899996182,42.5733610004107,-87.9372109996872,42.5732790002266,-87.9372570000099,42.5731909997658,-87.9373160000328,42.5731190000427,-87.9374000003091,42.573049000412,-87.9376140002852,42.5729040000205,-87.9376789996854,42.5728449999976,-87.937733000377,42.5727799996981,-87.9377789998003,42.5726999996062,-87.9378070001923,42.572615000183,-87.9378169997541,42.5725279997683,-87.9378169997541,42.5725039995609,-87.9378219999847,42.5720759996086));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14985,'55','059',637219960,237763869,236717002,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',413235240,414132308,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9503979998672,42.5794570000414,-87.950284000006,42.5794570000414,-87.9489679995729,42.5794489996725,-87.9489250002879,42.5784300003451,-87.947641999578,42.5783979997688,-87.9477890000617,42.581873999986,-87.9478009997158,42.5821670000079));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14986,'55','059',622510062,236680093,236680092,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',413214409,413214417,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9187720001271,42.5814150004028,-87.9187599995737,42.5812380003343,-87.9187590004269,42.581082000335,-87.9187150001965,42.5797219996714,-87.9162669997216,42.5796930001327,-87.9162669997216,42.5794410002029,-87.9145600001432,42.5794359999723));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14987,'55','059',79819239,211919630,211918351,'S1400','88th Ave','4694','6501','6649','6500','6616','53142','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65188326,65185984,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9144260002591,42.5760860001697,-87.9144129996596,42.5757699999864,-87.9143749997058,42.5748240004282,-87.9143630000518,42.574509000291));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14988,'55','059',622431678,236467231,258542193,'S1400','24th St','4694','4505','4511','4204','4698','53144','53144','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65186025,413115317,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8636990001081,42.616394000084,-87.8639049997153,42.6163960001762));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14989,'55','059',622431660,236467192,261303512,'S1400','24th St','4694','4303','4401',NULL,NULL,'53144',NULL,'S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',413115309,65187856,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8606329999124,42.6163600003147,-87.8617979996773,42.6163730000148,-87.8622259996295,42.6163780002454));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14990,'55','059',622431667,262373448,261303512,'S1400','24th St','4694',NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',413115312,65187466,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8631649997643,42.6163879998073,-87.8631839997412,42.6163879998073,-87.8632449998562,42.6163889998534,-87.8633150003863,42.6163899998995));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14991,'55','059',79812539,262376312,262368526,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65181814,65183206,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8641090001296,42.5944469997302,-87.864123999922,42.5945970003522,-87.8641690001986,42.5950470004196,-87.8641850000371,42.5951970001424));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14992,'55','059',79820427,238961071,211918378,'S1400','60th St',NULL,'6215','6223','6216','6226','53144','53144','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65187955,65188855,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8806260000892,42.5814629999184,-87.880918000065,42.5814670001029,-87.8809990002031,42.581468000149));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14993,'55','059',79817131,228136523,211918383,'S1400','45th St','4694','5601','5867','5600','5866','53144','53144','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65181298,65185695,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8756469998086,42.5959319998628,-87.8762529998754,42.595942000324,-87.878071000076,42.5959719999088,-87.8786770001428,42.595983000416));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14994,'55','059',624965562,239130818,239130817,'S1400','Courtyard Jct','7191',NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',415618231,415618232,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8770149999417,42.5592479997962,-87.8770119998033,42.5592000002807));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14995,'55','059',622494955,236633062,211918388,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',413196314,65187121,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8793359999558,42.5568649996209,-87.8795180002548,42.5568699998515));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14996,'55','059',79814299,236633080,211918388,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65186207,65187119,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8761620001756,42.557371999619,-87.8761670004061,42.5572979998038,-87.876178000014,42.5571439998966,-87.8761820001985,42.5570770004041,-87.8761870004291,42.5570039997357));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15384,'55','059',79796672,211920823,211920820,'S1400','21st Ave','4694','3201','3299','3200','3298','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180205,65180212,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.834262999737,42.6087490000672,-87.834262999737,42.6085770002293,-87.834262999737,42.6080639999545,-87.834262999737,42.6078930001627));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15385,'55','059',79796673,211920825,211920820,'S1400','33rd St','4694','2101','2199','2100','2198','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180212,65180207,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.834262999737,42.6078930001627,-87.8345999999894,42.6078900000244,-87.8356119998932,42.6078809996093,-87.8359500001917,42.6078790004165));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15386,'55','059',79796835,211920831,211920824,'S1400','32nd St','4694','1801','1899','1800','1898','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180303,65180302,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8311320001411,42.608776000413,-87.8314139996557,42.6087730002747,-87.8322599999984,42.6087659999519,-87.8325429995592,42.6087639998596));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15387,'55','059',79796670,211920826,211920825,'S1400','34th St','4694','2101','2199','2100','2198','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180210,65180208,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8342619996909,42.6070370002583,-87.8345989999432,42.6070340001199,-87.8356109998471,42.6070239996588,-87.8359490001456,42.6070219995665));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15388,'55','059',79796677,211920828,211920829,'S1400','34th St','4694','1901','2099','1900','2098','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180215,65180210,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8325420004123,42.6070520000507,-87.8328860000882,42.6070489999123,-87.833918000015,42.6070400003966,-87.8342619996909,42.6070370002583));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15389,'55','059',79796870,211920564,211920835,'S1400','21st Ave','4694','3901','3999','3900','3998','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180231,65180232,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8342599995987,42.6015499999335,-87.8342599995987,42.601422000326,-87.8342599995987,42.6010389997509,-87.8342599995987,42.6009120001896));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15390,'55','059',79796871,211920564,211920843,'S1400','39th St','4694','1901','2099','1900','2098','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180321,65180231,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8325410003662,42.6015649997258,-87.8328839999959,42.6015619995875,-87.8339159999228,42.6015520000257,-87.8342599995987,42.6015499999335));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15391,'55','059',79807999,236519224,211921110,'S1400','46th Ave','4694','4701','4715','4700','4714','53144','53144','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65181399,65185300,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8644549998977,42.5939429998705,-87.8644539998515,42.5938659999169,-87.8644509997132,42.5936350000561,-87.8644499996671,42.5935580001025));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15392,'55','059',79819159,211920148,262373631,'S1400','104th Ave','4694','5829','5999','5828','5998','53142','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65188289,65181027,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9344740002742,42.583635000256,-87.9344700000898,42.5833349999112,-87.9344580004357,42.5824349997764,-87.9344540002513,42.582136000377));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15393,'55','059',622510858,257537617,236682177,'S1400','104th Ave','4694','6371','6399','6370','6398','53142','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',413215383,65186153,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9342849996524,42.5780649997009,-87.9342750000906,42.5778159999094));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15394,'55','059',79796500,211920323,211921209,'S1400','22nd Ave','4694','1867','1899','1864','1898','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180106,65180108,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8358730002381,42.6222979998537,-87.835872000192,42.6221439999466,-87.8358700000998,42.6216820002251,-87.8358700000998,42.6215280003179));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15395,'55','059',79796498,211920323,211921209,'S1400','22nd Ave','4694','1801','1865','1800','1862','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180039,65180106,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8358809997077,42.6242239996388,-87.8358789996155,42.6238379998247,-87.8358740002843,42.6226829996216,-87.8358730002381,42.6222979998537));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15396,'55','059',79816348,259731561,211921334,'S1400','25th St','4694','5498','4980','5499','4981','53144','53144','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65187048,65187049,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8724669997516,42.6156649997408,-87.8723750000056,42.6156180002714,-87.8722129997295,42.6155449996029,-87.8720660001451,42.6154960000413,-87.8719140003302,42.6154580000875,-87.8718389995695,42.6154450003874,-87.8717570002847,42.6154319997879,-87.8715970001008,42.6154180000416,-87.869836999877,42.6154020002031,-87.8691699996951,42.6153969999725));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15397,'55','059',79814339,211919602,211921387,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65187130,65187131,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.892861999581,42.5886189998678,-87.8928160001577,42.5884039998456,-87.8927879997657,42.5882720000537,-87.8922629998369,42.5882639996847,-87.8920439996302,42.5882619995925));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15398,'55','059',79804241,211917830,236465281,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'B',NULL,NULL,NULL,NULL,'N','N','N',65183810,65185062,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8372079997487,42.6366000001908,-87.8369579999111,42.636592999868,-87.8362099995912,42.6365749999372,-87.8359609997997,42.6365699997066));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15399,'55','059',79798306,211921403,211921400,'S1400','63rd Ave','4694','5301','5431','5300','5434','53144','53144','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65181220,65181221,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8839139997307,42.5879420001241,-87.8839210000535,42.587618999618,-87.8839280003763,42.5875730001947,-87.8839420001225,42.5874990003795,-87.8839650002839,42.5874249996649,-87.8841820003984,42.5864949999452,-87.8842669998215,42.5861359995776));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15400,'55','059',79798335,260643282,211921403,'S1400','55th St','4694','6201','6299','6200','6298','53144','53144','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65181295,65181221,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8830860002181,42.58599500027,-87.8833220003094,42.5860229997625,-87.8840299996841,42.5861070000389,-87.8842669998215,42.5861359995776));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15401,'55','059',605366613,223657742,223657747,'S1200','Green Bay Rd','4694','6425','6549',NULL,NULL,'53142',NULL,'S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',403187649,403187645,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.885303999979,42.5762379999846,-87.8854149997018,42.5756590002636));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15402,'55','059',605366684,223657771,223657775,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',403187679,65187336,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8849859997035,42.5778590000937,-87.8850249997033,42.5778860004395,-87.8851649998642,42.5779839995628));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15403,'55','059',79817879,236631054,237905156,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65187078,65187080,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.879378000094,42.5558749998323,-87.8786279996818,42.5558549998093,-87.87637900029,42.5557959997865,-87.8758829998999,42.5557840001324,-87.8758360004304,42.5555350003409));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15404,'55','059',79798365,211921451,211921442,'S1400','63rd St','4694','5901','5999','5900','5998','53142','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65181335,403173999,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8779879998457,42.5781249997698,-87.8782890002365,42.5781289999543,-87.8791929996566,42.5781419996545,-87.8794950000935,42.5781469998851));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15405,'55','059',79798334,211921444,211921443,'S1400','53rd St','4694','5301','5399','5224','5334','53144','53144','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65181314,65181311,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8721080002833,42.5876959995716,-87.8723269995907,42.5876999997561,-87.8729840002108,42.5877120003095,-87.8732030004175,42.5877159995946));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15406,'55','059',639197312,261301940,211920039,'S1400','55th St','4694','4901','5099','4900','5098','53144','53144','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65181392,65181447,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8679680000225,42.5858869997861,-87.8681830000448,42.5858899999245,-87.8685719999972,42.5858980002934,-87.8686609996048,42.5858960002012,-87.8687490000656,42.5858889998784,-87.8688290001576,42.5858760001782,-87.8688520003189,42.5858730000398,-87.8689870002492,42.5858410003628,-87.8690410000415,42.5858319999477,-87.8691299996491,42.5858170001553,-87.8692050004098,42.5858109998787,-87.8692190001561,42.5858099998325,-87.8697019999467,42.5858160001092,-87.8698680004073,42.5858190002476));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15407,'55','059',79798404,211917892,211921453,'S1400','56th Ave','4694','6001','6099','6000','6098','53142','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65181355,65181357,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.875114999557,42.5813829998265,-87.8751049999951,42.5810800002427,-87.8750750004103,42.5801709996928,-87.8750659999953,42.579868000109));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14274,'55','059',79807818,211919369,211918557,'P0002',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65186412,65186394,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1489350003494,42.5110199997741,-88.1489090000497,42.5093019996884));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14275,'55','059',79807831,257537668,211918573,'R1011','Canadian National RR','11676',NULL,NULL,NULL,NULL,NULL,NULL,'R','N','Y','N','N',NULL,NULL,'N','M',NULL,'N',NULL,'N','N','N',65186416,65180439,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1059429998689,42.5001040000005,-88.107259000302,42.5013849997189,-88.1084270002053,42.5025230000373,-88.1112099999409,42.5052269997271,-88.1112659998254,42.5052810004187,-88.1119119999382,42.5059149999782,-88.112526000374,42.5065100004371));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14276,'55','059',79811550,262378290,249862071,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65186421,65184657,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1233009999406,42.5392239999885,-88.1231429998489,42.539218999758,-88.1226709996662,42.5392039999655,-88.1225139996208,42.5391999997811));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14277,'55','059',79811559,249862071,249862071,'S1400','98th St',NULL,'26245','26499',NULL,NULL,'53168',NULL,'S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65186389,65186408,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1280620000606,42.5318469997401,-88.1281390000142,42.5316949999252));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14278,'55','059',638425602,260642112,260642111,'P0004',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',424204210,424204211,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1619739999995,42.4954630000183,-88.1619960001147,42.5028760001282,-88.1595790001701,42.5028600002897));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14279,'55','059',79818666,211919091,211918763,'S1400','256th Ave','4694','7709','7607',NULL,NULL,'53168',NULL,'S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','Y',65180414,65188032,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1188570000499,42.5655889999333,-88.1188590001421,42.5658460000938,-88.1188650004188,42.5666199998141,-88.1188669996117,42.5668780000206));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14280,'55','059',79816500,211921093,211918846,'S1740','108th St','4694',NULL,NULL,'25599','25501',NULL,'53179','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65187374,65186642,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1176449999162,42.5195930003176,-88.1174740001244,42.5195910002254,-88.1169639999879,42.5195870000409,-88.1167940002423,42.5195859999948));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14281,'55','059',79812692,211920924,211918848,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65180637,65186065,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1019259998844,42.5608269997671,-88.1014169997941,42.5608249996749,-88.0998919996155,42.5608190002976,-88.0993839995713,42.5608180002514));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14282,'55','059',79818510,211920924,211918848,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65186065,65187974,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.0993839995713,42.5608180002514,-88.0993319998713,42.5608180002514,-88.0993030003326,42.5608180002514,-88.0992230002406,42.5608180002514,-88.0991790000102,42.5608180002514,-88.0991280003563,42.5608180002514));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14283,'55','059',79818519,260641105,262369896,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65187976,65187977,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.0960389999992,42.5621260003156,-88.0952939998176,42.5626449999677,-88.0947229995662,42.5630440003812,-88.0927039999889,42.5631970002423,-88.0917999996696,42.5632669998731));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14284,'55','059',633433747,259994852,257537574,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',422343176,422343177,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1490179996803,42.5319229996476,-88.1497310001849,42.5301950000002,-88.152478000059,42.5250229998125));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14285,'55','059',79803506,223957804,262384431,'S1400','103rd Pl','4694','26898','26800','26899','26835','53179','53179','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65184602,65184604,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1362859997984,42.5251819999502,-88.1358979998922,42.5251809999041,-88.1347340001734,42.5251809999041,-88.1343470003132,42.5251809999041));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14286,'55','059',79812602,262370262,262370262,'S1400','106th St',NULL,NULL,NULL,'26399','26301',NULL,'53179','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65184633,65179910,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1281879995759,42.5211090000812,-88.1281359998758,42.5211140003118,-88.1279819999687,42.5211310001964,-88.1279310003148,42.5211369995738));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14287,'55','059',79818711,223657459,211919020,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'T','N','N',65188047,65188048,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1188739999345,42.5679780003853,-88.1188450003958,42.5679780003853,-88.1187579999811,42.5679780003853,-88.1187290004424,42.5679780003853));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14288,'55','059',79797050,211920683,211919419,'S1400','Wilmot Rd','4694','25928','25800','25827','25701','53179','53168','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180433,65180438,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1198839997462,42.5116289999793,-88.1196669996317,42.5117350003709,-88.1190180002798,42.5120539997932,-88.1188020002115,42.5121610002309));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14289,'55','059',79797051,211920681,211919419,'S1400','116th St','4694',NULL,NULL,'25899','25801',NULL,'53179','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180438,65180432,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1188020002115,42.5121610002309,-88.1187410000965,42.5121919998618,-88.1185599998435,42.5122869997462,-88.1184999997745,42.5123200003686));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14290,'55','059',79797044,260642116,211919419,'S1400','260th Ave','4694','11998','11900',NULL,NULL,'53179',NULL,'S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180435,65180434,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1211610001794,42.506489000368,-88.1212709998561,42.5068520000207,-88.1213030004325,42.5069690000203,-88.1214500000169,42.5072670002727,-88.121735999716,42.5078449999477,-88.1218689995541,42.5081509996698,-88.1219479995999,42.5084309999916,-88.1220139999455,42.508992999828,-88.1220160000377,42.5091010003118,-88.1220580001759,42.5096559998254,-88.1220929999913,42.5101090000312,-88.1221229995761,42.5102429999154,-88.1222560003135,42.5104460002836));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14291,'55','059',79817698,228694101,262358996,'H3010',NULL,'5726',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','N','N',NULL,NULL,'N',NULL,NULL,'N','P','N','N','N',65187649,65187396,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1054850003318,42.5089309996668,-88.105163999918,42.5085930002676,-88.1049849997573,42.5084400004066,-88.1046879995509,42.5084299999455,-88.1045319995515,42.5083820004299,-88.1044799998515,42.508365999692,-88.1041829996451,42.5083119998998,-88.104130999945,42.5082679996693,-88.1041079997837,42.5081699996467,-88.1041520000142,42.5080820000852,-88.1040839995763,42.5079729995552,-88.1040469996686,42.5079569997167,-88.1039210001534,42.5079900003391,-88.1038840002458,42.5079850001086,-88.103705000085,42.5079039999706,-88.1035280000165,42.5079809999241,-88.1034689999937,42.5079809999241,-88.1033200003171,42.5079379997398,-88.1032309998101,42.5079379997398,-88.1028310002498,42.507999999901,-88.1026409995818,42.5080700004311,-88.1023420001825,42.5081169999006,-88.1022529996756,42.5081119996699,-88.102103999999,42.5080409999931,-88.1019619997459,42.5079270001319,-88.1018649997693,42.507806999994,-88.1017750001155,42.5076320000177,-88.1017279997467,42.5075059996031,-88.1016539999315,42.5073040001804,-88.1016230003006,42.5071179996968,-88.1015539998166,42.506986999951,-88.1013539995868,42.5068020004129,-88.1012409997717,42.5065620001371,-88.1011960003945,42.5065060002526));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14292,'55','059',634735729,211918571,211919701,'S1400','256th Ave','4694','10505','10701','10528','10712','53179','53179','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',422979520,65180425,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.118372000167,42.5224560001452,-88.1183649998442,42.5215190001027,-88.1183619997059,42.5211069999889,-88.1183589995675,42.5206630001982));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14293,'55','059',79818987,230281294,262366399,'S1400','Wilmot Rd','4694',NULL,NULL,'25699','24803',NULL,'53179','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65188196,65186414,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1130399997955,42.5150230000123,-88.112365000144,42.5153570001264,-88.1103410003362,42.5163609996613,-88.109913000384,42.5165739995913,-88.1096659997854,42.5166949997753));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14294,'55','059',79818938,257537668,211919933,'S1400','Runyard Way E','4694','24938','24800','24939','24847','53168','53168','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65188169,65188166,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1105449998512,42.4987460003285,-88.1105259998744,42.4987620001671,-88.1104380003128,42.4988159999593,-88.1103370001518,42.4988549999592,-88.1103020003364,42.498862000282,-88.1102549999677,42.49887299989,-88.1101699996451,42.498882000305,-88.1094869996247,42.4988800002128,-88.1092310004097,42.4988800002128,-88.1092310004097,42.4988650004203));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14295,'55','059',79815597,211920047,211920047,'S1400','School St',NULL,NULL,NULL,'1200','1298',NULL,'53168','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65184254,65187159,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1677779996543,42.5608049996519,-88.1678070000924,42.5610860000198,-88.1678140004151,42.5611439999965,-88.1680210000684,42.5614549999492,-88.168106000391,42.5616669998331,-88.1681240003217,42.5618540003628,-88.1681349999297,42.5619629999933,-88.1682529999753,42.5620909996009));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14637,'55','059',79797972,211921348,263459617,'P0002',NULL,'5726',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65181083,65181085,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9434179999401,42.5482420003689,-87.9433490003555,42.5481190000927,-87.9431429998489,42.5477530003016,-87.9431029998029,42.5476819997254,-87.9430510001029,42.547655000279));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14638,'55','059',638424089,260641370,260641374,'S1400','123rd Pl','4694',NULL,NULL,'6101','6115',NULL,'53158','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65184786,424203600,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.885709999816,42.4990289998893,-87.885102999703,42.4990360002121,-87.8846500003966,42.4988739999361,-87.8845549996129,42.498862000282,-87.8844110001669,42.4988430003051,-87.884109999776,42.4988050003514,-87.8836589996625,42.4987230001672,-87.8831549998027,42.4986149996834,-87.8826849997124,42.4984080000301,-87.882133000337,42.4981980002384,-87.8816850003618,42.4979759998934,-87.8813290001326,42.4978209999401,-87.8811099999259,42.4977310002864,-87.880906000411,42.4976940003787,-87.8807319995815,42.4977239999635,-87.8806450000661,42.4977619999173,-87.8804669999515,42.4978420000092,-87.8801279996069,42.4980159999394));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14639,'55','059',616103549,260641374,260641374,'S1400','Timber Ridge Dr','4694',NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',408338107,408338110,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8824800001512,42.4938769997246,-87.8819859998534,42.4938690002551));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14640,'55','059',79803772,260641374,260641374,'S1400','64th Ave','4694','12798','12700','12741','12701','53158','53158','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65184810,65184813,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8825780001739,42.4938789998169,-87.8825739999895,42.494011999655,-87.8825689997589,42.4942150000231,-87.8825859996435,42.4942849996539,-87.8826259996895,42.4943509999995,-87.8826580002658,42.4943849997688,-87.882751000058,42.4944819997454));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14641,'55','059',79815002,211921291,260644004,'S1400','121st St','4694','101','109',NULL,NULL,'53158',NULL,'S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65187273,65187275,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.808279000275,42.5025599999449,-87.8083859998134,42.5025389998759,-87.8087070002272,42.5024779997608,-87.8088149998118,42.5024579997378));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14642,'55','059',636695521,211921291,260644004,'S1400','2nd Ave','4694','12109','12199','12120','12198','53158','53158','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65188155,65187278,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8095939997626,42.5023100001073,-87.8095020000167,42.5020469996702,-87.8092279999716,42.5012590002036,-87.8091370002717,42.5009969998126,-87.8090800003411,42.5008330003436,-87.809049999857,42.500746999975,-87.8090449996264,42.5005420004139,-87.809039000249,42.5003190000227,-87.8090350000646,42.5001460001387));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14643,'55','059',79815004,260644004,260644004,'S1710','Al Kampert Trl',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65187275,65187276,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8088149998118,42.5024579997378,-87.808866000365,42.5025450001526,-87.809019000226,42.5028079996903,-87.80906999988,42.5028960001512));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14644,'55','059',605367613,259732313,263460557,'S1400','120th Ave','4694',NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',403188035,65186801,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9473590000172,42.5236219999562,-87.947356999925,42.5231489997275,-87.9473539997866,42.5224079997303,-87.9473119996484,42.5215840004022,-87.9472959998099,42.5212769997347,-87.9472640001329,42.5206539997832));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14645,'55','059',635599228,211917520,214801911,'S1400','312th Ave',NULL,'1023','1243','7000','7098','53105','53105','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65183474,65183514,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1883080003133,42.6445400003217,-88.1883060002211,42.6437150000481,-88.1883030000827,42.641241000173,-88.1883030000827,42.6404179999916,-88.1883009999905,42.6401609998312,-88.1882979998522,42.6393930003875,-88.1882979998522,42.6391370002733));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14646,'55','059',79803718,262379724,208209107,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',50550104,50550108,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.0650639997032,42.4955280003178,-88.062062999807,42.4955070002488));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14647,'55','059',79803812,262382345,208210378,'S1400','128th St',NULL,'16266','15466','18955','18501','53142','60002','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',50550145,50550144,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.0024289998978,42.4949590001586,-87.9970940002872,42.4949509997897,-87.9913259995946,42.4949430003201));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14648,'55','059',79803813,262360547,259112140,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',50550146,50550111,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.0510730002181,42.4953839999725,-88.0495950004083,42.4953670000879));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14649,'55','059',635517435,262360547,262679052,'S1400','128th St',NULL,'19998','18300','19799','18301','53104','60002','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',50550111,50602301,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.0495950004083,42.4953670000879,-88.0425150003663,42.4952859999498,-88.0379799998764,42.4952409996733,-88.0379660001302,42.4952399996272,-88.030590999974,42.4951679999042,-88.0305629995821,42.4951720000886));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14650,'55','059',79817813,211921285,208210479,'P0001',NULL,'265',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',50550118,50588160,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9174569997401,42.4941469995853,-87.9173789997404,42.4941460004385));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14651,'55','059',79803753,211921290,230370761,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',50550124,50550125,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9119819999687,42.4940860003695,-87.9082020001215,42.4940430001852,-87.9028099996811,42.4939820000702));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14652,'55','059',627803166,211919731,261938955,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',417223780,65179613,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.3050299996341,42.5313330003186,-88.3050280004412,42.5311740001809));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14653,'55','059',79810258,221262650,261751013,'S1400','128th St','4694','34524','34400','1597','1539','53181','60071','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',52687208,52687229,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.2286160002276,42.4949729999049,-88.2278799995617,42.4949790001816,-88.2263330001672,42.4950000002507,-88.2261810003523,42.4950210003198));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14654,'55','059',635510435,221262650,220479077,'S1400','128th St',NULL,'36898','35812','2311','2303','53181','60071','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',52697347,52703815,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.2617120003079,42.4947329996292,-88.2600950003833,42.4947850002285,-88.2593900002477,42.4948179999516,-88.2582879997907,42.4948709996978,-88.2570270000953,42.4948889996285,-88.2540310004297,42.4948660003665,-88.2524209999286,42.4948780000206,-88.2511539999565,42.4948889996285,-88.2500979998222,42.4948879995824,-88.2496400002851,42.4948870004357,-88.2482659998753,42.4948850003434,-88.2478090003844,42.4948850003434,-88.247735999716,42.4948830002511,-88.2475209996937,42.4948800001128,-88.2474900000628,42.494881000159,-88.2474510000629,42.4948840002973));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14655,'55','059',79812931,221262681,220473610,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',52695857,52695832,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.2163599998135,42.4950519999508,-88.2159000001842,42.4950750001121,-88.2140670001913,42.495115000158));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14656,'55','059',53674177,262369474,227723756,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65179608,65179391,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.305128999703,42.5403810002838,-88.305229999864,42.5396170001254));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14657,'55','059',79810255,221262638,261751013,'S1400','128th St',NULL,'34398','34102','1537','1311','53181','60071','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',52687229,52687209,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.2261810003523,42.4950210003198,-88.2237000001542,42.4950410003428,-88.2237020002465,42.4950279997433));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14658,'55','059',53674185,260640887,214880021,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65179613,65179614,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.3050280004412,42.5311740001809,-88.3049880003953,42.5274130003106));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14659,'55','059',79817819,211919408,208210091,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',50550149,50589539,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1238350002844,42.4956030001792,-88.1238100000309,42.4956030001792,-88.1237679998927,42.4956030001792,-88.1237380003078,42.4956030001792,-88.1237140001004,42.4956030001792));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14660,'55','059',79803639,230281219,263390524,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',50550091,50550149,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1269819997189,42.4956030001792,-88.1263520003439,42.4956030001792,-88.1244639996132,42.4956030001792,-88.1238350002844,42.4956030001792));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14997,'55','059',79799555,211918402,211918400,'S1400','23rd Ave','4694','5001','5099','5000','5098','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182086,65182092,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8369159997729,42.590828000113,-87.836916999819,42.5905550001141,-87.8369230000957,42.5897350000711,-87.836925000188,42.5894630001183));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14998,'55','059',79799564,211918408,211918402,'S1400','51st St','4694','2201','2299','2200','2298','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182100,65182092,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8356940000774,42.5894399999569,-87.8359399997306,42.5894440001414,-87.8366779995894,42.5894579998877,-87.836925000188,42.5894630001183));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14999,'55','059',79799658,211918412,211918406,'S1400','24th Ave','4694','5401','5499','5400','5498','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182096,65182157,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8381279999066,42.586096000431,-87.8381269998605,42.5858649996709,-87.8381259998144,42.5851720000886,-87.8381259998144,42.5849410002279));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15000,'55','059',79799570,211918416,211918408,'S1400','22nd Ave','4694','5101','5199','5100','5198','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182100,65182102,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8356940000774,42.5894399999569,-87.8356970002158,42.5891380004193,-87.8357059997315,42.588235000146,-87.8357099999159,42.5879339997552));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15001,'55','059',79799567,211918411,211918410,'S1400','53rd St','4694','2201','2299','2200','2298','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182103,65182095,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8357079998237,42.587029000289,-87.8359510002379,42.5870260001507,-87.8366819997738,42.5870169997357,-87.8369260002341,42.5870149996434));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15002,'55','059',79799677,211918420,211918412,'S1400','23rd Ave',NULL,'5401','5499','5400','5498','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182104,65182161,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.836925000188,42.5861090001312,-87.8369230000957,42.5849539999281,-87.8369230000957,42.5848949999052));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15003,'55','059',79799572,211918417,211918414,'S1400','51st St','4694','2001','2099','2000','2098','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182106,65182101,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8334449997863,42.5894620000722,-87.833673000408,42.5894589999338,-87.8343560004284,42.5894529996571,-87.834585000197,42.5894509995649));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15004,'55','059',79800344,211918423,211918414,'S1400','20th Ave','4694','5001','5099','5000','5098','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182553,65182106,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.833451000063,42.5908270000669,-87.8334489999708,42.590554000068,-87.8334459998324,42.5897350000711,-87.8334449997863,42.5894620000722));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15005,'55','059',638424720,260641652,211918420,'S1400','22nd Ave',NULL,'5401','5437','5400','5438','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182109,424203854,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8357059997315,42.5861229998774,-87.8356869997546,42.5852219996964));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15006,'55','059',79800351,211918422,211918423,'S1400','51st St','4694','1901','1999','1900','1998','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182555,65182106,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.832286000298,42.589471999634,-87.8325170001588,42.5894700004411,-87.8332129998794,42.5894630001183,-87.8334449997863,42.5894620000722));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15007,'55','059',79800536,211919014,260641651,'S1400','19th Ave','4694','5401','5499','5400','5448','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182565,65182672,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8320540003912,42.5861569996467,-87.8320500002067,42.5859279998782,-87.8320409997917,42.5852439998117,-87.8320379996533,42.5850160000892));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15008,'55','059',605365169,262357776,223657364,'P0001',NULL,'4694',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65182117,403186919,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8443770002977,42.5803370001533,-87.8455610000395,42.5803289997844));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15009,'55','059',633433978,257537628,257537626,'S1400','25th Ave','4694','6013','6099','6010','6098','53143','53143','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',422343214,65182167,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8393159998329,42.580415000153,-87.8393010000405,42.5796479998562,-87.8392959998099,42.5793739998111));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15010,'55','059',79799605,262375849,262370762,'S1400','30th Ave','4694','6197','6299','6120','6298','53144','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182123,65182125,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8455280003163,42.5788150001131,-87.845525000178,42.5786980001135,-87.845516999809,42.5783490002071,-87.8455149997168,42.5782330002536));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15011,'55','059',79799638,211918431,211918437,'S1400','27th Ave','4694','6301','6399','6300','6398','53143','53143','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182143,65182144,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8417179999851,42.5776090002561,-87.8417080004232,42.5772770002343,-87.841706000331,42.5771699997966,-87.8417119997084,42.5765659998219,-87.8417050002849,42.5762800001228,-87.8416990000082,42.5759490001471));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15012,'55','059',79799648,211918449,211918443,'S1200','Roosevelt Rd','4694','2633','2699','2700','2712','53143','53143','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182148,65182150,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8416559998239,42.5738169998556,-87.8416739997546,42.5738060002476,-87.8417309996852,42.5737749997174,-87.8417499996621,42.5737660002017));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15013,'55','059',79799708,211918461,211918444,'S1400','25th Ave','4694','6101','6299','6100','6298','53143','53143','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182167,65182187,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8392959998099,42.5793739998111,-87.8392890003864,42.5790249999047,-87.8392680003173,42.5779780001855,-87.8392609999945,42.577629000279));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15014,'55','059',79800065,211918767,211918449,'S1400','67th St','4694','2701','2749','2626','2748','53143','53143','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182383,65182151,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.841575999732,42.5731689996505,-87.8416080003083,42.5731679996044,-87.8417050002849,42.5731669995583,-87.841738000008,42.5731669995583));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15015,'55','059',79799720,211918479,211918450,'S1400','25th Ave','4694','6401','6499','6400','6498','53143','53143','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182188,65182193,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8392270002253,42.575968000124,-87.8392230000408,42.5758049998018,-87.8392129995796,42.5753159997345,-87.8392100003406,42.5751530003116));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15016,'55','059',616103291,228619562,211918455,'S1400','22nd Ave',NULL,'5591','5599','5596','5604','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',408337985,65182172,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8357089998698,42.5835760002331,-87.8357120000081,42.5832990000497));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15017,'55','059',79799681,211918457,262356408,'S1400','23rd Ave','4694','5601','5699','5600','5698','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182163,65182173,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8369210000035,42.5835410004178,-87.8369199999574,42.5827049996369));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15018,'55','059',79799688,211918467,211918457,'R1011','Union Pacific RR','11676',NULL,NULL,NULL,NULL,NULL,NULL,'R','N','Y','N','N',NULL,NULL,'N','M',NULL,'N',NULL,'N','N','N',65182172,65182173,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8357120000081,42.5832990000497,-87.8357570002847,42.5832880004418,-87.8358760003765,42.5832369998885,-87.8369199999574,42.5827049996369));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15019,'55','059',79799698,211918464,211918459,'S1400','23rd Ave','4694','6001','6099','6000','6098','53143','53143','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182170,65182181,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.836916999819,42.5807039999905,-87.8369110004417,42.5804400004066,-87.83689599975,42.5796489999023,-87.8368910004187,42.5793860003645));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15020,'55','059',79799697,211918464,211918463,'S1400','60th St','4694','2201','2299','2200','2298','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182180,403173917,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8356269996856,42.5806839999675,-87.8358589995925,42.5806870001059,-87.8365580003508,42.5806979997138,-87.8367910003038,42.5807019998983));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15021,'55','059',605321179,211918460,211918464,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65182170,403173917,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.836916999819,42.5807039999905,-87.8368910004187,42.5807029999444,-87.836815999658,42.5807019998983,-87.8367910003038,42.5807019998983));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15408,'55','059',79818460,211918106,211921487,'S1400','84th St',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'T','N','N',65181585,65187965,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8753949998787,42.5529459996591,-87.8754970000858,42.5529469997052));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15409,'55','059',605323392,211918438,262372955,'S1400','63rd St',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',65182132,403174232,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8441800002062,42.5776009998871,-87.8442269996756,42.5776009998871));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15410,'55','059',79799617,211918438,262372955,'S1400','63rd St','4694','2801','2899','2800','2898','53143','53143','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182134,65182132,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8429950004183,42.5776120003944,-87.8432319996564,42.5776090002561,-87.8439420000227,42.5776029999794,-87.8441800002062,42.5776009998871));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15411,'55','059',79814888,262379438,262372955,'S1400','30th Ave','4694',NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',65182129,65187240,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8454919995555,42.5775900002792,-87.8454929996016,42.5776219999562,-87.84549599974,42.5777179998867,-87.8454979998322,42.5777509996099));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15412,'55','059',79800869,211919216,259731912,'S1400','55th St','4694','701','799','700','798','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182862,65182670,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8201500000218,42.5858010003168,-87.8203629999518,42.585773999971,-87.8210049998802,42.5856949999252,-87.8212189998563,42.5856699996717));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15413,'55','059',638428740,260643646,262368704,'P0004',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',424205494,424205495,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8254770001628,42.5613709996728,-87.8253529998404,42.5613660003415,-87.8226490001506,42.5613430001802,-87.8225120001281,42.561341000088));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15414,'55','059',79796427,211920320,262379222,'S1740',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180051,65180052,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8557470003232,42.6042179997618,-87.8564260001592,42.6042120003844));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15415,'55','059',79796413,236466903,262379222,'S1400','39th Ave','4694','2701','2799','2700','2798','53144','53144','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180042,65180043,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8558210001384,42.6139410002779,-87.855816999954,42.6137579999327,-87.8558080004382,42.6132129999809,-87.8558050002999,42.6130309996818));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15416,'55','059',79815933,236466580,262379222,'S1400','39th Ave','4694','3001','3399','3000','3398','53144','53144','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180045,65180051,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8557650002539,42.6108489997824,-87.8557549997928,42.6102849998538,-87.8557470003232,42.6042179997618));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15417,'55','059',79807518,228619559,211921541,'S1400','Washington Rd','4694','3901','4099','3900','4098','53144','53144','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180055,65180030,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8557450002309,42.6030489998124,-87.8561229996761,42.6030560001352,-87.8568960002495,42.6030730000198,-87.85725699981,42.6030760001582,-87.8576360002006,42.6030810003888));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15418,'55','059',79798164,211920157,211921569,'S1200','52nd St','4694',NULL,NULL,'7000','7800',NULL,'53144','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','Y','N',65181200,65179970,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8971090002795,42.5888159999594,-87.8981499997221,42.5887959999363,-87.8986890002965,42.5887850003284,-87.8990170001338,42.5887790000517,-87.8995810000625,42.5887670003976,-87.9001449999911,42.5887650003054,-87.9007900000578,42.5887769999595,-87.9012729998484,42.5887949998902,-87.9034300003935,42.5888489996825,-87.9050109995574,42.5888899997746));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15419,'55','059',79799393,211921580,211921580,'S1400','64th St','4694','3501','3699','3500','3698','53142','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65181994,65181996,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8513000002941,42.5767399997521,-87.8515209996937,42.5767439999366,-87.8521859997834,42.5767559995906,-87.8524080001285,42.576759999775));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15420,'55','059',79820569,259731821,211921582,'S1710','County Bike Trl',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65188619,65188620,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8352399998255,42.6333879995574,-87.8352870001943,42.6333230001572,-87.8354299995942,42.6331310002963,-87.8354780000091,42.6330670000429));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15421,'55','059',79800320,211918661,257367529,'S1400','44th Pl','4694','1901','2099','1900','2098','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182537,65182073,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8332420003174,42.5955720003485,-87.8335110001319,42.5955690002101,-87.8343199996676,42.5955619998873,-87.8345900004275,42.5955599997951));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15422,'55','059',79814402,262368977,211921595,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65183298,65183303,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8291749998257,42.5429799996282,-87.8292879996408,42.5429760003431,-87.8296280000316,42.5429659998819,-87.8297419998927,42.5429639997897));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15423,'55','059',600439287,211918841,221258949,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',400371606,65180044,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.847946000307,42.6146180000216,-87.8477120003079,42.6145220000911,-87.8475780004238,42.6144680002989,-87.8474980003318,42.614449000322,-87.84737900024,42.6139339999551,-87.8473230003555,42.613689000348));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15424,'55','059',622466857,211921391,236539057,'S1400','64th Ave','4694','4501','4531','4600','4662','53144','53144','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65181207,413160328,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8852169995642,42.5959689997704,-87.8852490001406,42.5959099997476,-87.8852480000945,42.5958630002781,-87.8852419998178,42.5955239999336,-87.8852419998178,42.5955110002334));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15425,'55','059',79819856,211920407,223657025,'S1400','35th St','4694',NULL,NULL,'2700','2746',NULL,'53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180171,65188595,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8419059996615,42.6061630004231,-87.8421550003524,42.6061590002386));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15426,'55','059',79796579,211920340,223657027,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65180158,65180157,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8432179999101,42.607491999657,-87.843732000231,42.6075070003487,-87.8452770004326,42.6075519997259,-87.8457919999003,42.6075679995644));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15427,'55','059',79798773,262363166,223657059,'S1400','52nd Ave','4694','7001','7005','7000','7018','53142','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65181600,65181601,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8699859995536,42.5704759995687,-87.8699840003607,42.5703780004453,-87.869978000084,42.5700840003772,-87.8699770000379,42.5699860003546));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15428,'55','059',605365871,223657562,260641847,'P0001',NULL,'4694',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65185621,65180295,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8268739998346,42.6134330002337,-87.8274029999478,42.6096769996947));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15429,'55','059',79796825,260641847,260641847,'S1400','29th St','4694','1701','1799','1700','1798','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180299,65180280,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8300299996841,42.6115400001718,-87.8302580003058,42.6115380000795,-87.8309449996114,42.6115309997567,-87.8311750003253,42.6115299997106));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15430,'55','059',79799596,262375849,262357776,'S1400','28th Ave','4694','6001','6099','6000','6098','53143','53143','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182118,65182119,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8432220000946,42.5808110004282,-87.8432159998179,42.5805570004061,-87.8431999999794,42.5797979995789,-87.8431949997488,42.5795449996029));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15431,'55','059',605365428,262380558,223657451,'S1400','28th Ave','4694','3803','3931','3808','3998','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',403187051,65180185,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8432590000022,42.6025809998142,-87.8432579999561,42.6023119999997,-87.8432579999561,42.6011789999118,-87.8432579999561,42.6008019996135));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15432,'55','059',639931685,262380946,262361146,'S1400','56th St','4694','199','1',NULL,NULL,'53140',NULL,'S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',403189791,403187189,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8116080000086,42.5857509998097,-87.8120660004449,42.5856949999252,-87.8137160000927,42.5854949996954));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15433,'55','059',79800884,223657534,223657539,'S1400','6th Ave','4694','5601','5617',NULL,NULL,'53140',NULL,'S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182869,65182870,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8185999995897,42.5850839996278,-87.8185920001201,42.585045999674,-87.8185679999126,42.5849339999051,-87.8185609995898,42.5848969999975));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14296,'55','059',79803523,262373707,211920055,'S1400','98th St','4694','26884','26826','26885','26827','53179','53179','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65184615,65184616,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1333989997634,42.5323959998764,-88.1333379996483,42.5323959998764,-88.1331550002025,42.5323959998764,-88.1330950001335,42.5323959998764));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14297,'55','059',79819013,211920057,211920055,'S1400','103rd St','4694','26503','26519','26504','26606','53179','53179','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65187685,65188211,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1291780002638,42.526425999761,-88.1292609995948,42.526425999761,-88.1295120003779,42.526425999761,-88.1295959997549,42.5264269998071));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14298,'55','059',79819014,211920057,211920055,'S1400','103rd St','4694','26521','26799','26608','26798','53179','53179','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65188211,65184591,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1295959997549,42.5264269998071,-88.1300799995917,42.5264269998071,-88.1315350001395,42.5264289998993,-88.1316409996318,42.5264299999454,-88.1317399997006,42.526435000176,-88.131935999746,42.5264580003374,-88.132016999884,42.5264730001298));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14299,'55','059',79804080,262373707,211920055,'P0001',NULL,'4694',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65184616,65184995,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1330950001335,42.5323959998764,-88.1322289997679,42.5323969999225));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14300,'55','059',79817795,211920057,211920061,'S1400','103rd Pl','4694','26610','26798','26699','26511','53179','53179','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65184618,65187686,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1311070001873,42.5255879997873,-88.1307239996123,42.5255869997412,-88.1295779998242,42.5255869997412,-88.1291960001946,42.5255869997412));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14301,'55','059',633434182,257537670,257537668,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',422343249,422343250,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1139599999534,42.4975590004484,-88.1139919996305,42.4986909995908));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14302,'55','059',79811756,257537668,257537668,'S1400','125th St','4694','24998','24900','24999','24901','53179','53179','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65185313,65186032,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.111423999917,42.5008110002284,-88.1113340002632,42.5007629998135,-88.111221999595,42.5007219997214,-88.1112000003791,42.5007170003902,-88.1111170001488,42.5006980004133,-88.1110079996188,42.5006849998138,-88.1104740001743,42.5006839997677,-88.110451000013,42.5006839997677,-88.1102430003136,42.5006140001369));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14303,'55','059',79818536,211918858,211920527,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65187982,65187983,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.0866420001275,42.5646499997986,-88.0866640002428,42.5645759999833,-88.0867319997813,42.5643569997766,-88.0867549999426,42.5642850000536));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14304,'55','059',637717885,260640943,260640945,'S1400','Fox River Rd',NULL,'8965','9035','8944','9100','53105','53105','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65186357,423925597,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1808049996504,42.5452419996195,-88.1805199999974,42.5444639997147));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14305,'55','059',638423175,260640943,260640945,'S1400','Fox River Rd',NULL,'9037','9105',NULL,NULL,'53105',NULL,'S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',423925597,424203228,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1805199999974,42.5444639997147,-88.1801259998144,42.5440579998777,-88.1798279995619,42.5427980002285));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14306,'55','059',79817765,211920044,260640945,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65187673,65187674,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1873779996943,42.5388899998745,-88.1875060002011,42.5412000002807,-88.1875450002009,42.541913999932));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14307,'55','059',79818984,228694101,228694100,'S1400','241st Ave',NULL,'11706','11606','11615','11601','53179','53179','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65188194,65188193,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.0996979996623,42.5087440000365,-88.0995590004468,42.5089020001281,-88.0994689998938,42.5090190001276,-88.0993879997557,42.5091380002194,-88.0993149999866,42.5092609995963,-88.0992509997332,42.509387000011,-88.0992250003329,42.5094449999877,-88.0991959998948,42.5095139995723,-88.0991499995722,42.5096440001714));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14308,'55','059',79797066,211920845,211920685,'S1400','119th St','4694',NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180450,65180447,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.117035999711,42.5064989999298,-88.1172749999407,42.5064979998837,-88.1179949998687,42.5064959997915,-88.1182360001906,42.5064959997915));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14309,'55','059',79797065,211920845,211920031,'S1400','256th Ave','4694','11901','12099','11900','12098','53179','53179','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180447,65180449,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1182360001906,42.5064959997915,-88.1182320000062,42.5059360000473,-88.1182200003521,42.5042580000076,-88.1182160001676,42.5036990003095));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14310,'55','059',79816549,211919417,211920686,'S1400','259th Ave','4694','12002','12000',NULL,NULL,'53179',NULL,'S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65180442,65187391,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1210739997646,42.5046079999601,-88.121086000318,42.5048789998668,-88.1211240002718,42.5056929996331,-88.121136999972,42.505964999586));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14311,'55','059',79813706,259731604,259731604,'S1400','112th St','4694','30801','30899',NULL,NULL,'53192',NULL,'S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65184395,65180460,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1825890000816,42.5144590000837,-88.1827799998964,42.5145279996684,-88.1833540002863,42.514735000221,-88.1835460001471,42.5148049998518));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14312,'55','059',636695191,259731604,259731604,'S1400','111th St',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65184386,65184394,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1842870001443,42.5159179999167,-88.1842070000524,42.5158979998937,-88.1839669997766,42.5158379998247,-88.1838869996847,42.5158179998018,-88.1835029999629,42.5157450000326,-88.1823519999442,42.5155269998721,-88.1819690002685,42.515455000149));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14313,'55','059',79806885,211918121,211920725,'S1400','Fox River Rd','4694','11335','11507','11348','11510','53192','53181','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65184403,65186010,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1826340003582,42.511483000441,-88.1828779999191,42.5111470002348,-88.1835460001471,42.5102290001691,-88.1836339997087,42.5101649999157,-88.1839730000532,42.5099249996399));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14314,'55','059',79802948,259732302,262366107,'R1011','Canadian National RR','11676',NULL,NULL,NULL,NULL,NULL,NULL,'R','N','Y','N','N',NULL,NULL,'N','M',NULL,'N',NULL,'N','N','N',65184159,65184219,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1881969996911,42.570416000399,-88.1879970003606,42.5702509999846,-88.1876020001316,42.5699139997322,-88.1872770004326,42.5696449999177,-88.1866189997664,42.569101000012,-88.1856190004159,42.5682830000613,-88.1852189999562,42.5679499999934,-88.1851270002102,42.5678819995555,-88.1845020001666,42.5673569996267,-88.183585000147,42.5665860000448));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14315,'55','059',605365022,223658456,223657320,'S1200','75th St','4694','28801','30399',NULL,NULL,'53168',NULL,'S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',403186831,403186832,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1580420003374,42.5682959997615,-88.1622150003214,42.5682880002919,-88.1668550002574,42.5682840001074,-88.1715399995707,42.5682440000614,-88.1742490003904,42.5682159996696));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14316,'55','059',79811468,262366107,211920770,'S1400','75th St','4694','31198','31000','31199','31001','53168','53168','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',403173988,65179561,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1879700000148,42.567865999717,-88.1876050002699,42.5678669997631,-88.1865910002738,42.5678719999937,-88.1865130002741,42.5678730000398,-88.1862980002519,42.5678790003165,-88.1861939999525,42.5678699999015,-88.1861519998143,42.5678580002474));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14317,'55','059',79802988,211920780,262383485,'S1400','Riverside Dr','4694','8199','8101','8100','8210','53168','53168','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65184243,65184245,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1807220003194,42.5586019996834,-88.1803249999981,42.5583709998227,-88.1791349999796,42.5576790002866,-88.1787389997044,42.5574489995726));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14318,'55','059',79811482,211920769,211920775,'S1400','305th Ave','4694','7901','7951','7900','7952','53168','53168','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65184283,65184234,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1796060001162,42.5624829996916,-88.1795809998626,42.5624740001759,-88.1793839997711,42.5623119998998,-88.1787340003732,42.5617770004092,-88.1785180003048,42.5615990002946));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14319,'55','059',79807663,262383485,211920781,'P0002',NULL,'5726',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65186018,65186355,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1830360000108,42.5575580001025,-88.1828100003806,42.5575469995953,-88.1823780002439,42.5575269995723,-88.1821359998759,42.557492999803,-88.1820280002913,42.5574790000567,-88.1819149995769,42.5574529997571));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14661,'55','059',79803640,230281219,263390524,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',50550092,50550091,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.13809599963,42.4956040002253,-88.1358729996386,42.4956030001792,-88.1292039996642,42.4956030001792,-88.1269819997189,42.4956030001792));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14662,'55','059',79820629,230281219,262601273,'S1740',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',50602304,50602302,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1474209997787,42.4955620000871,-88.1469810001724,42.4955640001794,-88.1456629996471,42.495571999649,-88.1452240000869,42.4955759998334));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14663,'55','059',636917541,211921238,259901423,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',50550098,423605422,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1013419999327,42.4956200000639,-88.1009940000724,42.4956200000639));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14664,'55','059',79804778,211921239,208217163,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',50574322,50550094,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1090799997415,42.4956129997411,-88.1090019997418,42.4956129997411,-88.1087689997889,42.4956129997411,-88.1086919998353,42.4956129997411));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14665,'55','059',79817820,211921251,262651021,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',50589539,50550097,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1237140001004,42.4956030001792,-88.1180070004221,42.4956060003176));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14666,'55','059',629857626,260341140,250216231,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',50550147,418950612,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.0806499998969,42.4956289995796,-88.0804279995519,42.4956270003867));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14667,'55','059',77917284,211919657,214800626,'S1400','1st St','2665','1043','1157','3682','3778','53403','53403','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65183716,65186524,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8231329999873,42.6678169999555,-87.8236840002158,42.6678190000477));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14668,'55','059',77906703,262364417,261235946,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65184411,65184416,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8056179998702,42.6681679999542,-87.8061730002831,42.6680180002314,-87.8077670000464,42.6678109996788,-87.8080840002758,42.6678080004398,-87.8081079995839,42.6678070003937));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14669,'55','059',79811155,211917820,220471847,'S1400','Stateline Rd','4694',NULL,NULL,NULL,NULL,NULL,NULL,'S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',52701600,52688802,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.2706960000198,42.4946910003903,-88.2706630002966,42.4946900003441,-88.2705680004123,42.4946880002519,-88.270536999882,42.4946870002058,-88.2704169997441,42.4946840000675,-88.2702809997677,42.4946809999291,-88.2700960002296,42.4946769997446));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14670,'55','059',77903241,211917512,214798513,'S1400','31st St','2665','36231','36799','31600','31798','53105','53105','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65179293,65179292,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.2500819999836,42.6110530001967,-88.256799000373,42.611055000289));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14671,'55','059',77921731,211921592,250919765,'S1400','31st St','4694','37593','37599',NULL,NULL,'53105',NULL,'S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65188920,65179291,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.2664640000129,42.6110570003812,-88.2664789998054,42.6110570003812,-88.2665260001741,42.6110570003812,-88.2665420000126,42.6110580004273));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14672,'55','059',77903255,211921596,228048579,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65179621,65179622,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.2958740000844,42.6108620003819,-88.3024779997592,42.6108319998978,-88.3025149996669,42.6108319998978));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14673,'55','059',630555392,250930045,250930044,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',419546393,419546381,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8067699999349,42.5228209998901,-87.8056620001006,42.5155550002639));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14674,'55','059',630555234,250929967,250929966,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',419551539,419546789,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8063320004209,42.651554000018,-87.808796999881,42.6452640004342,-87.8113200002172,42.6363959997765,-87.8121289997529,42.6268949996054));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14675,'55','059',630555360,250930034,250930036,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65182915,419551619,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8125310003048,42.5805950003599,-87.8100989996685,42.5805419997144,-87.8071880003253,42.5804799995532));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14676,'55','059',77921310,214800298,250929967,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65179283,65188916,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.2500590000222,42.6652389997809,-87.2289050002649,42.6649710000125,-87.2077529997005,42.6647050003364));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14677,'55','059',77901836,214800298,250929967,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',65179281,65179288,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.3750619999107,42.6666449998677,-87.2500590000222,42.6650970004271));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14678,'55','059',630547669,250930029,250930035,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',419546377,65186088,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8078169996542,42.5910369998585,-87.803711000062,42.5929160001742,-87.8015199997475,42.593918999663));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14679,'55','059',630548358,251591527,250930052,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',50550155,419546683,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.7934000003091,42.491721000125,-87.7948139998655,42.491792999848,-87.7972719999023,42.4919200003087));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14680,'55','059',635598789,214801984,211918399,'S1400','1st St','4694','21116','21000','21903','21601','53139','53139','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65186467,65184674,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.0746690001736,42.6697380004093,-88.0739179997153,42.6697409996483,-88.071665000139,42.6697520001556,-88.0709149997268,42.66975600034,-88.0708769997731,42.66975600034,-88.0707629999119,42.66975600034,-88.0707249999581,42.66975600034));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14681,'55','059',79808837,211918531,211918532,'S1400','45th St','4694','21645','21961','21600','21960','53104','53104','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65186223,65179895,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.070499000328,42.5973790000417,-88.0712679998177,42.5973830002262,-88.0735750000856,42.5973959999264,-88.0743449996214,42.5974010001569));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (14682,'55','059',79807883,211919092,211918570,'S1400','31st St','4694','30684','30020','30685','29901','53105','53105','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65186434,65186431,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-88.1823879998057,42.6117000003557,-88.1822800002212,42.6117340001249,-88.18205699983,42.6118209996403,-88.1818559995541,42.6119150003778,-88.1817009996008,42.6120029999394,-88.181519000201,42.6121240001234,-88.1813759999018,42.6122400000768,-88.1812290003174,42.6123760000532,-88.1810480000645,42.6125740001909,-88.1809589995576,42.6126579995679,-88.180902999673,42.6127120002595,-88.180769999835,42.6128209998901,-88.1806270004351,42.6129220000512,-88.1804460001821,42.6130309996818,-88.1802599996986,42.6131279996584,-88.1800770002527,42.6132069997042,-88.1798539998616,42.6132869997961,-88.1796219999547,42.6133520000956,-88.179382999725,42.6134009996573,-88.1791400002102,42.613436000372,-88.1788929996116,42.6134540003028,-88.1786449998662,42.613456000395,-88.1783980001669,42.6134429997955,-88.1782020001216,42.6134209996803,-88.1780080001685,42.6133879999571,-88.1778180003998,42.6133459998189,-88.1775869996397,42.6132800003726,-88.1774090004244,42.6132160001192,-88.1771950004483,42.6131240003732,-88.1769920000801,42.6130179999816,-88.1767139998506,42.6128430000053,-88.1765840001509,42.6127439999366,-88.1762140001753,42.6123869996612,-88.1762009995758,42.6123750000071,-88.1759339998536,42.6121280003078,-88.1758309996003,42.6120270001468,-88.1756219998548,42.6118839998476,-88.1755079999936,42.6118209996403,-88.1753340000634,42.6117370002632,-88.1752190001561,42.6116919999867,-88.1750060002261,42.6116319999178,-88.1747140002503,42.6115679996644));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15022,'55','059',79799717,228313451,211918465,'S1400','63rd St','4694','2301','2399','2300','2398','53143','53143','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182191,65182189,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8368549996579,42.5776470002098,-87.8370949999336,42.5776450001176,-87.8378169999539,42.5776389998409,-87.8380580002759,42.5776379997948));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15023,'55','059',79799694,211918460,211918467,'S1400','57th St',NULL,NULL,NULL,'2226','2298',NULL,'53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182179,65182178,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.836804000004,42.5825689996605,-87.8368260001192,42.5825830003061,-87.8368939996577,42.5826269996372,-87.836916999819,42.582642000329));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15024,'55','059',79799741,211918496,211918472,'S1400','22nd Ave','4694','6201','6299','6200','6298','53143','53143','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182204,65182202,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8355460004469,42.5785280003678,-87.8355460004469,42.5783530003916,-87.8355460004469,42.5778289996096,-87.8355460004469,42.5776549996794));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15025,'55','059',79799742,211918496,211918476,'S1400','62nd St','4694','2001','2199','2000','2198','53143','53143','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182205,65182204,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8334120000631,42.5785450002525,-87.8338379999231,42.578541000068,-87.8351189996415,42.5785309996069,-87.8355460004469,42.5785280003678));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15026,'55','059',79800599,211921573,211918476,'S1400','20th Ave','4694','6101','6199','6100','6198','53143','53143','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182683,65182205,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8334360002706,42.5794050003414,-87.83343100004,42.5792329996041,-87.8334160002476,42.5787170000904,-87.8334120000631,42.5785450002525));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15027,'55','059',79799739,211918483,228313451,'S1400','23rd Ave','4694','6301','6321','6300','6328','53143','53143','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182191,65182203,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8368549996579,42.5776470002098,-87.8368500003266,42.5774079999801,-87.8368349996349,42.5766910001904,-87.8368310003497,42.5764530000068));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15028,'55','059',79799757,211918492,211918489,'S1400','23rd Ave','4694','6601','6699','6600','6698','53143','53143','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182200,65182215,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8367870001193,42.5742930002227,-87.8367819998887,42.5740770001543,-87.8367690001886,42.5734299999954,-87.8367650000041,42.5732149999732));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15029,'55','059',79799744,211918495,211918496,'S1400','63rd St','4694','2133','2199','2100','2198','53143','53143','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182207,65182202,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8346420001276,42.5776609999561,-87.8348220003344,42.5776589998638,-87.835365000194,42.5776549996794,-87.8355460004469,42.5776549996794));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15030,'55','059',79799756,211918493,211918497,'S1400','65th St','4694','2201','2299','2200','2298','53143','53143','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182214,65182213,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8356040004236,42.5753009999421,-87.8358439998001,42.5752979998038,-87.8365659998204,42.5752910003803,-87.8368070001423,42.575289000288));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15031,'55','059',79799751,211918504,211918500,'S1400','64th St','4694','2001','2099','2000','2098','53143','53143','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182212,65182210,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8333560001786,42.5766969995678,-87.8335819998088,42.5766950003749,-87.834262999737,42.5766890000982,-87.8344910003588,42.5766880000521));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15032,'55','059',636475261,259385582,259385575,'S1400','20th Ave','4694','6301','6365','6300','6310','53143','53143','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',423439690,65182714,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8333810004322,42.5775229998874,-87.8333740001094,42.577275000142,-87.833370999971,42.5771770001194));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15033,'55','059',636475284,259385576,259385575,'S1200','63rd St',NULL,NULL,NULL,'2131','2001',NULL,'53143','S','N','N','Y','N',NULL,NULL,'N',NULL,NULL,'N',NULL,'N','N','N',423439693,423439690,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8346139997357,42.5774829998415,-87.8343659999903,42.5775130003256,-87.8333810004322,42.5775229998874));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15034,'55','059',636475544,259387438,259387174,'S1400','14th Ave','4694','6301','6399','6300','6398','53143','53143','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',423439716,65182785,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8270719999722,42.5776450001176,-87.8270629995571,42.5773219996115,-87.8270269996956,42.5761339996852,-87.8270150000416,42.5757390003555));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15035,'55','059',79804405,211917578,259777170,'S1400','40th Ave','4694','7498','7300','7499','7301','53142','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65185157,65182230,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8564519995595,42.5662499998385,-87.8564539996517,42.5663649997459,-87.8564599999284,42.5666579997678,-87.8564630000668,42.5667759998134,-87.856485000182,42.5678839996478,-87.8564939996977,42.5682929996232));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15036,'55','059',605365178,223657368,259777170,'S1400','39th Ave','4694','7301','7325','7300','7478','53142','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182243,403186925,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8551550000026,42.5682969998076,-87.8551450004408,42.5678879998322,-87.8551210002333,42.5667700004361,-87.855118000095,42.5666629999984,-87.8551139999105,42.5664649998608));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15037,'55','059',79799874,211918524,211918522,'S1400','69th St','4694','3601','3699','3600','3698','53142','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182279,65182241,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8519319997613,42.5713850001186,-87.8521499999219,42.5713819999802,-87.8528040004036,42.5713729995652,-87.853022999711,42.5713710003723));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15038,'55','059',79799816,211918529,223657368,'S1400','38th Ave','4694','7301','7399','7300','7398','53142','53142','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65182247,65182249,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8540369997071,42.5683119996,-87.8540300002837,42.5680629998085,-87.8540120003529,42.5673179996269,-87.8540070001223,42.5670699998815));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15039,'55','059',640381447,263000921,263000920,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',424557625,424557626,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.9715280003163,42.5824470003297,-87.9715189999013,42.5798179996019,-87.9689340003032,42.5798179996019,-87.9689290000726,42.5785230001372,-87.9682549995679,42.5785280003678,-87.9682369996372,42.5772990003495));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15040,'55','059',622427922,236465961,236465960,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',413104379,413104361,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8469150004263,42.6256309997717,-87.8469150004263,42.6255590000487,-87.8458950001535,42.6255179999566));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15041,'55','059',79798364,211921451,211918631,'S1400','60th Ave','4694','6301','6413',NULL,NULL,'53142',NULL,'S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','Y',65181322,65185262,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8794940000474,42.5779190001626,-87.8794940000474,42.5776050000716,-87.8794960001397,42.5766659999368,-87.8794980002319,42.5763539999381));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15042,'55','059',622447822,236475065,262378072,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'N','N','N',413133321,65186485,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8685030004125,42.5957189999328,-87.8685030004125,42.5957329996791,-87.8685049996054,42.5958499996786));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15043,'55','059',79808424,262379222,211918657,'S1400','45th Ave','4694','3026','2900','3003','2901','53144','53144','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65186544,65186541,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8639120000381,42.6109520000357,-87.8639120000381,42.6111140003118,-87.8639130000843,42.6116020003329,-87.8639140001304,42.6117649997558));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15044,'55','059',638424396,260641530,211918660,'S1400','17th Ave','4694','4411','4427','4408','4426','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',424203714,424203722,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8300760000067,42.5956650001406,-87.8300709997762,42.595225999681));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15045,'55','059',79804189,257367529,211918661,'P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N',NULL,NULL,'B',NULL,NULL,NULL,NULL,'N','N','N',65182537,65185040,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8332420003174,42.5955720003485,-87.8331250003179,42.5955720003485,-87.8327740003192,42.5955720003485,-87.8326580003658,42.5955720003485));
   str_sql := 
q'[Insert into TL_2014_55059_EDGES(objectid,statefp,countyfp,tlid,tfidl,tfidr,mtfcc,fullname,smid,lfromadd,ltoadd,rfromadd,rtoadd,zipl,zipr,featcat,hydroflg,railflg,roadflg,olfflg,passflg,divroad,exttyp,ttyp,deckedroad,artpath,persist,gcseflg,offsetl,offsetr,tnidf,tnidt,shape) Values (15046,'55','059',79804188,211918663,211918661,'S1400','19th Ave','4694','4415','4499','4414','4498','53140','53140','S','N','N','Y','N',NULL,'N','N',NULL,'N','N',NULL,'N','N','N',65185040,65182536,:p01)]';
   EXECUTE IMMEDIATE str_sql USING
MDSYS.SDO_GEOMETRY(2002,8265,NULL,MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1),MDSYS.SDO_ORDINATE_ARRAY(-87.8326580003658,42.5955720003485,-87.8326550002274,42.5954290000492,-87.8326530001352,42.5952200003037,-87.8326540001813,42.5950000000508,-87.8326560002736,42.5948579997977));

END load12_tl_2014_55059_edges;
/

GRANT EXECUTE ON load12_tl_2014_55059_edges TO public;

