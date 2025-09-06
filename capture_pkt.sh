collect_source_dest(){
        command=$(tcpdump -c 10 -i $1)
        echo $command|awk '{print $3 $4 $5}'
}

collect_source_dest $1
