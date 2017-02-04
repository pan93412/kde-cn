#!/bin/bash

# Copyright Guo Yunhe <guoyunhebrave@gmail.com> 2017

# This script will check translation changes before submit.

# Check trunk branch
cd trunk/zh_CN
svn commit -m "Translate kf5-trunk, zh_CN"
cd ../..

# Check stable branch
cd stable/zh_CN
svn commit -m "Translate kf5-stable, zh_CN"
cd ../..

# End of file
