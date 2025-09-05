ps -ef|grep python|while IFS= read -r line;do
    if [[ $line == *"app.py"* ]]
    then
            pid=$(echo $line|awk 'NR==1 {print $2}')
            echo "The process id of the application is $pid"
    fi
done
