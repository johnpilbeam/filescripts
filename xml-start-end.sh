#!/bin/bash

# Version 1
# $1 = directory to scan
# for file in $1/*.pdf
# do  echo "processing $file"
# done

# Version 2
#!/bin/bash
# $1 = directory to scan
# $2 = directory for results
# for fullfile in $1/*.txt
# do  fileName=${fullfile##*/}  
# destinationFilePath=$2/$fileName
# Added cat
# cat ./templates/xml_start.txt $fullfile ./templates/xml_end.txt > $destinationFilePath  
# echo $destinationFilePath
# done


# Final version
# In Terminal run with the following:
# bash myScript.sh /Users/john/Downloads/tmp2 /Users/john/Downloads/tmp3
#
#!/bin/bash
# $1 = directory to scan
# $2 = directory for results
for fullfile in $1/*.txt
do  fileName=${fullfile##*/}  
destinationFilePath=$2/$fileName  
cat /Users/john/Downloads/templates/xml_start.txt $fullfile /Users/john/Downloads/templates/xml_end.txt > $destinationFilePath
done

