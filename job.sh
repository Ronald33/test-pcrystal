#!/bin/bash
#SBATCH --job-name          script-basic
#SBATCH --time              720:00:00
#SBATCH --nodes             1
#SBATCH --tasks-per-node    24
#SBATCH --mem               62GB
#SBATCH --error             output-%j.error
#SBATCH --output            output-%j.output

# Eliminamos los modulos cargados
module purge

# Cargando los modulos necesarios
module load pcrystal/23.0
source /opt/crystal23/pcrystal/utils23/cry23.bashrc

runcry23 test11
