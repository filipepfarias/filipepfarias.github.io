for i in {1..13}; do
  infile="sim_26122023_fenrir_var${i}.pdf"
  outfile="sim_26122023_fenrir_var${i}.svg"
  if [ -f "$infile" ]; then
    echo "Converting $infile to $outfile..."
    pdf2svg "$infile" "$outfile"
  else
    echo "Skipping $infile (not found)"
  fi
done
