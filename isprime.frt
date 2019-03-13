( checks if a is prime or not)
( if prime - 1)
( if not - 0)
: isprime
	dup 2 < if 0
		else
			dup
			2
			for 
				dup r@ % not
				if
					dup
					if 0 then
				then
			endfor
		dup if 1 then
	then
	
;

: printprime
	dup isprime
	if . ."  is prime" cr else . ."  is not prime" cr then 
;

." This is test for is prime programm" cr
7 printprime
12 printprime
2 printprime
1 printprime
3 printprime
24 printprime
