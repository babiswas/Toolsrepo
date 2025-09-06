find_create_dir(){
        for dirs in "$@"
        do
                if [[ -d $dirs ]]
                then
                        echo "Diectory $dirs already exist"
                else
                        mkdir $dirs
                        if [[ -d $dirs ]]
                        then
                                echo "Successfully created the missing directory: $dirs"
                        else
                                echo "Failed to create directory $dirs"
                        fi
                fi
        done
}

find_create_dir var1 var2 var3
~                                     
