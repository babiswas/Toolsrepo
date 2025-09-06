read_file_lines(){
        while IFS= read -r line;
        do
                echo "$line"
        done < $1
}

read_file_lines $1
