#!/bin/bash

source /hps/nobackup/cochrane/ena/users/analyser/miniconda3/etc/profile.d/conda.sh
export PATH="/hps/nobackup/cochrane/ena/users/analyser/miniconda3/bin:$PATH"

echo "deleting old files"
rm -rvf package/*/results/
rm -rvf package/*/auspice
rm -rvf  package/*/.snakemake

/hps/nobackup/cochrane/ena/users/analyser/miniconda3/bin/python /hps/nobackup/cochrane/ena/nexstrain/ena-nextstrain/main.py -o /hps/nobackup/cochrane/ena/nexstrain/output/ -w /hps/nobackup/cochrane/ena/nexstrain/ena-nextstrain


