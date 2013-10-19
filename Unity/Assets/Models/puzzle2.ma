//Maya ASCII 2011 scene
//Name: puzzle2.ma
//Last modified: Sat, Oct 19, 2013 12:49:40 PM
//Codeset: 1252
requires maya "2011";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2011";
fileInfo "version" "2011";
fileInfo "cutIdentifier" "201003190014-771504";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 32-bit Windows 7  (Build 7600)\n";
createNode transform -n "room2_wall";
createNode mesh -n "room2_wallShape" -p "room2_wall";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49955013394355774 0.50568135843827178 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.48179621 0.53282183 
		0.52311128 0.53282166 0.52311128 0.65949112 0.48179621 0.65949124 0.58412403 0.53282183 
		0.58412403 0.65949124 0.41464815 0.65949124 0.37333307 0.65949106 0.37333307 0.53282166 
		0.41464815 0.53282177 0.47566089 0.65949106 0.47566089 0.53282166 0.3040241 0.53282166 
		0.36719775 0.53282166 0.36719775 0.65949106 0.3040241 0.65949106 0.6925872 0.75709987 
		0.6925872 0.69392616 0.79106611 0.69392616 0.79106611 0.75709987 0.6925872 0.53282154 
		0.79106611 0.53282154 0.79106611 0.91820443 0.6925872 0.91820443 0.63157445 0.69392616 
		0.63157445 0.53282154 0.63157445 0.75709987 0.63157445 0.91820443 0.59025937 0.69392616 
		0.59025937 0.53282154 0.59025937 0.75709987 0.59025937 0.91820443 0.082475625 0.28159562 
		0.12379072 0.28159562 0.12379072 0.52883023 0.082475625 0.52883023 0.082475625 0.19018292 
		0.12379072 0.19018254 0.18480347 0.28159562 0.18480347 0.52883023 0.082475625 0.0018328209 
		0.12379072 0.0018327431 0.18480347 0.19018292 0.0019920277 0.28159562 0.0019920277 
		0.19018292 0.28328237 0.28159562 0.28328237 0.52883023 0.18480347 0.0018328209 0.28328237 
		0.19018292 0.28328237 0.0018328209 0.41243061 0.24906737 0.37111554 0.24906737 0.37111554 
		0.0018327431 0.41243061 0.0018327431 0.41243061 0.34048042 0.37111554 0.34048003 
		0.47344336 0.24906737 0.47344336 0.0018327431 0.41243061 0.52883023 0.37111554 0.52883011 
		0.29063192 0.34048003 0.29063192 0.24906737 0.47344336 0.34048003 0.57192224 0.24906737 
		0.57192224 0.0018327431 0.47344336 0.52883011 0.57192224 0.34048003 0.57192224 0.52883011 
		0.89568019 0.91820461 0.7972014 0.91820461 0.7972014 0.5328216 0.89568019 0.5328216 
		0.95669293 0.5328216 0.95669293 0.91820461 0.99800813 0.5328216 0.99800813 0.91820461 
		0.57907689 0.52883011 0.57907689 0.28159553 0.96445978 0.28159553 0.96445978 0.52883011 
		0.96445978 0.19018285 0.57907689 0.19018285 0.96445978 0.0018327527 0.57907689 0.0018327527;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 50 ".vt[0:49]"  -2.7260623 -4.6764655e-015 71.651871 2.7260597 
		-4.6252403e-015 71.651871 -2.7260623 3.5656481 71.651863 2.7260597 3.5656481 71.651863 
		-2.7260623 8.8312778 71.651871 2.7260597 8.8312778 71.651871 -2.7260623 17.330379 
		71.651871 2.7260597 17.330379 71.651871 -16.629995 -4.7911339e-015 71.651871 -16.629995 
		3.5656481 71.651863 16.629995 -4.753878e-015 71.651871 16.629995 3.5656481 71.651863 
		-16.629995 8.8312778 71.651871 16.629995 8.8312778 71.651871 -16.629995 -4.7015423e-015 
		117.13372 -16.629995 3.5656481 117.13372 16.629995 -4.7015423e-015 117.13372 16.629995 
		3.5656481 117.13372 -16.629995 8.8312778 117.13372 16.629995 8.8312778 117.13372 
		-16.629995 17.330379 71.651871 16.629995 17.330379 71.651871 -16.629995 17.330379 
		117.13372 16.629995 17.330379 117.13372 16.629995 17.330379 95.796448 16.629995 8.8312778 
		95.796448 16.629995 3.5656481 95.796448 16.629995 -4.7527307e-015 95.796448 -16.629995 
		-4.7083224e-015 95.796448 -16.629995 3.5656481 95.796448 -16.629995 8.8312778 95.796448 
		-16.629995 17.330379 95.796448 16.629995 17.330379 87.907188 16.629995 8.8312778 
		87.907188 16.629995 3.5656481 87.907158 16.629995 -4.7452272e-015 87.907188 -16.629995 
		-4.7008181e-015 87.907188 -16.629995 3.5656481 87.907158 -16.629995 8.8312778 87.907188 
		-16.629995 17.330379 87.907188 -16.629995 -6.9460373 87.907188 -16.629995 -6.9460373 
		95.796448 16.629995 -6.9460373 95.796448 16.629995 -6.9460373 87.907188 2.7260597 
		-4.6978933e-015 60.719826 -2.7260623 -4.6978933e-015 60.719826 -2.7260623 3.5656481 
		60.71981 2.7260597 3.5656481 60.71981 -2.7260623 8.8312778 60.719826 2.7260597 8.8312778 
		60.719826;
	setAttr -s 88 ".ed[0:87]"  45 0 0 44 1 0 
		46 2 0 0 2 0 47 3 0 1 3 0 
		48 4 0 49 5 0 4 5 0 2 4 0 
		3 5 0 4 6 0 5 7 0 6 7 0 
		0 8 0 2 9 0 8 9 0 1 10 0 
		3 11 0 10 11 0 4 12 0 9 12 0 
		5 13 0 11 13 0 8 36 0 9 37 0 
		14 15 0 10 35 0 11 34 0 16 17 0 
		12 38 0 15 18 0 13 33 0 17 19 0 
		14 16 0 6 20 0 12 20 0 7 21 0 
		13 21 0 20 39 0 18 22 0 21 32 0 
		19 23 0 22 23 0 19 18 0 17 15 0 
		24 23 0 25 19 0 24 25 1 26 17 0 
		25 26 1 27 16 0 26 27 1 28 14 0 
		29 15 0 28 29 1 30 18 0 29 30 1 
		31 22 0 30 31 1 32 24 0 33 25 0 
		32 33 1 34 26 0 33 34 1 35 27 0 
		34 35 1 36 28 0 37 29 0 36 37 1 
		38 30 0 37 38 1 39 31 0 38 39 1 
		36 40 0 28 41 0 40 41 0 27 42 0 
		35 43 0 43 42 0 45 46 0 44 47 0 
		48 49 0 46 48 0 47 49 0 31 24 0 
		39 32 0 20 21 0;
	setAttr -s 38 ".fc[0:37]" -type "polyFaces" 
		f 4 80 2 -4 -1 
		mu 0 4 0 1 2 3 
		f 4 -82 1 5 -5 
		mu 0 4 6 7 8 9 
		f 4 82 7 -9 -7 
		mu 0 4 12 13 14 15 
		f 4 83 6 -10 -3 
		mu 0 4 1 4 5 2 
		f 4 -85 4 10 -8 
		mu 0 4 10 6 9 11 
		f 4 8 12 -14 -12 
		mu 0 4 16 17 18 19 
		f 4 3 15 -17 -15 
		mu 0 4 30 26 27 31 
		f 4 -6 17 19 -19 
		mu 0 4 24 28 29 25 
		f 4 9 20 -22 -16 
		mu 0 4 26 16 23 27 
		f 4 -11 18 23 -23 
		mu 0 4 17 24 25 20 
		f 4 55 54 -27 -54 
		mu 0 4 32 33 34 35 
		f 4 52 51 29 -50 
		mu 0 4 50 51 52 53 
		f 4 57 56 -32 -55 
		mu 0 4 33 38 39 34 
		f 4 50 49 33 -48 
		mu 0 4 56 50 53 57 
		f 4 11 35 -37 -21 
		mu 0 4 16 19 22 23 
		f 4 -13 22 38 -38 
		mu 0 4 18 17 20 21 
		f 4 59 58 -41 -57 
		mu 0 4 38 45 46 39 
		f 4 48 47 42 -47 
		mu 0 4 63 56 57 64 
		f 4 40 43 -43 44 
		mu 0 4 68 69 70 71 
		f 4 -34 45 31 -45 
		mu 0 4 71 72 73 68 
		f 4 -30 -35 26 -46 
		mu 0 4 72 74 75 73 
		f 4 62 61 -49 -61 
		mu 0 4 66 62 56 63 
		f 4 64 63 -51 -62 
		mu 0 4 62 54 50 56 
		f 4 66 65 -53 -64 
		mu 0 4 54 55 51 50 
		f 4 69 68 -56 -68 
		mu 0 4 36 37 33 32 
		f 4 71 70 -58 -69 
		mu 0 4 37 42 38 33 
		f 4 73 72 -60 -71 
		mu 0 4 42 48 45 38 
		f 4 -39 32 -63 -42 
		mu 0 4 67 65 62 66 
		f 4 -24 28 -65 -33 
		mu 0 4 65 58 54 62 
		f 4 -20 27 -67 -29 
		mu 0 4 58 59 55 54 
		f 4 16 25 -70 -25 
		mu 0 4 40 41 37 36 
		f 4 21 30 -72 -26 
		mu 0 4 41 47 42 37 
		f 4 36 39 -74 -31 
		mu 0 4 47 49 48 42 
		f 4 67 75 -77 -75 
		mu 0 4 36 32 43 44 
		f 4 -66 78 79 -78 
		mu 0 4 51 55 60 61 
		f 4 -59 85 46 -44 
		mu 0 4 76 77 78 79 
		f 4 60 -86 -73 86 
		mu 0 4 80 78 77 81 
		f 4 41 -87 -40 87 
		mu 0 4 82 80 81 83 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "room2_floor";
createNode mesh -n "room2_floorShape" -p "room2_floor";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.32013607 0.49817994 
		0.0018168364 0.49817994 0.0018168364 0.0019920552 0.32013607 0.0019920552 0.44498271 
		0.49817988 0.32728717 0.49817988 0.32728717 0.0019920147 0.44498271 0.0019920147 
		0.69422036 0.49817988 0.45171601 0.49817988 0.45171601 0.0019920147 0.69422036 0.0019920147 
		0.80661559 0.99800801 0.80661559 0.50182033 0.91023982 0.50182033 0.91023982 0.99800801 
		0.80419785 0.001992035 0.80419785 0.49817988 0.70057368 0.49817988 0.70057368 0.001992035;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -16.629995 -4.930367e-015 95.796448 -16.629995 
		-4.7015423e-015 117.13372 16.629995 -4.7015423e-015 117.13372 16.629995 -4.9747757e-015 
		95.796448 -16.629995 -6.9460373 87.907188 -16.629995 -6.9460373 95.796448 16.629995 
		-6.9460373 95.796448 16.629995 -6.9460373 87.907188 -16.629995 -4.7911339e-015 71.651871 
		-16.629995 -4.3958287e-015 87.907188 16.629995 -4.4402378e-015 87.907188 16.629995 
		-4.753878e-015 71.651871;
	setAttr -s 16 ".ed[0:15]"  11 8 0 3 0 0 
		10 9 0 6 5 0 7 4 0 0 1 0 
		1 2 0 3 2 0 4 5 0 7 6 0 
		8 9 0 11 10 0 3 6 0 0 5 0 
		9 4 0 10 7 0;
	setAttr -s 5 ".fc[0:4]" -type "polyFaces" 
		f 4 5 6 -8 1 
		mu 0 4 0 1 2 3 
		f 4 8 -4 -10 4 
		mu 0 4 4 5 6 7 
		f 4 10 -3 -12 0 
		mu 0 4 8 9 10 11 
		f 4 -2 12 3 -14 
		mu 0 4 12 13 14 15 
		f 4 2 14 -5 -16 
		mu 0 4 16 17 18 19 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "keylocation2";
	setAttr ".rp" -type "double3" -9.6089335445269324 4.8199583314725728e-015 111.21087241959303 ;
	setAttr ".sp" -type "double3" -9.6089335445269324 4.8199583314725728e-015 111.21087241959303 ;
createNode mesh -n "keylocationShape2" -p "keylocation2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607 
		0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008 
		0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608 
		0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893 
		0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893 
		0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998 
		0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992 
		0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986 
		0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998 
		0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999 
		0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994 
		0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989 
		0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985 
		0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998 
		0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266 
		0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5 
		0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974 
		0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854 
		0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893 
		0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".pt[0:41]" -type "float3"  -7.3253355 1 110.46889 -7.666389 
		1 109.79953 -8.1975927 1 109.26833 -8.8669472 1 108.92728 -9.6089334 1 108.80975 
		-10.35092 1 108.92728 -11.020274 1 109.26833 -11.551477 1 109.79953 -11.89253 1 110.46889 
		-12.01005 1 111.21087 -11.89253 1 111.95286 -11.551477 1 112.62222 -11.020274 1 113.15342 
		-10.35092 1 113.49447 -9.6089334 1 113.61199 -8.8669481 1 113.49447 -8.1975927 1 
		113.15342 -7.6663899 1 112.62222 -7.3253369 1 111.95286 -7.207818 1 111.21087 -7.3253355 
		2.4011157 110.46889 -7.666389 2.4011157 109.79953 -8.1975927 2.4011157 109.26833 
		-8.8669472 2.4011157 108.92728 -9.6089334 2.4011157 108.80975 -10.35092 2.4011157 
		108.92728 -11.020274 2.4011157 109.26833 -11.551477 2.4011157 109.79953 -11.89253 
		2.4011157 110.46889 -12.01005 2.4011157 111.21087 -11.89253 2.4011157 111.95286 -11.551477 
		2.4011157 112.62222 -11.020274 2.4011157 113.15342 -10.35092 2.4011157 113.49447 
		-9.6089334 2.4011157 113.61199 -8.8669481 2.4011157 113.49447 -8.1975927 2.4011157 
		113.15342 -7.6663899 2.4011157 112.62222 -7.3253369 2.4011157 111.95286 -7.207818 
		2.4011157 111.21087 -9.6089334 1 111.21087 -9.6089334 2.4011157 111.21087;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 
		-0.5877856 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.0000005 -0.30901715 
		-1 -0.95105696 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 
		-0.30901706 -1.0000002 -1 0 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 
		-1 0.80901712 -0.30901706 -1 0.95105666 -2.9802322e-008 -1 1.0000001 0.30901697 -1 
		0.9510566 0.58778524 -1 0.80901706 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 
		-1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856 0.5877856 1 -0.80901748 0.30901715 
		1 -0.95105702 0 1 -1.0000005 -0.30901715 1 -0.95105696 -0.58778548 1 -0.8090173 -0.80901724 
		1 -0.58778542 -0.95105678 1 -0.30901706 -1.0000002 1 0 -0.95105678 1 0.30901706 -0.80901718 
		1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666 -2.9802322e-008 1 
		1.0000001 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853 0.95105654 
		1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 5 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 10 0 
		10 11 0 11 12 0 12 13 0 13 14 0 
		14 15 0 15 16 0 16 17 0 17 18 0 
		18 19 0 19 0 0 20 21 0 21 22 0 
		22 23 0 23 24 0 24 25 0 25 26 0 
		26 27 0 27 28 0 28 29 0 29 30 0 
		30 31 0 31 32 0 32 33 0 33 34 0 
		34 35 0 35 36 0 36 37 0 37 38 0 
		38 39 0 39 20 0 0 20 1 1 21 1 
		2 22 1 3 23 1 4 24 1 5 25 1 
		6 26 1 7 27 1 8 28 1 9 29 1 
		10 30 1 11 31 1 12 32 1 13 33 1 
		14 34 1 15 35 1 16 36 1 17 37 1 
		18 38 1 19 39 1 40 0 1 40 1 1 
		40 2 1 40 3 1 40 4 1 40 5 1 
		40 6 1 40 7 1 40 8 1 40 9 1 
		40 10 1 40 11 1 40 12 1 40 13 1 
		40 14 1 40 15 1 40 16 1 40 17 1 
		40 18 1 40 19 1 20 41 1 21 41 1 
		22 41 1 23 41 1 24 41 1 25 41 1 
		26 41 1 27 41 1 28 41 1 29 41 1 
		30 41 1 31 41 1 32 41 1 33 41 1 
		34 41 1 35 41 1 36 41 1 37 41 1 
		38 41 1 39 41 1;
	setAttr -s 60 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41 
		mu 0 4 20 21 42 41 
		f 4 1 42 -22 -42 
		mu 0 4 21 22 43 42 
		f 4 2 43 -23 -43 
		mu 0 4 22 23 44 43 
		f 4 3 44 -24 -44 
		mu 0 4 23 24 45 44 
		f 4 4 45 -25 -45 
		mu 0 4 24 25 46 45 
		f 4 5 46 -26 -46 
		mu 0 4 25 26 47 46 
		f 4 6 47 -27 -47 
		mu 0 4 26 27 48 47 
		f 4 7 48 -28 -48 
		mu 0 4 27 28 49 48 
		f 4 8 49 -29 -49 
		mu 0 4 28 29 50 49 
		f 4 9 50 -30 -50 
		mu 0 4 29 30 51 50 
		f 4 10 51 -31 -51 
		mu 0 4 30 31 52 51 
		f 4 11 52 -32 -52 
		mu 0 4 31 32 53 52 
		f 4 12 53 -33 -53 
		mu 0 4 32 33 54 53 
		f 4 13 54 -34 -54 
		mu 0 4 33 34 55 54 
		f 4 14 55 -35 -55 
		mu 0 4 34 35 56 55 
		f 4 15 56 -36 -56 
		mu 0 4 35 36 57 56 
		f 4 16 57 -37 -57 
		mu 0 4 36 37 58 57 
		f 4 17 58 -38 -58 
		mu 0 4 37 38 59 58 
		f 4 18 59 -39 -59 
		mu 0 4 38 39 60 59 
		f 4 19 40 -40 -60 
		mu 0 4 39 40 61 60 
		f 3 -1 -61 61 
		mu 0 3 1 0 82 
		f 3 -2 -62 62 
		mu 0 3 2 1 82 
		f 3 -3 -63 63 
		mu 0 3 3 2 82 
		f 3 -4 -64 64 
		mu 0 3 4 3 82 
		f 3 -5 -65 65 
		mu 0 3 5 4 82 
		f 3 -6 -66 66 
		mu 0 3 6 5 82 
		f 3 -7 -67 67 
		mu 0 3 7 6 82 
		f 3 -8 -68 68 
		mu 0 3 8 7 82 
		f 3 -9 -69 69 
		mu 0 3 9 8 82 
		f 3 -10 -70 70 
		mu 0 3 10 9 82 
		f 3 -11 -71 71 
		mu 0 3 11 10 82 
		f 3 -12 -72 72 
		mu 0 3 12 11 82 
		f 3 -13 -73 73 
		mu 0 3 13 12 82 
		f 3 -14 -74 74 
		mu 0 3 14 13 82 
		f 3 -15 -75 75 
		mu 0 3 15 14 82 
		f 3 -16 -76 76 
		mu 0 3 16 15 82 
		f 3 -17 -77 77 
		mu 0 3 17 16 82 
		f 3 -18 -78 78 
		mu 0 3 18 17 82 
		f 3 -19 -79 79 
		mu 0 3 19 18 82 
		f 3 -20 -80 60 
		mu 0 3 0 19 82 
		f 3 20 81 -81 
		mu 0 3 80 79 83 
		f 3 21 82 -82 
		mu 0 3 79 78 83 
		f 3 22 83 -83 
		mu 0 3 78 77 83 
		f 3 23 84 -84 
		mu 0 3 77 76 83 
		f 3 24 85 -85 
		mu 0 3 76 75 83 
		f 3 25 86 -86 
		mu 0 3 75 74 83 
		f 3 26 87 -87 
		mu 0 3 74 73 83 
		f 3 27 88 -88 
		mu 0 3 73 72 83 
		f 3 28 89 -89 
		mu 0 3 72 71 83 
		f 3 29 90 -90 
		mu 0 3 71 70 83 
		f 3 30 91 -91 
		mu 0 3 70 69 83 
		f 3 31 92 -92 
		mu 0 3 69 68 83 
		f 3 32 93 -93 
		mu 0 3 68 67 83 
		f 3 33 94 -94 
		mu 0 3 67 66 83 
		f 3 34 95 -95 
		mu 0 3 66 65 83 
		f 3 35 96 -96 
		mu 0 3 65 64 83 
		f 3 36 97 -97 
		mu 0 3 64 63 83 
		f 3 37 98 -98 
		mu 0 3 63 62 83 
		f 3 38 99 -99 
		mu 0 3 62 81 83 
		f 3 39 80 -100 
		mu 0 3 81 80 83 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "blocks";
createNode transform -n "pCube3" -p "blocks";
	setAttr ".rp" -type "double3" 4.4474766797950114 4.8849813083506888e-015 107.80894991417672 ;
	setAttr ".sp" -type "double3" 4.4474766797950114 4.8849813083506888e-015 107.80894991417672 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 
		0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 
		0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  4.9474769 0.5 107.30895 10.893515 
		0.5 107.30895 4.9474769 6.4460382 107.30895 10.893515 6.4460382 107.30895 4.9474769 
		6.4460382 101.36292 10.893515 6.4460382 101.36292 4.9474769 0.5 101.36292 10.893515 
		0.5 101.36292;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 
		0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 3 2 
		f 4 1 7 -3 -7 
		mu 0 4 2 3 5 4 
		f 4 2 9 -4 -9 
		mu 0 4 4 5 7 6 
		f 4 3 11 -1 -11 
		mu 0 4 6 7 9 8 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 10 11 3 
		f 4 10 4 6 8 
		mu 0 4 12 0 2 13 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode materialInfo -n "materialInfo12";
createNode shadingEngine -n "lambert13SG";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
createNode lambert -n "copperdun";
createNode file -n "file13";
	setAttr ".ftn" -type "string" "C:/Users/SamSung/Desktop/sturm_levelmain/dungeonwall2.jpg";
createNode place2dTexture -n "place2dTexture13";
	setAttr ".re" -type "float2" 4 4 ;
createNode materialInfo -n "materialInfo13";
createNode shadingEngine -n "lambert14SG";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
createNode lambert -n "puzzlefloor";
createNode file -n "file14";
	setAttr ".ftn" -type "string" "C:/Users/SamSung/Desktop/RooftilesMetal0021_5_S.jpg";
createNode place2dTexture -n "place2dTexture14";
	setAttr ".re" -type "float2" 7 7 ;
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
connectAttr "lambert13SG.msg" "materialInfo12.sg";
connectAttr "copperdun.msg" "materialInfo12.m";
connectAttr "file13.msg" "materialInfo12.t" -na;
connectAttr "copperdun.oc" "lambert13SG.ss";
connectAttr "wall_roomShape3.iog" "lambert13SG.dsm" -na;
connectAttr "room1_wallShape.iog" "lambert13SG.dsm" -na;
connectAttr "room2_wallShape.iog" "lambert13SG.dsm" -na;
connectAttr "room4_wallShape.iog" "lambert13SG.dsm" -na;
connectAttr "room5_wallShape.iog" "lambert13SG.dsm" -na;
connectAttr "file13.oc" "copperdun.c";
connectAttr "place2dTexture13.c" "file13.c";
connectAttr "place2dTexture13.tf" "file13.tf";
connectAttr "place2dTexture13.rf" "file13.rf";
connectAttr "place2dTexture13.mu" "file13.mu";
connectAttr "place2dTexture13.mv" "file13.mv";
connectAttr "place2dTexture13.s" "file13.s";
connectAttr "place2dTexture13.wu" "file13.wu";
connectAttr "place2dTexture13.wv" "file13.wv";
connectAttr "place2dTexture13.re" "file13.re";
connectAttr "place2dTexture13.of" "file13.of";
connectAttr "place2dTexture13.r" "file13.ro";
connectAttr "place2dTexture13.n" "file13.n";
connectAttr "place2dTexture13.vt1" "file13.vt1";
connectAttr "place2dTexture13.vt2" "file13.vt2";
connectAttr "place2dTexture13.vt3" "file13.vt3";
connectAttr "place2dTexture13.vc1" "file13.vc1";
connectAttr "place2dTexture13.o" "file13.uv";
connectAttr "place2dTexture13.ofs" "file13.fs";
connectAttr "lambert14SG.msg" "materialInfo13.sg";
connectAttr "puzzlefloor.msg" "materialInfo13.m";
connectAttr "file14.msg" "materialInfo13.t" -na;
connectAttr "puzzlefloor.oc" "lambert14SG.ss";
connectAttr "room1_floorShape.iog" "lambert14SG.dsm" -na;
connectAttr "room2_floorShape.iog" "lambert14SG.dsm" -na;
connectAttr "room4_floorShape.iog" "lambert14SG.dsm" -na;
connectAttr "room3_floorShape.iog" "lambert14SG.dsm" -na;
connectAttr "room5_floorShape.iog" "lambert14SG.dsm" -na;
connectAttr "file14.oc" "puzzlefloor.c";
connectAttr "place2dTexture14.c" "file14.c";
connectAttr "place2dTexture14.tf" "file14.tf";
connectAttr "place2dTexture14.rf" "file14.rf";
connectAttr "place2dTexture14.mu" "file14.mu";
connectAttr "place2dTexture14.mv" "file14.mv";
connectAttr "place2dTexture14.s" "file14.s";
connectAttr "place2dTexture14.wu" "file14.wu";
connectAttr "place2dTexture14.wv" "file14.wv";
connectAttr "place2dTexture14.re" "file14.re";
connectAttr "place2dTexture14.of" "file14.of";
connectAttr "place2dTexture14.r" "file14.ro";
connectAttr "place2dTexture14.n" "file14.n";
connectAttr "place2dTexture14.vt1" "file14.vt1";
connectAttr "place2dTexture14.vt2" "file14.vt2";
connectAttr "place2dTexture14.vt3" "file14.vt3";
connectAttr "place2dTexture14.vc1" "file14.vc1";
connectAttr "place2dTexture14.o" "file14.uv";
connectAttr "place2dTexture14.ofs" "file14.fs";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert13SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert14SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert13SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert14SG.message" ":defaultLightSet.message";
connectAttr "lambert13SG.pa" ":renderPartition.st" -na;
connectAttr "lambert14SG.pa" ":renderPartition.st" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "keylocationShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "copperdun.msg" ":defaultShaderList1.s" -na;
connectAttr "puzzlefloor.msg" ":defaultShaderList1.s" -na;
connectAttr "file13.msg" ":defaultTextureList1.tx" -na;
connectAttr "file14.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture13.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture14.msg" ":defaultRenderUtilityList1.u" -na;
// End of puzzle2.ma
