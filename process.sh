# Weave
bash org2nw.sed lp.org | noweave -n -x | sed 's/^!//;s/@<</<</' > lp.tex
latex litProg
bibtex litProg
latex litProg
latex litProg
dvipdf litProg

# Tangle
bash org2nw.sed lp.org | notangle -Rorg2nw > org2nw
chmod +x org2nw
./org2nw lp.org | notangle -Rcr.c > cr.c
gcc -Wall cr.c -o cr
zcat seq.fasta.gz | ./cr
