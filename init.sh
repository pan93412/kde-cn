#!/bin/bash

# Copyright Guo Yunhe <guoyunhebrave@gmail.com> 2017
# Copyright 2019 pan93412 <pan93412@gmail.com>

# This script will initialize the project and
# download files from KDE SVN server.
# NOTE: if you run this script again, it would remove the old SVN data!

# Import libs.
. ./libs.sh

# Remove old data if exists
rm -rf trunk stable 2>/dev/null

# Set SVN server
PREFIX="svn://anonsvn.kde.org/home/kde"
for i in "$@"
do
case $i in
    -d|--dev)
        PREFIX="svn+ssh://svn@svn.kde.org/home/kde"
    ;;
    *)
        # unknown option, skip
    ;;
esac
done

# Download trunk branch
svn co $PREFIX/trunk/l10n-kf5 trunk --depth empty
upd trunk

# Download stable branch
svn co $PREFIX/branches/stable/l10n-kf5 stable --depth empty
upd stable

echo "项目初始化已完成！请参考 README.md 进行下一步。"

# EOF
