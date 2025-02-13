#
# This file has been created by BOPC at: 14/01/2025 21:37
# 
# Solution #1
# Mapping #20
# Registers: __r0 <-> rbx | __r1 <-> rcx
# Variables: 
# 
# Simulated Trace: [(2, '41bd77', '41bd77'), (4, '41bd77', '41bd77')]
# 

break *0x41bd21
break *0x41bd77

# Entry point
set $pc = 0x41bd77 


# Allocation size is always bigger (it may not needed at all)
set $pool = malloc(8200)

# Allocation size is always bigger
set $alloca = malloc(4352)

# OPTIONAL!
set $rbp = $rsp + 0xc00 
# Stack and frame pointers aliases
set $stack = $rsp 
set $frame = $rbp 

# (DROP) rbx = 3389001720

set $rbx = ($pool + 0xff8)



set {char[8]} (($pool + 0x1000)) =  {0x88, 0x88, 0x88, 0x00, 0x00, 0x00, 0x00, 0x00}
set {char[8]} (($pool + 0xff8)) = (long long int) ($alloca + 0x100)

# External input (stdin): []
# External input (foo.txt): []
# External input (return): []
