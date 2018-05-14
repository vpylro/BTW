#!/bin/sh

join_paired_ends.py -f R1_BMP.fastq -r R2_BMP.fastq -b Barcodes_BMP.fastq -o joined

split_libraries_fastq.py -i joined/fastqjoin.join.fastq -b joined/fastqjoin.join_barcodes.fastq -o slout -m Mapping16SIllu_BMP.txt --store_demultiplexed_fastq -r 0 -q 0 -n 100

vsearch --fastx_filter slout/seqs.fastq --fastq_maxee 1.0 --fastq_trunclen 240 --fastaout reads.fa

bmp-Qiime2Uparse.pl -i reads.fa -o reads_bmp.fa

vsearch --derep_fulllength reads_bmp.fa --output derep.fa --sizeout

vsearch --sortbysize derep.fa --output sorted.fa --minsize 2

vsearch --cluster_size sorted.fa --consout otus1.fa --id 0.97

fasta_formatter -i otus1.fa -o formated_otus1.fa

bmp-otuName.pl -i formated_otus1.fa -o otus.fa

vsearch --usearch_global reads_bmp.fa --db otus.fa --strand plus --id 0.97 --uc map.txt

assign_taxonomy.py -i otus.fa -m rdp -o taxonomy

bmp-map2qiime.py map.txt > otu_table.txt

make_otu_table.py -i otu_table.txt -t taxonomy/otus_tax_assignments.txt -o otu_table.biom

biom summarize-table -i otu_table.biom -o results_biom_table
