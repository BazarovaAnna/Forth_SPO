( checks if a is even or odd)
( if even - 1)
( if odd - 0)
: iseven
	dup 2 % not
;
( outputs "even" or "odd")
: printeven
	dup iseven
	if . ."  is even" cr else . ."  is odd" cr then 
;

." This is test for even or odd programm" cr
7 printeven
8 printeven
12 printeven
100009 printeven
