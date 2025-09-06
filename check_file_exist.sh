is_file_exist(){
    if [[ -e $1 ]]
    then
        echo "The file exists."
    else
        echo "The file don't exist"
    fi
}

is_file_exist $1
