#!/bin/bash
# This script does the following:
#	- Removes passwords using Ghostscript
#	- cats them together and dds a new password using PDFTK

for fullfile in *.pdf
do  fileName=${fullfile##*/}   
gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=unencrypted/$fileName  -c .setpdfwrite -f $fullfile
pdftk $fullfile output protected/$fileName owner_pw paRkeNdsT
done


# Echo that we're done
COL_BLUE="\x1b[34;01m"
COL_RESET="\x1b[39;49;00m"
echo -e $COL_BLUE"Status: "$COL_RESET"All the PDFs are now processed :)"