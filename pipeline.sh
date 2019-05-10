#annotate genomes with prokka
prokka --kingdom Bacteria --outdir prokka_L2074 --genus Listeria --locustag HL2074 L2074.fasta
prokka --kingdom Bacteria --outdir prokka_HM00110618 --genus Listeria --locustag HM00110618 HM00110618.fsa_nt
#Pangenome Roary
roary -e --mafft -p 8 *.gff
#generate tree
FastTree -gtr -nt core_gene_alignment.aln > mytree.tree
