# EPYC General Documentation

## Connecting:

### Connecting to Pulse
You must be connected to through pulse as the firewall-Chem-SSLVPN-Jordan-PULSE role.
If you don't have this role as an option, contact Bud (dragon3@pitt.edu)

### Connecting to cluster
`ssh username@jordan-EPYC.chem.pitt.edu`

**username**: Your current pitt username, unless told otherwise.


## Submitting  jobs
The slurm workload manager will be used to manage jobs. We just have one partition, addie, named after Ken's cat!

A sample submit script:
```
#SBATCH -N 1
#SBATCH --job-name=test
#SBATCH --time=8-00:00:00
#SBATCH --mem=32g
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --output=slurm.out
#SBATCH --partition=addie
```

### Limits:
**Max wall time**: 8 days. 
- Note: If you need more time, just contact any of us (Shiv, Devin, Amanda)

**Memory**: Try to request in multiples of 32GB or less per core to equally share 1TB memory across the 32 available cores. If you request more memory than you need the jobs of others may not be able to run. Please be courteous. 

## Software
We are using Spack (link) to manage software on the cluster. 
Software installed through Spack can be loaded with `module` as you would on h2p. 

If you want to use a specific software that isn't yet available, just ask in the slack epyc channel!

