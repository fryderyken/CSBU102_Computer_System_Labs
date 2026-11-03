#Tr?n Tr?nh Quang Anh, 26560003, y z w calculations 
# Listing 4 - translating statements 

.text 

.globl main 

main: 

    addi $s0, $zero, 8       # y = 8 

    addi $s1, $zero, 5       # z = 5 

    addi $s2, $zero, 3       # w = 3 

  

    # >>> instructions for x1, x2, x3 and x4 
    # 1. x1 = y + z + w
    add $t0, $s0, $s1       # t0 = y + z
    add $t0, $t0, $s2       # t0 = result + w
    
    # 2. x2 = (y+z) - (w+5)
    add $t5, $s0, $s1       # t5 = y + z
    addi $t1, $s2, 5        # t1 = w + 5
    sub $t1, $t5, $t1       # t1 = t5 - t1
    
    # 3. x3 = y (copy)
    add $t2, $s0, $zero     # t2 = y + 0
    
    # 4. x4 = z - y
    sub $t3, $s1, $s0       # t3 = z - y
  

    li   $v0, 10 

    syscall