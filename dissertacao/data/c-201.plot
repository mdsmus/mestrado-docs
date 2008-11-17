set terminal postscript eps enhanced
set ylabel "altura"
set xlabel "tempo"
set output "data/c-201.eps"
set grid
set nokey
set size .3,.3
plot [0:2][0:2] 'data/c-201.dat' with linespoints lw 4
