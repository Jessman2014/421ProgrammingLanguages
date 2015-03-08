double [] y = []
double [x] y = 
	if head [x] == y then [x] : [x]
	else [x]
double (x:xs) y =
	if x == y then x : x : double xs y
	else x : double xs y