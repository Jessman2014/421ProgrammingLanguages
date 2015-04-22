double [] _ = []
double (x:xs) y =
	if x == y then x : x : double xs y
	else x : double xs y