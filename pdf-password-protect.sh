# pdftk $fileName.pdf output protected/$filePath.pdf owner_pw mypassword
# Final version
# In Terminal run with the following:
# bash myScript.sh /Users/john/Downloads/tmp2 /Users/john/Downloads/tmp3
#
#!/bin/bash
for fullfile in *.pdf
do  fileName=${fullfile##*/}   
pdftk $fullfile output protected/$fileName owner_pw mypassword
done