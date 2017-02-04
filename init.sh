#!/bin/bash

# Copyright Guo Yunhe <guoyunhebrave@gmail.com> 2017

# This script will initialize project and download files from KDE SVN server.
# NOTE: if you run this script again, it would remove old SVN data!

# Remove old data if exists
rm -rf trunk stable

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
cd trunk
svn up templates
svn up zh_CN
svn up zh_TW
cd ..

# Download stable branch
svn co $PREFIX/branches/stable/l10n-kf5 stable --depth empty
cd stable
svn up templates
svn up zh_CN
svn up zh_TW
cd ..

echo "项目初始化已完成！请参考 README.md 进行下一步。"

# End of file
