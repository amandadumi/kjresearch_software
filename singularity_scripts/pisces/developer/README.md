# PISCES

This singularity image allows one to have all of the dependencies set up for development purposes. 
A separate singularity script will be made to launch the PISCES executables.
To build image locally, run 

```
sudo singularity pisces.img /path/to/pisces.txt
```

Once everything is complete and the singularity image is compiled, you can interact with the compilation and the corresponding files by launching a shell of the image as follows:

```sudo singularity shell pisces.img```

For development purposes we also want to have access to the PISCES directory on our local machine. To do this we must **bind** the directory on the host machine to the image

```
sudo singularity shell pisces.img -b /path/to/pisces/
```

