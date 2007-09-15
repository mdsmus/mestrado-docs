set title "Contorno 1"
set terminal png
set xlabel "altura"
set ylabel "tempo"
set output "da.png"
set nokey
plot [0:10][0:10] 'contorno1.dat' with linespoints