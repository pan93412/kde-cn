#!/usr/bin/env bash

# Copyright Guo Yunhe <guoyunhebrave@gmail.com> 2017
# Copyright 2019 pan93412 <pan93412@gmail.com>

# This script will check translation changes before submit.

# Import libs.
. ./libs.sh

# Diff branches
for branch in "trunk stable"
do
    genDiff $branch $OPTLANG
done

# EOF
