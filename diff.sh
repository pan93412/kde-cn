#!/bin/bash

# Copyright Guo Yunhe <guoyunhebrave@gmail.com> 2017

# This script will check translation changes before submit.

# Check trunk branch
cd trunk/zh_CN
svn diff > ../../trunk.diff
if [ -s ../../trunk.diff ]
then
    kompare -o ../../trunk.diff
fi
cd ../..

# Check stable branch
cd stable/zh_CN
svn diff > ../../stable.diff
if [ -s ../../stable.diff ]
then
    kompare -o ../../stable.diff
fi
cd ../..

# End of file
