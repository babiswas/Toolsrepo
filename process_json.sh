process_json(){
        if [[ -f $1 ]]
        then
                echo "The file $1 exists"
                echo "Processing json."
                command=$(jq -r .$2 $1)
                echo $command
        else
                echo "$1 file do not exist."
        fi
}

process_json test.json nello
