#!/usr/bin/env

# Update PROBLEMSET_NUM to match the number that the Problem Set material starts with
PROBLEMSET_NUM="02"

##### DO NOT CHANGE THE CODE BELOW #####

REPO_DIR="$PWD"
PROBLEMSET_DIR=$REPO_DIR"/Problem Sets"

git clone https://github.com/robbinscalebj/QuantBio_BIO5324_Sp2026 temporary
rm -rf temporary/.git
cd temporary/"Problem Sets"
FILES=$"find "$PROBLEMSET_NUM"*"

if [[ ! -z ${PROBLEMSET_DIR} ]]; then
  echo "/Problem Sets folder not found in local working directory: Creating /Problem Sets folder"
  mkdir "$PROBLEMSET_DIR"
fi

#for file in $FILES; do echo $file; done
cp -r --no-clobber $FILES "$PROBLEMSET_DIR" # works but throws weird warning "cp: cannot stat `find : No such file or directory"

cd $REPO_DIR
rm -rf temporary

#References:
#https://stackoverflow.com/questions/59838/how-do-i-check-if-a-directory-exists-or-not-in-a-bash-shell-script
#https://stackoverflow.com/questions/4651437/how-do-i-set-a-variable-to-the-output-of-a-command-in-bash