#
# This file has been created by BOPC at: 02/09/2024 14:19
# 
# Solution #1
# Mapping #1
# Registers: __r0 <-> rdi | __r1 <-> rsi | __r2 <-> rdx
# Variables: 
# 
# Simulated Trace: [(2, '40257e', '40257e'), (4, '40257e', '40257e'), (6, '40257e', '40257e'), (8, '40257e', '40257e')]
# 

break *0x401080
break *0x40257e

# Entry point
set $pc = 0x40257e 


# Allocation size is always bigger (it may not needed at all)
set $pool = malloc(16384)

# Allocation size is always bigger
set $alloca = malloc(256)

# OPTIONAL!
set $rbp = $rsp + 0xc00 
# Stack and frame pointers aliases
set $stack = $rsp 
set $frame = $rbp 





set {char[8]} (($stack + 0x13c8)) =  {0x3f, 0xb3, 0x4d, 0xd3, 0x00, 0x00, 0x00, 0x00}
set {char[8]} (($stack + 0x13d8)) =  {0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00}
set {char[8]} (($stack + 0x13f4)) =  {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00}

# External input (stdin): []
# External input (foo.txt): []
# External input (return): []
