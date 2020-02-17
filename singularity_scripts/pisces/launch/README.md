# PISCES

To build image locally, you first must replace username and password with your github username and password. This is because the PISCES is currently a private repository. Then run

`sudo singularity pisces.img /path/to/pisces.txt`

Once everything is complete and the singularity image is compiled, you can interact with the compilation and the corresponding files by launching a shell of the image as follows:

`sudo singularity shell pisces.img`

As a reccomendation, I work within my normal text editor and simly sudo cp the files into the appropriate location within the singularity. Otherwise, you can use the vim editor within the singualrity shell


