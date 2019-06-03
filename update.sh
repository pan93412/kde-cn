#!/bin/bash

# Copyright Guo Yunhe <guoyunhebrave@gmail.com> 2017
# Copyright 2019 pan93412 <pan93412@gmail.com>

# This script will update translation files from KDE SVN server.

# Import libs.
. ./libs.sh

# Update trunk branch
upd trunk

# Update stable branch
upd stable

# Update scripts and terms
git pull

echo "翻译已更新！"

# EOF
