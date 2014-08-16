#! /bin/bash

#this file will convert all files in the directory to outline/org files
#n.b. spaces are not allowed in the file names
#n.b.b. if run more than once the generated org files are truncated to zero length!
for file in ./*; do ./mm2outline.pl < ./${file} > ./${file%.*}.org; done
