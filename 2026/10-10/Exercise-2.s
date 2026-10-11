.data
    vita_eroe:   .word 50
    vita_mostro: .word 30
    monete:      .word 10
    scelta:      .word 1    #1 per attacco, 2 per cura

.text
.globl main

main:
    lw		$t1, vita_eroe
    lw		$t2, vita_mostro 
    lw      $t3, monete
    lw      $t4, scelta
    li      $t5, 1
    li      $t6, 2
    li      $t7, 0
    
    beq		$t4, $t5, attacco
    beq		$t4, $t6, cura
    j fine
    
    attacco:
        addi    $t2, $t2, -30
        addi    $t3, $t3, 20
        sw		$t2, vita_mostro 
        sw      $t3, monete

        beq		$t2, $t7, vittoria
        j fine

    cura:
        li      $t8, 5
        blt		$t3, $t8, fine
            addi	$t1, $t1, 15
            addi	$t3, $t3, -5
            sw      $t1, vita_eroe
            sw      $t3, monete
        
        j fine

    vittoria:
        addi    $t3, $t3, 10
        sw      $t3, monete

        j fine

    fine:
        li $v0, 10
        syscall
