( addr addr - addrsum)
: concat ( addr1 addr2 — addr3) ( concat addr2 + addr1 )
dup count >r
swap dup count
r@ 1 + +
heap-alloc
r> swap dup >r
swap >r
rot dup2
string-copy
drop
r> +
swap
string-copy
r> ;
