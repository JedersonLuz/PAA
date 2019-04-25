mkdir inputs

saida_quick=0
saida_heap=0
saida_shell=0

for local in "melhor" "pior" "medio"
do
    cd inputs
    mkdir $local
    cd ..
    echo $local",Heap,Quick,Shell" > Resultado_$local.csv

    for quantidade in "100000" "200000" "500000"
    do
        python3 gerar_casos.py $local $quantidade
        for i in `seq 0 9`
        do
            echo $local' com '$quantidade' quick_sort caso'$i' Iniciou'
            python3 quick_sort.py < 'inputs/'$local'/caso'$i'.txt' > $saida_quick
            echo $local' com '$quantidade' quick_sort caso'$i' Encerrou'
            echo $local' com '$quantidade' heap_sort caso'$i' Iniciou'
            python3 heap_sort.py < 'inputs/'$local'/caso'$i'.txt' > $saida_heap
            echo $local' com '$quantidade' heap_sort caso'$i' Encerrou'
            echo $local' com '$quantidade' shell_sort caso'$i' Iniciou'
            python3 shell_sort.py < 'inputs/'$local'/caso'$i'.txt' > $saida_shell
            echo $local' com '$quantidade' shell_sort caso'$i' Encerrou'
            sum_quick=$(($saida_quick+$sum_quick))
            sum_heap=$(($saida_heap+$sum_heap))
            sum_shell=$(($saida_shell+$sum_shell))
        done
        echo $quantidade','$(($sum_heap / 20))','$(($sum_quick / 20))','$(($sum_shell / 20)) >> Resultado_$local.csv
    done
done
