( addr addr - addrsum)
: concat
	( swap prints prints)
	dup rot rot swap dup rot rot ( s2 s1 s2 s1)
	0 rot rot ( s2 s1 0 s2 s1)
	1 -
	repeat
		rot 1 + rot rot
		1 +
		dup	c@ 
		dup
		emit
		if 0 else 1 then
		
	until drop
	swap 1 - swap
	( s2 s1 len1 s2)
	swap dup rot rot swap ( s2 s1 len1 len1 s2)
	1 -
	repeat
		swap 1 + swap
		1 +
		dup	c@ 
		dup
		emit
		if 0 else 1 then
		
	until drop
	1 -
	( s2 s1 len1 len)
	dup rot rot ( s2 s1 len len1 len)
	swap dup rot rot ( s2 s1 len len1 len len1)
	- (s2 s1 len len1 len2)
	rot
	1 +
	dup
	heap-alloc
	( s2 s1 len1 len2 addr)
	
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
