set terminal postscript eps enhanced
set output "data/c-205341.eps"
set grid
set nokey
set size .4,.4
plot [0:5][0:5] 'data/c-205341.dat' with linespoints lw 4