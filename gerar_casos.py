from random import randrange
import sys

for c in range(20):
    n = (c+1) * sys.argv[1]

    numeros = []
    for i in range(n):
        numeros.append(i+1)

    # Caminho melhor caso: inputs/melhor
    file = open('inputs/melhor/caso'+str(c)+'.txt', 'w')
    for numero in numeros:
        file.write(str(numero)+" ")

    # Caminho pior caso: inputs/pior
    file = open('inputs/pior/caso'+str(c)+'.txt', 'w')
    for i in range((len(numeros)-1), 0, -1):
        file.write(str(numero[i])+' ')

    # Caminho medio caso: inputs/medio
    for i in range(n):
        r = randrange(n)
        numeros[i], numeros[r] = numeros[r], numeros[i]
        
    file = open('inputs/medio/caso'+str(c)+'.txt', 'w')
    for numero in numeros:
        file.write(str(numero)+" ")