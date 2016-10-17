#!/usr/bin/env bash

mkdir -p src/
pushd src/

# OrthoMCL
wget \
    --continue \
    --output-document orthomclSoftware-v2.0.9.tar.gz \
    http://www.orthomcl.org/common/downloads/software/v2.0/orthomclSoftware-v2.0.9.tar.gz
tar xvf orthomclSoftware-v2.0.9.tar.gz


# Blast v2.2.26 (LEGACY!!!)
wget \
    --continue \
    --output-document blast-2.2.26-x64-linux.tar.gz \
    ftp://ftp.ncbi.nlm.nih.gov/blast/executables/legacy/2.2.26/blast-2.2.26-x64-linux.tar.gz
tar xvf blast-2.2.26-x64-linux.tar.gz
cp blast-2.2.26/bin/* ../bin/

# Transdecoder v3.0.0 -
## Even though it is on brew, it is buggy
wget \
    --continue \
    --output-document TransDecoder-3.0.0.tar.gz \
    https://github.com/TransDecoder/TransDecoder/archive/v3.0.0.tar.gz
tar xvf TransDecoder-3.0.0.tar.gz
pushd TransDecoder-3.0.0
make -j
popd
