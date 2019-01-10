#!/bin/bash


### PARAMETRES ###

# Gather the intel from files.txt and reformat it (remove comments, remove
# trailing white spaces and remove empty lines)
intel=$(cat "./files.txt" | sed -e "s/#.*$//;s/\s*$//;/^$/d;")
#echo "$intel"

### FUNCITON ###

copie() {
    echo $@
}

remove_white_spaces(){
    echo "$1" | sed -e "s/^\s*//;s/\s*$//"
}

### CODE ###

files=()
origin=""
destination=""

while IFS= read -r line;do # go through every line in intel
    # if the line is doesn't start with a space it means that it will indicate
    # the origin and the destination of the following files
    if [[ $line == *"->"* || ${line:${#line}-1:1} == ":" ]]; then
        origin=$( remove_white_spaces $(echo $line | awk -F "->" '{$0=$1}1'))
        destination=$(remove_white_spaces $(echo $line | awk -F "->" '{$0=$2}1' | cut -d ":" -f 1))
        echo "going from >$origin< to >$destination<"
    else

        echo "$line is not information on the origin/destination"
    fi
    #if [[ ${line:0:1} == " "]]
done <<< "$intel"

hello=$(remove_white_spaces " hello ")
#echo ">$hello<"

#str="hello -> world"
#h=$(echo $str | awk -F "->" '{$0=$1}1')
#w=$(echo $str | awk -F "->" '{$0=$2}1')
#echo $h
#echo $w

#for i in "$intel"; do
    #echo "$i"
    #echo "new line";
#done

