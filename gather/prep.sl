#!/bin/bash -e
#SBATCH --array=0-9
#SBATCH --job-name=prep
#SBATCH --output=logs/job_%A_%a.out
#SBATCH --error=logs/job_%A_%a.err
#SBATCH --time=00:01:00
#SBATCH --ntasks=1

# Your parallel job logic here
srun bash ./prep.sh $SLURM_ARRAY_TASK_ID

