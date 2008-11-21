set terminal postscript eps enhanced
set ylabel "altura"
set xlabel "tempo"
set xtics 1
set ytics 1
set output "data/c-6859.eps"
set grid
set nokey
set size .3,.3
plot [0:3][5:9] 'data/c-6859.dat' with linespoints lw 4
