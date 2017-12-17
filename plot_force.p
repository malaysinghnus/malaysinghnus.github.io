# Gnuplot script file for plotting data in file "force.dat"
#x:y is the way to give column numbers of a file.
set terminal postscript enhanced eps font "Helvetica,50" size 10,8 color
set output "forceplot.ps"  
set xlabel font ",40"
set ylabel font ",40"
set xtics font ",40"
set ytics font ",40"
set pointsize 4
set autoscale
set key right bottom font ",30" box
set grid
set  title 'Force-Deflection'
set xlabel 'Deflection'
set ylabel 'Force'
plot 'force.dat' using 1:2 title 'Column' with linespoints pt 7 lw 4 lt 1 lc rgb "blue",\
        'force.dat' using 1:3 title 'Beam' with linespoints pt 5 lw 4 lt 1  lc rgb "green"
