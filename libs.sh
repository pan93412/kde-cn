# Libraries of KDE_CN Scripts.
#
# Copyright 2019 pan93412 <pan93412@gmail.com>
#
# DO NOT RUN THIS!

# The language to operate.
OPTLANG="zh_CN"

# Update a branch.
# usage: upd BRANCH
upd() {
    cd $1
    for i in "templates zh_CN zh_TW"
    do
        svn up $i
    done
    cd ..
}

# Commit a branch.
# Usage: commit BRANCH LANG
commit() {
    # $1 = BRANCH; $2 = LANG
    cd $1/$2
    svn commit -m "Translated kf5-$1, $2"
    cd ../..
}

# Generate a diff of a branch.
# Usage: getDiff [BRANCH] [LANG]
genDiff() {
    # [!] $1 = BRANCH
    #     $2 = LANG
    cd $1/$2
    svn diff > ../../$1.diff
    if [ -s ../../$1.diff ]
    then
        kompare -o ../../$1.diff
    fi
    cd ../..
}
