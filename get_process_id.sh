get_application_process_id(){
        ps -ef|grep $1|while IFS= read -r line;do
            if [[ $line == *"$1"* ]]
            then
                    pid=$(echo $line|awk 'NR==1 {print $2}')
                    echo "PROCESS_ID:$pid"
            fi
        done
}

get_application_process_id $1
