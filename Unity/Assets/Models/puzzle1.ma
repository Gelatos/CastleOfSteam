//Maya ASCII 2011 scene
//Name: puzzle1.ma
//Last modified: Sat, Oct 19, 2013 12:51:47 PM
//Codeset: 1252
requires maya "2011";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2011";
fileInfo "version" "2011";
fileInfo "cutIdentifier" "201003190014-771504";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 32-bit Windows 7  (Build 7600)\n";
createNode transform -n "room1_floor";
createNode mesh -n "room1_floorShape" -p "room1_floor";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.0018116375 0.0019920755 
		0.32013392 0.0019920755 0.32013392 0.49818516 0.0018116375 0.49818516 0.32634991 
		0.0019920755 0.44404706 0.0019920755 0.44404706 0.49818516 0.32634991 0.49818516 
		0.45042241 0.0019920755 0.69292903 0.0019920755 0.69292903 0.49818516 0.45042241 
		0.49818516 0.7984283 0.50181502 0.7984283 0.61951214 0.694803 0.61951214 0.694803 
		0.50181502 0.90763313 0.50181508 0.90763313 0.99800807 0.80400795 0.99800807 0.80400795 
		0.50181508 0.68922347 0.50181502 0.68922347 0.61951214 0.58559817 0.61951214 0.58559817 
		0.50181502 0.69856751 0.49818516 0.69856751 0.0019920755 0.80219275 0.0019920755 
		0.80219275 0.49818516;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  16.629995 -6.9460373 -71.586334 16.629995 
		-6.9460373 -79.475601 -16.629999 -6.9460373 -79.475601 -16.629999 -6.9460373 -71.586334 
		16.629995 4.6651483e-015 -79.475601 16.629995 4.8199584e-015 -100.81287 -16.629999 
		4.8199584e-015 -100.81287 -16.629999 4.6207396e-015 -79.475601 16.629995 4.730366e-015 
		-55.331024 16.629995 4.6551059e-015 -71.586334 -16.629999 4.6106964e-015 -71.586334 
		-16.629999 4.7676224e-015 -55.331024;
	setAttr -s 18 ".ed[0:17]"  11 8 0 7 4 0 
		10 9 0 9 0 0 4 1 0 0 1 0 
		7 2 0 2 1 0 10 3 0 3 2 0 
		3 0 0 4 5 0 5 6 0 7 6 0 
		8 9 0 11 10 0 9 4 0 10 7 0;
	setAttr -s 7 ".fc[0:6]" -type "polyFaces" 
		f 4 11 12 -14 1 
		mu 0 4 0 1 2 3 
		f 4 5 -8 -10 10 
		mu 0 4 4 5 6 7 
		f 4 14 -3 -16 0 
		mu 0 4 8 9 10 11 
		f 4 16 4 -6 -4 
		mu 0 4 12 13 14 15 
		f 4 -2 6 7 -5 
		mu 0 4 16 17 18 19 
		f 4 -18 8 9 -7 
		mu 0 4 20 21 22 23 
		f 4 2 3 -11 -9 
		mu 0 4 24 25 26 27 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "room1_wall";
createNode mesh -n "room1_wallShape" -p "room1_wall";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4921954870223999 0.46025943756103516 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 80 ".uvst[0].uvsp[0:79]" -type "float2" 0.48669237 0.5276835 
		0.52760601 0.52768332 0.52760601 0.65312201 0.48669237 0.65312213 0.58802593 0.5276835 
		0.58802593 0.65312213 0.42013705 0.65312237 0.37922347 0.65312219 0.37922347 0.52768356 
		0.42013705 0.52768373 0.48055711 0.65312219 0.48055711 0.52768356 0.37308818 0.65312219 
		0.31052831 0.65312219 0.31052831 0.52768356 0.37308818 0.52768356 0.89667434 0.68722266 
		0.89667434 0.74978238 0.79915237 0.74978238 0.79915237 0.68722266 0.89667434 0.90932178 
		0.79915237 0.90932178 0.79915237 0.52768326 0.89667434 0.52768326 0.95709425 0.74978238 
		0.95709425 0.90932178 0.95709425 0.68722266 0.95709425 0.52768326 0.99800801 0.74978238 
		0.99800801 0.90932178 0.99800801 0.68722266 0.99800801 0.52768326 0.0019919639 0.27885979 
		0.042905629 0.2788595 0.042905629 0.52369207 0.0019919639 0.52369207 0.0019919639 
		0.18833517 0.042905629 0.18833485 0.10332555 0.27885979 0.10332555 0.52369207 0.0019919639 
		0.0018152249 0.042905629 0.0018150705 0.10332555 0.18833517 0.20084769 0.27885979 
		0.20084769 0.52369207 0.10332555 0.0018152249 0.20084769 0.18833517 0.20084769 0.0018152249 
		0.24968953 0.24664761 0.20877579 0.2466473 0.20877579 0.0018150705 0.24968953 0.0018150705 
		0.24968953 0.33717218 0.20877579 0.33717185 0.31010932 0.2466473 0.31010932 0.0018150705 
		0.24968953 0.52369207 0.20877579 0.52369189 0.31010932 0.33717185 0.40763143 0.2466473 
		0.40763143 0.0018150705 0.31010932 0.52369189 0.40763143 0.33717185 0.40763143 0.52369189 
		0.69549495 0.52768332 0.79301703 0.52768332 0.79301703 0.90932178 0.69549495 0.90932178 
		0.63507503 0.90932178 0.63507503 0.52768332 0.59416133 0.90932178 0.59416133 0.52768332 
		0.41536486 0.52369177 0.41536486 0.33717182 0.79700333 0.33717182 0.79700333 0.52369177 
		0.41536486 0.24664719 0.79700333 0.24664719 0.41536486 0.0018149451 0.79700333 0.0018149451;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 46 ".vt[0:45]"  2.7260597 4.8450348e-015 -55.331024 -2.7260623 
		4.8962604e-015 -55.331024 2.7260597 3.5656481 -55.331009 -2.7260623 3.5656481 -55.331009 
		2.7260597 8.8312778 -55.331024 -2.7260623 8.8312778 -55.331024 2.7260597 17.330379 
		-55.331024 -2.7260623 17.330379 -55.331024 16.629995 4.730366e-015 -55.331024 16.629995 
		3.5656481 -55.331009 -16.629999 4.7676224e-015 -55.331024 -16.629999 3.5656481 -55.331009 
		16.629995 8.8312778 -55.331024 -16.629999 8.8312778 -55.331024 16.629995 4.8199584e-015 
		-100.81287 16.629995 3.5656481 -100.81286 -16.629999 4.8199584e-015 -100.81287 -16.629999 
		3.5656481 -100.81286 16.629995 8.8312778 -100.81287 -16.629999 8.8312778 -100.81287 
		16.629995 17.330379 -55.331024 -16.629999 17.330379 -55.331024 16.629995 17.330379 
		-100.81287 -16.629999 17.330379 -100.81287 -16.629999 17.330379 -79.475601 -16.629999 
		8.8312778 -79.475601 -16.629999 3.5656481 -79.475578 -16.629999 4.7687692e-015 -79.475601 
		16.629995 4.8131783e-015 -79.475601 16.629995 3.5656481 -79.475578 16.629995 8.8312778 
		-79.475601 16.629995 17.330379 -79.475601 -16.629999 17.330379 -71.586334 -16.629999 
		8.8312778 -71.586334 -16.629999 3.5656481 -71.586304 -16.629999 4.7762739e-015 -71.586334 
		16.629995 4.8206826e-015 -71.586334 16.629995 3.5656481 -71.586304 16.629995 8.8312778 
		-71.586334 16.629995 17.330379 -71.586334 -2.7260623 4.8236074e-015 -44.398972 2.7260597 
		4.8236074e-015 -44.398972 2.7260597 3.5656481 -44.398964 -2.7260623 3.5656481 -44.398964 
		2.7260597 8.8312778 -44.398972 -2.7260623 8.8312778 -44.398972;
	setAttr -s 82 ".ed[0:81]"  41 0 0 40 1 0 
		42 2 0 0 2 0 43 3 0 1 3 0 
		44 4 0 45 5 0 4 5 0 2 4 0 
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
		41 42 0 40 43 0 44 45 0 42 44 0 
		43 45 0 32 39 0 20 21 0 24 31 0;
	setAttr -s 36 ".fc[0:35]" -type "polyFaces" 
		f 4 74 2 -4 -1 
		mu 0 4 0 1 2 3 
		f 4 -76 1 5 -5 
		mu 0 4 6 7 8 9 
		f 4 76 7 -9 -7 
		mu 0 4 12 13 14 15 
		f 4 77 6 -10 -3 
		mu 0 4 1 4 5 2 
		f 4 -79 4 10 -8 
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
		mu 0 4 48 49 50 51 
		f 4 57 56 -32 -55 
		mu 0 4 33 38 39 34 
		f 4 50 49 33 -48 
		mu 0 4 54 48 51 55 
		f 4 11 35 -37 -21 
		mu 0 4 16 19 22 23 
		f 4 -13 22 38 -38 
		mu 0 4 18 17 20 21 
		f 4 59 58 -41 -57 
		mu 0 4 38 43 44 39 
		f 4 48 47 42 -47 
		mu 0 4 59 54 55 60 
		f 4 40 43 -43 44 
		mu 0 4 64 65 66 67 
		f 4 -34 45 31 -45 
		mu 0 4 67 68 69 64 
		f 4 -30 -35 26 -46 
		mu 0 4 68 70 71 69 
		f 4 62 61 -49 -61 
		mu 0 4 62 58 54 59 
		f 4 64 63 -51 -62 
		mu 0 4 58 52 48 54 
		f 4 66 65 -53 -64 
		mu 0 4 52 53 49 48 
		f 4 69 68 -56 -68 
		mu 0 4 36 37 33 32 
		f 4 71 70 -58 -69 
		mu 0 4 37 42 38 33 
		f 4 73 72 -60 -71 
		mu 0 4 42 46 43 38 
		f 4 -39 32 -63 -42 
		mu 0 4 63 61 58 62 
		f 4 -24 28 -65 -33 
		mu 0 4 61 56 52 58 
		f 4 -20 27 -67 -29 
		mu 0 4 56 57 53 52 
		f 4 16 25 -70 -25 
		mu 0 4 40 41 37 36 
		f 4 21 30 -72 -26 
		mu 0 4 41 45 42 37 
		f 4 36 39 -74 -31 
		mu 0 4 45 47 46 42 
		f 4 41 79 -40 80 
		mu 0 4 72 73 74 75 
		f 4 60 81 -73 -80 
		mu 0 4 73 76 77 74 
		f 4 46 -44 -59 -82 
		mu 0 4 76 78 79 77 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "keylocation1";
	setAttr ".rp" -type "double3" 0.22032595518423292 4.8199583314725728e-015 -96.276391157035761 ;
	setAttr ".sp" -type "double3" 0.22032595518423292 4.8199583314725728e-015 -96.276391157035761 ;
createNode mesh -n "keylocation1Shape" -p "keylocation1";
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
	setAttr -s 42 ".pt[0:41]" -type "float3"  2.5039241 1 -97.018379 2.1628706 
		1 -97.687729 1.6316671 1 -98.218933 0.96231186 1 -98.55999 0.22032596 1 -98.677505 
		-0.52165997 1 -98.55999 -1.191015 1 -98.218933 -1.722218 1 -97.687729 -2.0632713 
		1 -97.018379 -2.1807902 1 -96.27639 -2.0632713 1 -95.534409 -1.7222179 1 -94.865051 
		-1.1910146 1 -94.333847 -0.52165973 1 -93.992798 0.22032589 1 -93.875275 0.96231145 
		1 -93.992798 1.6316663 1 -94.333847 2.1628695 1 -94.865051 2.5039227 1 -95.534409 
		2.6214416 1 -96.27639 2.5039241 2.4011157 -97.018379 2.1628706 2.4011157 -97.687729 
		1.6316671 2.4011157 -98.218933 0.96231186 2.4011157 -98.55999 0.22032596 2.4011157 
		-98.677505 -0.52165997 2.4011157 -98.55999 -1.191015 2.4011157 -98.218933 -1.722218 
		2.4011157 -97.687729 -2.0632713 2.4011157 -97.018379 -2.1807902 2.4011157 -96.27639 
		-2.0632713 2.4011157 -95.534409 -1.7222179 2.4011157 -94.865051 -1.1910146 2.4011157 
		-94.333847 -0.52165973 2.4011157 -93.992798 0.22032589 2.4011157 -93.875275 0.96231145 
		2.4011157 -93.992798 1.6316663 2.4011157 -94.333847 2.1628695 2.4011157 -94.865051 
		2.5039227 2.4011157 -95.534409 2.6214416 2.4011157 -96.27639 0.22032596 1 -96.27639 
		0.22032596 2.4011157 -96.27639;
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
createNode transform -n "pCube2" -p "blocks";
	setAttr ".rp" -type "double3" 6.2458593401470059 4.8849813083506888e-015 -62.069173357834693 ;
	setAttr ".sp" -type "double3" 6.2458593401470059 4.8849813083506888e-015 -62.069173357834693 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  6.7458591 0.5 -62.569172 
		12.691897 0.5 -62.569172 6.7458591 6.4460382 -62.569172 12.691897 6.4460382 -62.569172 
		6.7458591 6.4460382 -68.515213 12.691897 6.4460382 -68.515213 6.7458591 0.5 -68.515213 
		12.691897 0.5 -68.515213;
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
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "keylocation1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "copperdun.msg" ":defaultShaderList1.s" -na;
connectAttr "puzzlefloor.msg" ":defaultShaderList1.s" -na;
connectAttr "file13.msg" ":defaultTextureList1.tx" -na;
connectAttr "file14.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture13.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture14.msg" ":defaultRenderUtilityList1.u" -na;
// End of puzzle1.ma
