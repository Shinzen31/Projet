set title "Benchmark Results"
set ylabel "MiB/s"
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9 relative
set xtic scale 0
set xtics scale 0
set grid y
set key top left

plot for [i=2:6] 'version_gcc.txt' using (i-2):11:xtic(1) title columnhead(i) linecolor rgb "red", \
     for [i=2:6] 'version_clang.txt' using (i-2+0.3):11:xtic(1) title columnhead(i) linecolor rgb "blue", \
     for [i=2:6] 'version_icx.txt' using (i-2+0.6):11:xtic(1) title columnhead(i) linecolor rgb "green".\
