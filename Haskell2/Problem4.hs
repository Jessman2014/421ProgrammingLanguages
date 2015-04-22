data Coord = Position Double Double | Vector Double Double | Scalar Double
instance Num Coord where
	Vector a b + Position x y = Position (x+a) (y+b)
	Position x y + Vector a b = Position (x+a) (y+b)
	Vector a b + Vector c d = Vector (c+a) (d+b)
	Position x y - Vector a b = Position (x-a) (y-b)
	Vector a b - Position x y = Position (a-x) (b-y)
	Position x1 y1 - Position x2 y2 = Vector (x2-x1) (y2-y1)
	Vector a b * Scalar c =	Vector (a*c) (b*c)
	Scalar c * Vector a b = Vector (a*c) (b*c)
	Position x1 y1 * Position x2 y2 = Scalar (x1*x2 + y1*y2)
	negate (Position x y) = Position (-x) (-y)
	negate (Vector x y) = Vector (-x) (-y)
	abs (Position x y) = Scalar (sqrt (x^2 + y^2))
	abs (Vector x y) = Scalar (sqrt (x^2 + y^2))
	signum _ = error "your not significant enough"
	fromInteger _ = error "your mom is from an integer"
instance Show Coord where
	show (Position x y) = "(" ++ (show x) ++ ", " ++ (show y) ++ ")"
	show (Vector x y) = "(" ++ (show x) ++ ", " ++ (show y) ++ ")"
	show (Scalar x) = show x