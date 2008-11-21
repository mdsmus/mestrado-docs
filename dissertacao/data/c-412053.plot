set terminal postscript eps enhanced
set xtics 1
set ytics 1
set output "data/c-412053.eps"
set grid
set nokey
set size .4,.4
plot [0:5][0:5] 'data/c-412053.dat' with linespoints lw 4
