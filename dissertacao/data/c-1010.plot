set terminal postscript eps enhanced
set ylabel "altura"
set xlabel "tempo"
set xtics 1
set ytics 0
set output "data/c-1010.eps"
set nokey
set size .3,.3
plot [0:3][0:1] 'data/c-1010.dat' with linespoints lw 4
