#!/bin/bash

#SBATCH -p compute_amd
#SBATCH --mem=80GB
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --tasks-per-node=1
#SBATCH -t 08:00:00 
#SBATCH -o slurm/%J.out
#SBATCH -e slurm/%J.err
#SBATCH --job-name=NEXT
#SBATCH --account=scw2358

myDir=$(pwd)

module load java 
module load nextflow/24.10.4
module load cellranger/7.2.0

nextflow run ${myDir}/main.nf --aggr true -with-trace

# to run
# sbatch run_nextflow.sh
