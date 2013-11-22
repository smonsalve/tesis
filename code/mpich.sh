#!/bin/bash

cd ..
BASE_DIR=$PWD/ext/
cd INSTALLATION

#MPI_COMPILER_INVOCATION=$BASE_DIR/MPICH/bin/mpicxx
MPI_COMPILER_INVOCATION=/opt/openmpi/bin/mpicxx


if [[ $1 == *mpich* ]]
then
  if [ -e $BASE_DIR/MPICH ]
  then
    echo "A directory named $BASE_DIR/MPICH already exists; you must delete it before it can be rebuilt."
    exit
  fi
  if [ ! -e mpich2-1.4.1p1.tar.gz ]
  then
    echo "MPICH tar file (mpich2-1.4.1p1.tar.gz) not found; you must download this and put it in this directory to continue."
    exit
  fi 
  tar -xvf mpich2-1.4.1p1.tar.gz
  cd mpich2-1.4.1p1
  ./configure --prefix=$BASE_DIR/MPICH --disable-f77 --disable-fc
  make
  make install
  cd ..
  export PATH=$BASE_DIR/MPICH/bin/:$PATH
fi