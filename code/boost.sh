#!/bin/bash

cd ..
BASE_DIR=$PWD/ext/
cd INSTALLATION

#MPI_COMPILER_INVOCATION=$BASE_DIR/MPICH/bin/mpicxx
MPI_COMPILER_INVOCATION=/opt/openmpi/bin/mpicxx


if [[ $1 == *boost* ]]
then
if [ -e $BASE_DIR/Boost ]
  then
    echo "A directory named $BASE_DIR/Boost already exists; you must delete it before it can be rebuilt."
    exit
  fi
  if [ ! -e boost_1_54_0.tar.gz ]
  then
    echo "Boost tar file (boost_1_54_0.tar.gz) not found; you must download this and put it in this directory to continue."
    exit
  fi
  tar -xvf boost_1_54_0.tar.gz
  mkdir -p $BASE_DIR/Boost/Boost_1.54/include
  cp -r ./boost_1_54_0/boost $BASE_DIR/Boost/Boost_1.54/include
  cd boost_1_54_0
  ./bootstrap.sh --prefix=$BASE_DIR/Boost/Boost_1.54/ --with-libraries=chrono,context,coroutine,date_time,exception,filesystem,graph,graph_parallel,iostreams,locale,log,math,mpi,program_options,python,random,regex,serialization,signals,system,test,thread,timer,wave
  echo "using mpi : $MPI_COMPILER_INVOCATION ;" >>./tools/build/v2/user-config.jam
  ./b2 --layout=tagged link=static variant=release threading=multi runtime-link=static stage install
  cd ..
fi