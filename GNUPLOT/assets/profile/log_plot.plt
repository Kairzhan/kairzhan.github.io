set terminal pdf size 11cm,9cm
set output "Ulog.pdf"
#set terminal png size 1100, 900
#set output "Ulog.png"

set xlabel "y^+" font ",12"
set ylabel "U^+" font ",12"
set tics font ",10"
set xrange [0.3:180]
set yrange [0:22]
set size square
set key top left font ",11"
set logscale x
set ytics nomirror
set bmargin 3

k=0.41
B=5.6

plot \
x with lines dashtype 2 lw 1 lc rgb "black" notitle ,\
1/k*log(x)+B with lines dashtype 2 lw 1 lc rgb "black" notitle ,\
"JAXA1.dat" using ($2):($3) with lines lw 2 lc rgb "red" title "JAXA, CHAN180", \
