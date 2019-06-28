# Install instructions for QP2 singularity container
1. Download singularity
2. Make the contianer

    `sudo singularity build --sandbox quantum\_package.img  SingularityFile`
3. Interact with the image through the following command:

    `sudo singularity shell --writable quantum\_package.img`

     Interacting is like sshing into the image. Now you can build QP2 according to the instructions found [here](https://quantum-package.readthedocs.io/en/master/intro/install.html). What is left out of the instillation instructions is that once all dependencies are installed as described, just type `make` in the `quantum_package` directory. QP2 is located in `/opt`.

4. Once built you will need to copy the 90-environment.sh file in this directory to

    `/opt/quantum_package.img/.singularity.d/env/90-environment.sh`

    This command makes the sandbox image which is a folder into a file that you can use on the cluster.
5. Build an image to run on the cluster using

   `sudo singularity build quantum\_package.simg quantum\_package.img`
6. scp the image to the cluster


# Running the code
## Single job
You can run a single command by running

 `singularity exec -B /ihome:/ihome -B /scratch:/scratch /ihome/kjordan/shu8/docker-qp/singularity\_test/quantum\_package.simg qp\_run fci job_name.ezfio`

## Interactive shell
This will allow you access to the entire environment. Autocompletion will work, and the correct dependencies will be available.

`singularity shell -B /ihome:/ihome -B /scratch:/scratch \
    ${QP2_SING_PATH}/quantum_package.simg`

 ## Slurm script
 This can also be put in slurm scripts, but an example of this is given below.
```
#!/bin/bash
#SBATCH --job-name=your_job_name
#SBATCH --output=slurm.out
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=50gb
#SBATCH --time=0-10:00:00

# Load the module
module purge
module load singularity/3.1.0

export QP2_SING_PATH='path_to_singulairty_image'

singularity exec -B /ihome:/ihome -B /scratch:/scratch \
${QP2_SING_PATH}quantum_package.simg qp set_frozen_core $SLURM_JOB_NAME.ezfio

singularity exec -B /ihome:/ihome -B /scratch:/scratch \
${QP2_SING_PATH}quantum_package.simg qp_run fci $SLURM_JOB_NAME.ezfio
```
