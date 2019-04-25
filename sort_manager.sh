#!/bin/bash
mkdir inputs

for local in "melhor" "pior" "medio"
do
    cd inputs
    mkdir $local
    cd ..
    echo $local",Heap,Quick,Shell" > Resultado_$local.csv

    for quantidade in "50000" "100000" "500000"
    do
        python3 gerar_casos.py $local $quantidade
        sh usertosort.sh $local $quantidade &
    done
    wait
done

# Espera os os filhos terminar
wait

# Desligar o PC
# shutdown -h now
