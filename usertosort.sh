#!/bin/sh

saida_quick=0
saida_heap=0
saida_shell=0
sum_quick=0
sum_heap=0
sum_shell=0 

for i in `seq 0 2`
do
    echo $1' com '$2' quick_sort caso'$i' Iniciou'
    saida_quick=$(python3 quick_sort.py < 'inputs/'$1'/'$2'caso'$i'.txt')
    echo $1' com '$2' quick_sort caso'$i' Encerrou'
    echo $1' com '$2' heap_sort caso'$i' Iniciou'
    saida_heap=$(python3 heap_sort.py < 'inputs/'$1'/'$2'caso'$i'.txt')
    echo $1' com '$2' heap_sort caso'$i' Encerrou'
    echo $1' com '$2' shell_sort caso'$i' Iniciou'
    saida_shell=$(python3 shell_sort.py < 'inputs/'$1'/'$2'caso'$i'.txt')
    echo $1' com '$2' shell_sort caso'$i' Encerrou'

    sum_quick=$(python3 -c "print($saida_quick+$sum_quick)")
    sum_heap=$(python3 -c "print($saida_heap+$sum_heap)")
    sum_shell=$(python3 -c "print($saida_shell+$sum_shell)")
done
media_quick=$(python3 -c "print($sum_quick / 3)")
media_heap=$(python3 -c "print($sum_heap / 3)")
media_shell=$(python3 -c "print($sum_shell / 3)")
printf "%s,%.5f,%.5f,%.5f\n" "$2" "$media_heap" "$media_quick" "$media_shell" >> Resultado_$1.csv
