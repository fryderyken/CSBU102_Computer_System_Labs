# Tr?n Tr?nh Quang Anh, 26560003, print nguyen van an 
# Listing 8 - capital letters at chosen positions of a string 
# Register plan:  $s0 = address of the first byte of str1 

.data 
str1: .asciiz "nguyen van an" 
tag:  .asciiz " [end]" 
nl:   .asciiz "\n" 

.text 
.globl main 
main: 
    la   $s0, str1        # $s0 = address of str1 

    # >>> make the byte at offset 0 a capital letter 
    lb   $t0, 0($s0)      # load 'n' into $t0
    addi $t0, $t0, -32    # subtract 32 to convert 'n' to 'N'
    sb   $t0, 0($s0)      # save 'N' back into offset 0

    # >>> make the byte at offset 7 a capital letter 
    lb   $t0, 7($s0)      # load 'v' into $t0
    addi $t0, $t0, -32    # subtract 32 to convert 'v' to 'V'
    sb   $t0, 7($s0)      # save 'V' back into offset 7

    # >>> make the byte at offset 11 a capital letter 
    lb   $t0, 11($s0)     # load 'a' into $t0
    addi $t0, $t0, -32    # subtract 32 to convert 'a' to 'A'
    sb   $t0, 11($s0)     # save 'A' back into offset 11

    li   $v0, 4           # service 4: print the string that starts at $a0 
    add  $a0, $s0, $zero 
    syscall 

    li   $v0, 4 
    la   $a0, nl 
    syscall 

    li   $v0, 10 
    syscall