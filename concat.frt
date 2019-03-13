( addr addr - addrsum)
: concat
	( swap prints prints)
	dup rot rot swap dup rot rot
	0 rot rot
	1 -
	repeat
		rot 1 + rot rot
		1 +
		dup	c@ 
		dup
		emit
		if 0 else 1 then
		
	until drop

	1 -
	repeat
		swap 1 + swap
		1 +
		dup	c@ 
		dup
		emit
		if 0 else 1 then
		
	until drop
	2 -
	cr .
	
;

( @ - fetch value from mem) ( addr-value)
( ! - store value by addr) ( val addr -)
( c@ - read one byte starting at addr) ( addr - char)
( c! - store one byte by addr) ( ch addr -)
." Testing the concat program" cr
." First" cr
m" First"
." Second" cr
m" Second"
concat cr
