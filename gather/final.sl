
#!/bin/bash
#SBATCH --array=0-99
#SBATCH --job-name=parallel_job
#SBATCH --output=logs/final_%A.out
#SBATCH --error=logs/final_%A.err
#SBATCH --time=00:01:00
#SBATCH --ntasks=1

"echo running final step "

# In principle, this script would require the jobid of the job array:
# jobid=$(sbatch prep.sl | awk '{print $4}')
# and then submit this script with 
# sbatch --dependency=afterok:$jobid final.sl
# However, there is no way to get this jobid inside this script using 
# an environment variable. One could, however save $jobid in a file 
# prior to launching final.sl and then have final.sl read that file.
# Seems clums...
