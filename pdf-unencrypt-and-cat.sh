#!/bin/bash
# This script does the following:
#	- Removes passwords using Ghostscript
#	- cats them together and dds a new password using PDFTK

#./NBD0002:
cd ~/tmp/NBD0002/
gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=NBD0002-unencrypted.pdf -c .setpdfwrite -f NBD0002.pdf
gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=NBD0002_001-unencrypted.pdf -c .setpdfwrite -f NBD0002.pdf
pdftk *unencrypted.pdf cat output NBD0002-combined.pdf owner_pw mypassword

#./NBD0003:
cd ~/tmp/NBD0003/
gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=NBD0003-unencrypted.pdf -c .setpdfwrite -f NBD0003.pdf
gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=NBD0003_001-unencrypted.pdf -c .setpdfwrite -f NBD0003.pdf
pdftk *unencrypted.pdf cat output NBD0003-combined.pdf owner_pw mypassword

#./NBD0014:
cd ~/tmp/NBD0014/
gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=NBD0014-unencrypted.pdf -c .setpdfwrite -f NBD0014.pdf
gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=NBD0014_001-unencrypted.pdf -c .setpdfwrite -f NBD0014.pdf
pdftk *unencrypted.pdf cat output NBD0014-combined.pdf owner_pw mypassword

#./NBD0043:
cd ~/tmp/NBD0043/
gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=NBD0043-unencrypted.pdf -c .setpdfwrite -f NBD0043.pdf
gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=NBD0043_001-unencrypted.pdf -c .setpdfwrite -f NBD0043.pdf
pdftk *unencrypted.pdf cat output NBD0043-combined.pdf owner_pw mypassword

#./SBP0021:
cd ~/tmp/SBP0021/
gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=SBP0021a-unencrypted.pdf -c .setpdfwrite -f SBP0021a.pdf
gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=SBP0021b-unencrypted.pdf -c .setpdfwrite -f SBP0021b.pdf
gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=SBP0021c-unencrypted.pdf -c .setpdfwrite -f SBP0021c.pdf
pdftk *unencrypted.pdf cat output SBP0021-combined.pdf owner_pw mypassword

# Echo that we're done
COL_BLUE="\x1b[34;01m"
COL_RESET="\x1b[39;49;00m"
echo -e $COL_BLUE"Status: "$COL_RESET"All the PDFs are now processed :)"