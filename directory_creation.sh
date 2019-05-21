#!/bin/bash
file_created="Directory Created"
directory_number=0
echo "How many directories should be created?"
#date -u >> /home/clear/bash_script_testing/error_files/error_file.txt
#ls | grep .txt | xargs rm 2>> /home/clear/bash_script_testing/error_files/error_file.txt  #dev/null 2>&1
read user_input
while [ $directory_number -ne $user_input ]
do 
    echo "Enter Directory Name"
    read user_input2 
        mkdir $user_input2
    directory_number=$((directory_number + 1))
done


#| ts '[%Y-%m-%d %H:%M:%S]'