FILENAME="data/THINKBOOK_2025-10-08/measurements_15:59"
perl scripts/csv_quicksort_extractor2.pl < "$FILENAME.txt" > "${FILENAME}_wide.csv"
echo "
  set terminal png size 600,400 
  set output '${FILENAME}_wide.png'
  set datafile separator ','
  set key autotitle columnhead
  plot '${FILENAME}_wide.csv' using 1:2 with linespoints, '' using 1:3 with linespoints, '' using 1:4 with linespoints
" | gnuplot
echo [[file:${FILENAME}_wide.png]]