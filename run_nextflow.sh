#!/bin/bash
#SBATCH -p htc_genoa
#SBATCH --mem=10GB
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --tasks-per-node=1
#SBATCH -t 05:00:00 
#SBATCH -o slurm/%J.out
#SBATCH -e slurm/%J.err
#SBATCH --job-name=NEXT
#SBATCH --reservation=training_scrna_seq_20260629

myDir=$(pwd)

module load java 
module load Nextflow/25.04.6
module load CellRanger/10.0.0

nextflow run ${myDir}/main.nf --aggr true -with-trace


# to run this script
# sbatch run_nextflow.sh
