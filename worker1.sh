#!/bin/sh

# grab the number passed in from the master
run_number=$1

# add mpi and mf6 binaries to path
export PATH=/home/ssm-user/miniforge3/envs/parallel/bin:$PATH
echo $PATH

# mpi requires home to be set
export HOME=/home
echo $HOME

# test run modflow 6
mpiexec -np 2 mf6 -p -v