# Scrivere un programma assembly che identifica il minimo
# dei valori di un array di numeri interi.
# - Scrivere un main che chiama una procedura: min_array che
#   riceve come parametri in input l’indirizzo di un array di
#   interi e la sua dimensione e ritorna il valore minimo tra
#   gli elementi dell’array.
# - La procedura min_array chiama una procedura: min2numeri che
#   riceve come parametri in input due interi e ritorna il
#   valore minimo tra i due numeri.


.data
    var: .word 5

.text
.globl main

main:
    