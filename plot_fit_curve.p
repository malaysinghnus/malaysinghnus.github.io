# Gnuplot script file for plotting data in file "force.dat"
#It also fits the curve
#x:y
set terminal postscript enhanced eps font "Helvetica,50" size 10,8 color
set output "fitcurve.ps"  
set xlabel font ",40"
set ylabel font ",40"
set xtics font ",40"
set ytics font ",40"
set pointsize 4
set autoscale
set key right bottom font ",30" box

set grid
set key at  0.018,150 title "F(x) = A tanh (x/B)"             # title to key!
set title "Force Deflection Data \n and curve fit"      # note newline!
set xlabel 'Deflection, {/Symbol D}_x (m)'            # Greek symbols!
set ylabel 'Force, {/Times-Italic F}_A, (kN)'            # italics!
f1(x) = a1*tanh(x/b1)            # define the function to be fit
a1 = 300; b1 = 0.005;            # initial guess for a1 and b1
fit f1(x) 'force.dat' using 1:2 via a1, b1
f2(x) = a2 * tanh(x/b2)            # define the function to be fit
a2 = 300; b2 = 0.005;            # initial guess for a2 and b2
fit f2(x) 'force.dat' using 1:3 via a2, b2
plot    'force.dat' using 1:2 title 'Column data' with points pt 7  lw 4 lt 1 lc rgb "blue" ,\
        'force.dat' using 1:3 title 'Beam data'   with points pt 5 lw 4 lt 1 lc rgb "green",\
         a1*tanh( x / b1 ) title 'Column-fit' with lines lt 6 lw 4 lc rgb "black" ,\
         a2*tanh( x / b2 ) title 'Beam-fit' with lines lt 1 lw 16 lc rgb "red"
