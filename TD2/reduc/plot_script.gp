set terminal pngcairo enhanced font "arial,10" size 800, 600
set output 'performance_comparison.png'
set title "Performance Comparison"
set style data histograms
set style fill solid
set boxwidth 0.8
set xtics rotate by -45
set yrange [0:*]

plot 'clang_O1.txt' using 13:xticlabels(1) title 'clang -O1', \
     'clang_O2.txt' using 13:xticlabels(1) title 'clang -O2', \
     'clang_O3.txt' using 13:xticlabels(1) title 'clang -O3', \
     'clang_Ofast.txt' using 13:xticlabels(1) title 'clang -Ofast', \
     'gcc_O1.txt' using 13:xticlabels(1) title 'gcc -O1', \
     'gcc_O2.txt' using 13:xticlabels(1) title 'gcc -O2', \
     'gcc_O3.txt' using 13:xticlabels(1) title 'gcc -O3', \
     'gcc_Ofast.txt' using 13:xticlabels(1) title 'gcc -Ofast'
