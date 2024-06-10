# The failed Exercise 3, here for illustrative purposes

The idea here was to containerize Exercise 2.  This ran into some Problems:

- Uses lmod (`module load this-n-that`) - no easy way to reproduce this inside
  the container
- Consequently, I had to reproduce as best I could, instead of capture, the
  environment--such as by basing this image on an _equivalent_ Python 3.11.5
  Docker image
- Had to figure out the important parts of `module load scipy-stack/2023b`
- Adjusted the scripts to not depend on being in specific directories
- Takes 15 minutes to build on a dedicated VM.  Not great for a class exercise.

On the plus side, the final image, built on an Ubuntu VM, runs fine on a Rocky
Linux host, producing the same output.

To see the updates I made to the scripts in Exercise 2, run the following from
the root of the Git workspace:

```
diff -uNr exercise_2 exercise_3_pt1/source | less
```

## Notes on this solution

The container is actually built in two parts, though this isn't strictly
necessary: the first part takes quite a while, and in debugging the second
part's build, it was nice not to have to rebuild the entire first part every
time.  So they were split.

## How to build

Note: make sure you're in the directory in which this README.md resides, or
adjust the following commands accordingly.

1. If necessary, load the `apptainer` module:
    ```
    module load apptainer
    ```
   I had to then unset an environment variable that created, otherwise builds
   failed.
    ```
    unset APPTAINER_BIND
    ```
   But this might be specific to Alliance and/or Magic Castle environments.
1. Build the first image (I like to place it outside this repository, but you
   do you):
    ```
    apptainer build ../../analysis1.sif analysis1.def
    ```
    On a VM not doing anything else this took 10 minutes.
1. Assuming that worked, build the second:
    ```
    apptainer build ../../analysis2.sif analysis2.def
    ```
   This one took 5 minutes.

## How to run

> *Important*: in an HPC environment, we don't run our analysis on the login
> nodes, and we don't run our analysis containers on the login nodes either.
> See below for a job file that you can use to run this as a batch job on HPC.

You can run this container from wherever, and it will download the files it
needs (data files) and doesn't already have, and create output in the current
working directory.  I like to create separate run directories for this, and
again, I don't want to create stuff in the git workspace, so starting from the
location of this README.md:

```
cd ../..
mkdir run1
cd run1
../analysis2.sif
```

That should do it.  The data is downloaded locally and output is generated in
this directory.

### How to run in a batch job

You can use this handy job file:

```
#!/bin/bash

mkdir $SLURM_JOB_ID
cd $SLURM_JOB_ID
$HOME/analysis2.sif
cd
```

There are no memory requirements in this file because _running_ the container
doesn't use much memory.  _Building_ the container does, however, I was unable
to build the second image from the first image in the course environment.
