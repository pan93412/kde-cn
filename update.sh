#!/bin/bash

# Copyright Guo Yunhe <guoyunhebrave@gmail.com> 2017

# This script will update translation files from KDE SVN server.

# Update trunk branch
cd trunk
svn up templates
svn up zh_CN
cd ..

# Update stable branch
cd stable
svn up templates
svn up zh_CN
cd ..

echo "翻译已更新！"

# End of file