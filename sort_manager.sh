python gerar_casos.py 100000

# Melhor Caso
casos = ("inputs/melhor" "inputs/pior" "inputs/medio")
for local in $casos
do
    for i in 'seq 1 20'
    do
        python quick_sort.py < '$local/caso$i.txt' > saida_quick
        python heap_sort.py < '$local/caso$i.txt' > saida_heap
        python shell_sort.py < '$local/caso$i.txt' > saida_shell
        sum_quick = $((saida_quick + sum_quick))
        sum_heap = $((saida_heap + sum_heap))
        sum_shell = $((saida_shell + sum_shell))
    done
done


echo "MC,Heap,Quick,Shell" > Resultado_MC.csv
echo "100000"
