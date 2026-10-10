.data
    a: .word 10
    b: .word 4

.text
.globl main

main:
    lw		$t1, a
    lw		$t2, b
    add		$t0, $t1, $t2
    addi	$t0, $t0, 6

    li		$v0, 10   
    syscall
