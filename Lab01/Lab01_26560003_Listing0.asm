#Tr?n Tr?nh Quang Anh, 26560003, printing Hello, MARS
# Listing 0 - quick check 

.data 

msg:   .asciiz "Hello, MARS!\n" 

  

.text 

.globl main 

main: 

    li   $v0, 4 

    la   $a0, msg 

    syscall 

    li   $v0, 10 

    syscall 