#!/usr/bin/bash

for fasta_file in ../Data/benchmark_viruses/*.fasta; do
	out_file="${fasta_file/.fasta/.prodigal.gff3}"
	#/home/adhock/Workspace/Prodigal/prodigal.linux -i $fasta_file -f gff -o $out_file
	/home/adhock/Workspace/Prodigal/prodigal.linux -i $fasta_file -t ../Data/host_data/ecolik12.trn -f gff -o $out_file
	wait
done



#Note that the best strategy would probably be to concat all these genomes into one big fasta file
#with one big output file that I then break apart. Seems reasonable
