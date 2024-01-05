################################################################################
# Project:
# Part:
# Step:
#
# Dependent on:
#
# Alex Huebner, 
################################################################################

import os

if not os.path.isdir("snakemake_tmp"):
    os.makedirs("snakemake_tmp")

os.environ["OPENBLAS_NUM_THREADS"] = '1'
os.environ["OMP_NUM_THREADS"] = '1'

#### SAMPLES ###################################################################

################################################################################

rule all:
    input:


rule :
    input:
        ""
    output:
        ""
    message: ""
    conda: ""
    container: ""
    resources:
        mem = ,
        cores = 
    params: 
    threads: 1
    shell:
        """
        """
