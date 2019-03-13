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

( @ - fetch value from mem) ( addr-value)
( ! - store value by addr) ( val addr -)
( c@ - read one byte starting at addr) ( addr - char)
( c! - store one byte by addr) ( ch addr -)
: allotprime
	dup isprime
	1 allot
	dup
	rot rot
	c!
;

: printprime
	dup allotprime
	c@
	if . ."  is prime" cr else . ."  is not prime" cr then 
;

." This is test for is prime programm" cr
7 printprime
12 printprime
2 printprime
1 printprime
3 printprime
24 printprime

