reset

set datafile separator ","

set terminal \
    pngcairo \
    transparent \
    enhanced \
    font "CMU Serif, 20" \
    size 800, 600

set output ARG1

# line styles
set style line 1 linecolor rgb "#a6cee3"
set style line 2 linecolor rgb "#b2df8a"
set style line 3 linecolor rgb "#fb9a99"
set style line 4 linecolor rgb "#fdbf6f"
set style line 5 linecolor rgb "#cab2d6"

set title "In-Degree/Out-Degree Correlations in Token Graphs"

set grid

set key right top
set key spacing 1 font "CMU Serif, 16"

set xtic nomirror rotate by -90 scale 0
set xlabel "In-Degree"
set format x "%'h"

set ylabel "Out-Degree
set format y "%'h"

set logscale xy

set decimal locale

plot "unfiltered-token-graph-in-out-degrees.csv" using "in-degree":"out-degree" title "Unfiltered Token Graph" \
     linestyle 2 linewidth 3, \
     "filtered-token-graph-in-out-degrees.csv" using "in-degree":"out-degree" title "Filtered Token Graph" \
     linestyle 4 linewidth 3

unset output

show plot add2history
