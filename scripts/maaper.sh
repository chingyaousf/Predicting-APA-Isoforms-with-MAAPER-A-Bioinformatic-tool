#!/bin/bash
#SBATCH --chdir=/work/c/chingyao/maaper
#SBATCH --mail-type=ALL
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=2
#SBATCH --mem=50000
#SBATCH --time=12:00:00
#SBATCH -o run.out
#SBATCH -e run.err
#SBATCH --mail-user=chingyao@usf.edu
#SBATCH --job-name=maaper_job
#SBATCH --output=maaper_job.out
#SBATCH --partition=rra --qos=rra

# Activate the R module
module purge
module load apps/R/3.6.3-el7-gcc


# Create an R script file within the Slurm script
cat <<EOF > maaper_script.R
# Install or load the BiocManager package
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

# Load the BiocManager package
library(BiocManager)

# Install the "MAAPER" package using BiocManager
BiocManager::install("MAAPER")

# Load the "MAAPER" package
library(MAAPER)

pas_annotation = readRDS("./mouse.PAS.mm9.rds")
gtf = "./gencode.mm9.chr19.gtf"
# bam file of condition 1 (could be a vector if there are multiple samples)
bam_c1 = "./NT_chr19_example.bam"
# bam file of condition 2 (could be a vector if there are multiple samples)
bam_c2 = "./AS_4h_chr19_example.bam"

maaper(gtf, pas_annotation, output_dir = "./", bam_c1, bam_c2, read_len = 76, ncores = 12)
EOF

# Execute the R script using Rscript
Rscript maaper_script.R

# Remove the temporary R script file
rm -f maaper_script.R
