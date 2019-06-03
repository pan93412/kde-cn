#!/bin/bash

# Copyright Guo Yunhe <guoyunhebrave@gmail.com> 2017
# Copyright 2019 pan93412 <pan93412@gmail.com>

# This script will check translation changes before submit.

# Import libs.
. ./libs.sh

# Commit branches.
for i in "trunk stable"
do
    commit $i $OPTLANG
done

# EOF
