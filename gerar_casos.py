from random import randrange
import sys

for c in range(3):
    n = (c+1) * int(sys.argv[2])

    numeros = []
    for i in range(n):
        numeros.append(i+1)

    file = open('inputs/'+str(sys.argv[1])+'/'+sys.argv[2]+'caso'+str(c)+'.txt', 'w')
    
    if sys.argv[1] == 'melhor':
        for numero in numeros:
            file.write(str(numero)+" ")

    elif sys.argv[1] == 'pior':
        for numero in numeros[::-1]:
            file.write(str(numero)+' ')

    elif sys.argv[1] == 'medio':
        for i in range(n):
            r = randrange(n)
            numeros[i], numeros[r] = numeros[r], numeros[i]

        for numero in numeros:
            file.write(str(numero)+" ")
