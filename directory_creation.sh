#!/bin/bash
file_created="Directory Created"
directory_number=0
echo "How many directories should be created?"
read user_input
while [ $directory_number -ne $user_input ]
do 
    echo "Enter Directory Name"
    read user_input2
        mkdir $user_input2
    directory_number=$((directory_number + 1))

echo "Do you want to create Seasons? Y/N"
    read user_input3
    if [ $user_input3 == "Y" ]
    then
        echo "Enter number of seasons"
            read user_input4
        cd $user_input2/
        mkdir $(seq --format 'Season_%.0f' 1 $user_input4)
        cd ..
    else
    :
    fi
done


#| ts '[%Y-%m-%d %H:%M:%S]'
#date -u >> /home/clear/bash_script_testing/error_files/error_file.txt
#ls | grep .txt | xargs rm 2>> /home/clear/bash_script_testing/error_files/error_file.txt  #dev/null 2>&1