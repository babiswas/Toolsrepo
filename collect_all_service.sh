collect_all_service(){
        command=$(ls -la /usr/lib/systemd/system|awk '{print $9}'|grep service)
        echo $command
}

collect_all_service
