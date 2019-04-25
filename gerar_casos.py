from random import randrange
import sys

for c in range(10):
    n = (c+1) * int(sys.argv[2])

    numeros = []
    for i in range(n):
        numeros.append(i+1)

    file = open('inputs/'+str(sys.argv[1])+'/caso'+str(c)+'.txt', 'w')
    
    if sys.argv[1] == 'melhor':
        for numero in numeros:
            file.write(str(numero)+" ")

    elif sys.argv[1] == 'pior':
        for i in range((len(numeros)-1), 0, -1):
            file.write(str(numeros[i])+' ')

    elif sys.argv[1] == 'medio':
        for i in range(n):
            r = randrange(n)
            numeros[i], numeros[r] = numeros[r], numeros[i]

        for numero in numeros:
            file.write(str(numero)+" ")
'''
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
'''