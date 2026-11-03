#Tr?n Tr?nh Quang Anh, 26560003, calculating 5+7
# Listing 2 - a = b + c 

.text 

.globl main 

main: 

    addi $t1, $zero, 7       # b = 7 

    addi $t2, $zero, 5       # c = 5 

    add  $t0, $t1, $t2       # a = b + c 

    li   $v0, 10 

    syscall