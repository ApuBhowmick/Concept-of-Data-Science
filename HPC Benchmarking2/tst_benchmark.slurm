#!/bin/bash -l
#SBATCH --account=lp_h_ds_students
#SBATCH --cluster=genius
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00

# Activate virtual environment
source $VSC_HOME/tst_env/bin/activate


/usr/bin/time -p python ternary_search_tree.py
