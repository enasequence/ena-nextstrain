#!/bin/bash
#
#SBATCH -J "nextstrain"
#SBATCH -o "nextstrain.out"
#SBATCH -e "nextstrain.err"
#SBATCH --time=24:00:00
#SBATCH --mem=20G
#SBATCH --mail-user=khadim@ebi.ac.uk   # email address
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
#SBATCH --cpus-per-task=10
#SBATCH -p standard


source /hps/nobackup/cochrane/ena/users/analyser/miniconda3/etc/profile.d/conda.sh
export PATH="/hps/nobackup/cochrane/ena/users/analyser/miniconda3/bin:$PATH"


rm -rf package/*/results/
rm -rf package/*/auspice
rm -rf  package/*/.snakemake

/hps/nobackup/cochrane/ena/users/analyser/miniconda3/bin/python main.py -o auspice_res


