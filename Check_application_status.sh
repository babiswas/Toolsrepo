check_application_status(){
        port=$1
        command_status=$(netstat -tulpn|grep $port)
        echo "$command_status"
        if [[ $command_status == *"127.0.0.1:$port"* ]]
        then
                echo "Application is running"
        else
                echo "Application is not running"
        fi
}

check_application_status $1
