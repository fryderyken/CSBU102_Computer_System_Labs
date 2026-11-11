# Tr?n Tr?nh Quang Anh, 26560003, calculate the memory address using a variable index stored in a register and print its value
# Listing 4 - the index of the element is held in a register 

# Register plan:  $s0 = address of scores[0]   $s1 = i 

.data 

scores: .word 40, 55, 70, 85, 100 

msg:    .asciiz "scores[i] = " 

nl:     .asciiz "\n" 

  

.text 

.globl main 

main: 

    

    la   $s0, scores        # $s0 = base address of scores

    # --- Part 1: Change scores[3] to 46 ---
    addi $s1, $zero, 3      # k = 3
    addi $t2, $zero, 46     # V = 46
    sll  $t1, $s1, 2        # $t1 = offset (3 * 4 = 12)
    add  $t1, $t1, $s0      # $t1 = address of scores[3]
    sw   $t2, 0($t1)        # Store 46 into scores[3]

    # --- Part 2: Add up all 5 scores ---
    # We load each one manually and add it to $s3
    lw   $t0, 0($s0)        # Load index 0 (40)
    add  $s3, $zero, $t0    # Start sum with 40

    lw   $t0, 4($s0)        # Load index 1 (55)
    add  $s3, $s3, $t0      # Add 55

    lw   $t0, 8($s0)        # Load index 2 (70)
    add  $s3, $s3, $t0      # Add 70

    lw   $t0, 12($s0)       # Load index 3 (Now 46)
    add  $s3, $s3, $t0      # Add 46

    lw   $t0, 16($s0)       # Load index 4 (100)
    add  $s3, $s3, $t0      # Add 100 -> Total is 311

    # --- Part 3: Print the result ---
    li   $v0, 4             # Print string
    la   $a0, msg
    syscall

    li   $v0, 1             # Print integer
    add  $a0, $s3, $zero    # Put calculated total (311) in a0
    syscall

    li   $v0, 4             # Print newline
    la   $a0, nl
    syscall

    li   $v0, 10            # Exit
    syscall