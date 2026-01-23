#!/usr/bin/env

# Update LECTURE_NUM to match the number that the lecture material starts with
LECTURE_NUM="02"

##### DO NOT CHANGE THE CODE BELOW #####

REPO_DIR="$PWD"
LECTURE_DIR=$REPO_DIR"/Lectures"

git clone https://github.com/robbinscalebj/QuantBio_BIO5324_Sp2026 temporary
rm -rf temporary/.git
cd temporary/Lectures
FILES=$"find "$LECTURE_NUM"*"

if [ ! -d $LECTURE_DIR ]; then
  echo "/Lectures folder not found in local working directory: Creating /Lectures folder"
  mkdir $LECTURE_DIR
fi

#for file in $FILES; do echo $file; done
cp -r --no-clobber $FILES $LECTURE_DIR # works but throws weird warning "cp: cannot stat `find : No such file or directory"

cd $REPO_DIR
rm -rf temporary

#References:
#https://stackoverflow.com/questions/59838/how-do-i-check-if-a-directory-exists-or-not-in-a-bash-shell-script
#https://stackoverflow.com/questions/4651437/how-do-i-set-a-variable-to-the-output-of-a-command-in-bash