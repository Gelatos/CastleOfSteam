//Maya ASCII 2011 scene
//Name: diningroom.ma
//Last modified: Sat, Oct 19, 2013 12:48:51 PM
//Codeset: 1252
requires maya "2011";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2011";
fileInfo "version" "2011";
fileInfo "cutIdentifier" "201003190014-771504";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 32-bit Windows 7  (Build 7600)\n";
createNode transform -n "dining_wall";
createNode transform -n "polySurface108" -p "dining_wall";
createNode mesh -n "polySurfaceShape157" -p "polySurface108";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50002749804174407 0.48800042743866245 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 78 ".uvst[0].uvsp[0:77]" -type "float2" 0.47475037 0.10101998 
		0.47475034 0.18264624 0.39229545 0.31535438 0.39229539 0.10102004 0.52530462 0.18290725 
		0.60775948 0.31646657 0.087830171 0.31535435 0.087830171 0.10102004 0.52530462 0.10101998 
		0.60775954 0.10101998 0.91222483 0.10102 0.91222477 0.3164666 0.64910817 0.66064644 
		0.64910823 0.87498081 0.51910073 0.87498093 0.51910079 0.66064644 0.38909322 0.6606465 
		0.38909322 0.87498093 0.47475028 0.53772718 0.39229539 0.53772718 0.39229539 0.3233929 
		0.47475025 0.45610106 0.087830245 0.53772724 0.08783026 0.32339293 0.60775948 0.32228059 
		0.52530473 0.45584002 0.60775948 0.53772718 0.52530473 0.53772718 0.91222477 0.32228062 
		0.91222483 0.53772724 0.65220982 0.75883639 0.65220976 0.5433898 0.75850701 0.57537335 
		0.75850701 0.69347012 0.91222483 0.54338974 0.80592763 0.57537329 0.71721351 0.75883639 
		0.77036214 0.70381355 0.91222477 0.75883633 0.80592752 0.69347012 0.78221738 0.75883633 
		0.78221738 0.70949948 0.84722102 0.75883639 0.79407239 0.70381349 0.53101134 0.64763707 
		0.64910817 0.64763713 0.64910817 0.65587902 0.53101134 0.65587896 0.52066797 0.65587896 
		0.52066797 0.64763707 0.60168761 0.62161827 0.64910817 0.62161827 0.64910817 0.62986016 
		0.60168761 0.62986016 0.52066803 0.63462764 0.63876474 0.6346277 0.63876474 0.64286959 
		0.52066803 0.64286953 0.64910817 0.6346277 0.64910817 0.64286959 0.63725299 0.61685073 
		0.63725299 0.60860884 0.64910817 0.60860884 0.64910817 0.61685073 0.62539786 0.61685073 
		0.62539786 0.60860884 0 0.85400546 1 0.85400546 1 0 0 0 0 0 1 0 1 0.85400534 0 0.85400534 
		8.9952434e-015 0 0.82867092 7.6016142e-015 0.82867092 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 43 ".vt[0:42]"  -11.618552 -3.6854124e-015 32.678036 -11.618552 
		23.115276 32.678036 11.618549 -3.9166092e-015 32.678036 11.618549 23.235222 32.678036 
		-44.454159 -3.8572716e-015 32.678036 -44.454159 23.115276 32.678036 44.454159 -3.6142769e-015 
		32.678036 44.454159 23.235222 32.678036 -44.454159 23.115276 46.698929 -44.454159 
		-3.935429e-015 46.698929 -2.7260623 -4.6978933e-015 32.678036 -2.7260623 8.8031301 
		32.678036 2.7260597 8.8312778 32.678036 2.7260597 -4.2189424e-015 32.678036 -11.618552 
		-3.6854124e-015 60.719822 -11.618552 23.115276 60.719822 11.618549 -3.9166092e-015 
		60.719822 11.618549 23.235222 60.719822 -44.454159 -3.8572716e-015 60.719822 -44.454159 
		23.115276 60.719822 44.454159 -3.6142769e-015 60.719822 44.454159 23.235222 60.719822 
		-2.7260623 -4.6978933e-015 60.719822 -2.7260623 8.8031301 60.719822 2.7260597 8.8312778 
		60.719822 2.7260597 -4.2189424e-015 60.719822 44.454159 3.4493163 44.141846 44.454159 
		16.185684 44.141846 44.454159 3.4493163 49.256012 44.454159 16.185684 49.256012 45.343014 
		3.4493163 44.141846 45.343014 16.185684 44.141846 45.343014 3.4493163 49.256012 45.343014 
		16.185684 49.256012 44.454159 23.235222 39.68848 44.454159 17.301189 45.420387 45.343014 
		17.301189 45.420387 44.454159 23.235222 46.698929 44.454159 17.914391 46.698929 45.343014 
		17.914391 46.698929 44.454159 23.235222 53.709373 44.454159 17.301189 47.97747 45.343014 
		17.301189 47.97747;
	setAttr -s 74 ".ed[0:73]"  10 0 0 11 1 0 
		0 1 0 13 2 0 12 3 0 2 3 0 
		3 1 0 0 4 0 1 5 0 4 5 0 
		2 6 0 3 7 0 6 7 0 4 9 0 
		5 8 0 8 9 0 10 11 0 13 12 0 
		12 11 0 22 14 0 23 15 0 14 15 0 
		25 16 0 24 17 0 16 17 0 17 15 0 
		14 18 0 15 19 0 18 19 0 16 20 0 
		17 21 0 20 21 0 18 9 0 19 8 0 
		22 23 0 25 24 0 24 23 0 6 20 0 
		21 40 0 6 26 0 7 27 0 26 27 0 
		20 28 0 26 28 0 21 29 0 28 29 0 
		29 41 0 26 30 0 27 31 0 30 31 0 
		28 32 0 30 32 0 29 33 0 32 33 0 
		33 42 0 34 7 0 35 27 0 34 35 1 
		36 31 0 35 36 1 37 34 0 38 35 0 
		37 38 1 39 36 0 38 39 1 40 37 0 
		41 38 0 40 41 1 42 39 0 41 42 1 
		19 5 0 1 15 0 7 21 0 17 3 0;
	setAttr -s 29 ".fc[0:28]" -type "polyFaces" 
		f 4 16 1 -3 -1 
		mu 0 4 0 1 2 3 
		f 4 -18 3 5 -5 
		mu 0 4 4 8 9 5 
		f 4 -19 4 6 -2 
		mu 0 4 1 4 5 2 
		f 4 2 8 -10 -8 
		mu 0 4 3 2 6 7 
		f 4 -6 10 12 -12 
		mu 0 4 5 9 10 11 
		f 4 9 14 15 -14 
		mu 0 4 12 13 14 15 
		f 4 19 21 -21 -35 
		mu 0 4 18 19 20 21 
		f 4 23 -25 -23 35 
		mu 0 4 25 24 26 27 
		f 4 20 -26 -24 36 
		mu 0 4 21 20 24 25 
		f 4 26 28 -28 -22 
		mu 0 4 19 22 23 20 
		f 4 30 -32 -30 24 
		mu 0 4 24 28 29 26 
		f 4 32 -16 -34 -29 
		mu 0 4 16 15 14 17 
		f 4 -13 39 41 -41 
		mu 0 4 30 31 32 33 
		f 4 37 42 -44 -40 
		mu 0 4 31 34 35 32 
		f 4 31 44 -46 -43 
		mu 0 4 34 38 39 35 
		f 4 38 67 -47 -45 
		mu 0 4 38 42 43 39 
		f 4 -42 47 49 -49 
		mu 0 4 44 45 46 47 
		f 4 43 50 -52 -48 
		mu 0 4 50 51 52 53 
		f 4 45 52 -54 -51 
		mu 0 4 54 55 56 57 
		f 4 46 69 -55 -53 
		mu 0 4 55 58 59 56 
		f 4 55 40 -57 -58 
		mu 0 4 36 30 33 37 
		f 4 -60 56 48 -59 
		mu 0 4 48 49 44 47 
		f 4 60 57 -62 -63 
		mu 0 4 40 36 37 41 
		f 4 -65 61 59 -64 
		mu 0 4 60 61 62 63 
		f 4 65 62 -67 -68 
		mu 0 4 42 40 41 43 
		f 4 -70 66 64 -69 
		mu 0 4 64 65 61 60 
		f 4 27 70 -9 71 
		mu 0 4 66 67 68 69 
		f 4 11 72 -31 73 
		mu 0 4 70 71 72 73 
		f 4 -7 -74 25 -72 
		mu 0 4 74 75 76 77 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "polySurface109" -p "dining_wall";
createNode mesh -n "polySurfaceShape158" -p "polySurface109";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47056552691573561 0.50650046839163876 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.51845324 0.75863194 
		0.51996005 0.23164549 0.56860113 0.23179692 0.56709445 0.71634316 0.46981215 0.78180951 
		0.47131896 0.23149413 0.42117101 0.75832921 0.42267781 0.23134279 0.37252995 0.71573764 
		0.37403676 0.23119143;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  45.330952 16.177692 44.122063 45.343113 
		3.4413924 44.161667 45.355076 3.4573073 49.275795 45.342915 16.193607 49.236191 45.333942 
		17.297211 45.400593 45.346104 3.4453712 45.440201 45.336933 17.914391 46.679123 45.349094 
		3.4493499 46.718731 45.339924 17.305168 47.957657 45.352085 3.4533286 47.997261;
	setAttr -s 13 ".ed[0:12]"  1 0 0 1 5 0 
		2 3 0 3 8 0 4 0 0 5 7 0 
		4 5 1 6 4 0 7 9 0 6 7 1 
		8 6 0 9 2 0 8 9 1;
	setAttr -s 4 ".fc[0:3]" -type "polyFaces" 
		f 4 12 11 2 3 
		mu 0 4 0 1 2 3 
		f 4 -1 1 -7 4 
		mu 0 4 8 9 7 6 
		f 4 6 5 -10 7 
		mu 0 4 6 7 5 4 
		f 4 9 8 -13 10 
		mu 0 4 4 5 1 0 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "dining_floor";
createNode transform -n "polySurface105" -p "dining_floor";
createNode mesh -n "polySurfaceShape117" -p "polySurface105";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.12356301 0.46946073 
		0.12356301 0.53053927 0.0010941668 0.53053927 0.0010941668 0.46946073 0.28063527 
		0.46946073 0.28063527 0.53053927 0.12356301 0.36984056 0.28063527 0.36984056 0.43770763 
		0.46946073 0.43770763 0.53053927 0.28063527 0.63015956 0.12356301 0.63015956 0.12356301 
		0.0019920359 0.28063527 0.0019920359 0.43770763 0.36984056 0.54817718 0.46946073 
		0.54817718 0.53053927 0.43770763 0.63015956 0.28063527 0.99800795 0.12356301 0.99800795 
		0.43770763 0.0019920359 0.43770763 0.99800795;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".vt[0:21]"  -2.7260623 -4.7607504e-015 32.678036 2.7260597 
		-4.4657635e-015 32.678036 -2.7260623 -4.6978933e-015 60.719822 -2.7260623 -4.6764655e-015 
		71.651871 2.7260597 -4.6252399e-015 71.651871 2.7260597 -4.4584181e-015 60.719822 
		-11.618552 -4.8236074e-015 46.698929 -2.7260625 -4.8236074e-015 46.698929 2.7260597 
		-4.8236074e-015 46.698929 11.618549 -4.8236074e-015 46.698929 -11.618552 -3.6854124e-015 
		32.678036 -44.454159 -3.8572716e-015 32.678036 -44.454159 -3.935429e-015 46.698929 
		11.618549 -3.9166092e-015 32.678036 44.454159 -3.6142769e-015 32.678036 44.454159 
		-3.5274516e-015 46.698929 -44.454159 -3.8572716e-015 60.719822 -11.618552 -3.6854124e-015 
		60.719822 11.618549 -3.9166092e-015 60.719822 44.454159 -3.6142769e-015 60.719822 
		-2.7260623 -4.6916867e-015 22.817081 2.7260597 -4.606302e-015 22.817081;
	setAttr -s 33 ".ed[0:32]"  0 1 0 3 4 0 
		2 5 0 2 3 0 5 4 0 6 10 0 
		12 6 0 7 0 0 6 7 0 8 1 0 
		7 8 0 9 13 0 8 9 0 9 15 0 
		10 11 0 11 12 0 0 10 0 1 13 0 
		13 14 0 14 15 0 6 17 0 7 2 0 
		8 5 0 9 18 0 16 12 0 17 16 0 
		2 17 0 5 18 0 19 15 0 18 19 0 
		20 0 0 21 1 0 20 21 0;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 4 -3 3 1 -5 
		mu 0 4 0 1 2 3 
		f 4 14 15 6 5 
		mu 0 4 17 21 18 10 
		f 4 16 -6 8 7 
		mu 0 4 9 17 10 5 
		f 4 -1 -8 10 9 
		mu 0 4 8 9 5 4 
		f 4 -18 -10 12 11 
		mu 0 4 14 8 4 7 
		f 4 -19 -12 13 -20 
		mu 0 4 20 14 7 13 
		f 4 -21 -7 -25 -26 
		mu 0 4 11 10 18 19 
		f 4 -22 -9 20 -27 
		mu 0 4 1 5 10 11 
		f 4 -23 -11 21 2 
		mu 0 4 0 4 5 1 
		f 4 -24 -13 22 27 
		mu 0 4 6 7 4 0 
		f 4 28 -14 23 29 
		mu 0 4 12 13 7 6 
		f 4 -33 30 0 -32 
		mu 0 4 15 16 9 8 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode materialInfo -n "materialInfo17";
createNode shadingEngine -n "lambert17SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "innerwall2";
createNode file -n "file17";
	setAttr ".ftn" -type "string" "C:/Users/SamSung/Desktop/sturm_levelmain/innerwall2.jpg";
createNode place2dTexture -n "place2dTexture17";
	setAttr ".re" -type "float2" 8 8 ;
createNode materialInfo -n "materialInfo14";
createNode shadingEngine -n "blinn1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode blinn -n "blinn1";
createNode file -n "file15";
	setAttr ".ftn" -type "string" "C:/Users/SamSung/Desktop/sturm_levelmain/WindowCathedral0070_2_S.jpg";
createNode place2dTexture -n "place2dTexture15";
createNode materialInfo -n "materialInfo10";
createNode shadingEngine -n "lambert11SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "diningfloor";
createNode file -n "file11";
	setAttr ".ftn" -type "string" "C:/Users/SamSung/Desktop/sturm_levelmain/diningfloor.jpg";
createNode place2dTexture -n "place2dTexture11";
	setAttr ".re" -type "float2" 10 10 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 19 ".lnk";
	setAttr -s 19 ".slnk";
select -ne :time1;
	setAttr ".o" 6;
	setAttr ".unw" 6;
select -ne :renderPartition;
	setAttr -s 19 ".st";
select -ne :initialShadingGroup;
	setAttr -s 48 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 24 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 19 ".s";
select -ne :defaultTextureList1;
	setAttr -s 17 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 17 ".u";
select -ne :renderGlobalsList1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "lambert17SG.msg" "materialInfo17.sg";
connectAttr "innerwall2.msg" "materialInfo17.m";
connectAttr "file17.msg" "materialInfo17.t" -na;
connectAttr "innerwall2.oc" "lambert17SG.ss";
connectAttr "polySurfaceShape157.iog" "lambert17SG.dsm" -na;
connectAttr "file17.oc" "innerwall2.c";
connectAttr "place2dTexture17.c" "file17.c";
connectAttr "place2dTexture17.tf" "file17.tf";
connectAttr "place2dTexture17.rf" "file17.rf";
connectAttr "place2dTexture17.mu" "file17.mu";
connectAttr "place2dTexture17.mv" "file17.mv";
connectAttr "place2dTexture17.s" "file17.s";
connectAttr "place2dTexture17.wu" "file17.wu";
connectAttr "place2dTexture17.wv" "file17.wv";
connectAttr "place2dTexture17.re" "file17.re";
connectAttr "place2dTexture17.of" "file17.of";
connectAttr "place2dTexture17.r" "file17.ro";
connectAttr "place2dTexture17.n" "file17.n";
connectAttr "place2dTexture17.vt1" "file17.vt1";
connectAttr "place2dTexture17.vt2" "file17.vt2";
connectAttr "place2dTexture17.vt3" "file17.vt3";
connectAttr "place2dTexture17.vc1" "file17.vc1";
connectAttr "place2dTexture17.o" "file17.uv";
connectAttr "place2dTexture17.ofs" "file17.fs";
connectAttr "blinn1SG.msg" "materialInfo14.sg";
connectAttr "blinn1.msg" "materialInfo14.m";
connectAttr "file15.msg" "materialInfo14.t" -na;
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "polySurfaceShape158.iog" "blinn1SG.dsm" -na;
connectAttr "file15.oc" "blinn1.c";
connectAttr "place2dTexture15.c" "file15.c";
connectAttr "place2dTexture15.tf" "file15.tf";
connectAttr "place2dTexture15.rf" "file15.rf";
connectAttr "place2dTexture15.mu" "file15.mu";
connectAttr "place2dTexture15.mv" "file15.mv";
connectAttr "place2dTexture15.s" "file15.s";
connectAttr "place2dTexture15.wu" "file15.wu";
connectAttr "place2dTexture15.wv" "file15.wv";
connectAttr "place2dTexture15.re" "file15.re";
connectAttr "place2dTexture15.of" "file15.of";
connectAttr "place2dTexture15.r" "file15.ro";
connectAttr "place2dTexture15.n" "file15.n";
connectAttr "place2dTexture15.vt1" "file15.vt1";
connectAttr "place2dTexture15.vt2" "file15.vt2";
connectAttr "place2dTexture15.vt3" "file15.vt3";
connectAttr "place2dTexture15.vc1" "file15.vc1";
connectAttr "place2dTexture15.o" "file15.uv";
connectAttr "place2dTexture15.ofs" "file15.fs";
connectAttr "lambert11SG.msg" "materialInfo10.sg";
connectAttr "diningfloor.msg" "materialInfo10.m";
connectAttr "file11.msg" "materialInfo10.t" -na;
connectAttr "diningfloor.oc" "lambert11SG.ss";
connectAttr "polySurfaceShape117.iog" "lambert11SG.dsm" -na;
connectAttr "file11.oc" "diningfloor.c";
connectAttr "place2dTexture11.c" "file11.c";
connectAttr "place2dTexture11.tf" "file11.tf";
connectAttr "place2dTexture11.rf" "file11.rf";
connectAttr "place2dTexture11.mu" "file11.mu";
connectAttr "place2dTexture11.mv" "file11.mv";
connectAttr "place2dTexture11.s" "file11.s";
connectAttr "place2dTexture11.wu" "file11.wu";
connectAttr "place2dTexture11.wv" "file11.wv";
connectAttr "place2dTexture11.re" "file11.re";
connectAttr "place2dTexture11.of" "file11.of";
connectAttr "place2dTexture11.r" "file11.ro";
connectAttr "place2dTexture11.n" "file11.n";
connectAttr "place2dTexture11.vt1" "file11.vt1";
connectAttr "place2dTexture11.vt2" "file11.vt2";
connectAttr "place2dTexture11.vt3" "file11.vt3";
connectAttr "place2dTexture11.vc1" "file11.vc1";
connectAttr "place2dTexture11.o" "file11.uv";
connectAttr "place2dTexture11.ofs" "file11.fs";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert11SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert17SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert11SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert17SG.message" ":defaultLightSet.message";
connectAttr "lambert11SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert17SG.pa" ":renderPartition.st" -na;
connectAttr "diningfloor.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "innerwall2.msg" ":defaultShaderList1.s" -na;
connectAttr "file11.msg" ":defaultTextureList1.tx" -na;
connectAttr "file15.msg" ":defaultTextureList1.tx" -na;
connectAttr "file17.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture15.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture17.msg" ":defaultRenderUtilityList1.u" -na;
// End of diningroom.ma
