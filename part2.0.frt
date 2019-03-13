: collats
	repeat
		dup 2 % not
		if dup 2 / else
			dup 3 * 1 +
		then
		dup . ."  "
		( if top=1 -> put not 0 on the top)
		dup 1 =
		if 1 else 0 then
	until
;
 5 dup ." [" . ." ] " collats cr
 3 dup ." [" . ." ] " collats cr
 1 dup ." [" . ." ] " collats cr
 10 dup ." [" . ." ] " collats cr
