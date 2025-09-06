is_dir_exist(){
  if [[ -d $1 ]]
  then
        echo "The directory exists."
  else
        echo "The directory don't exist."
  fi
}

is_dir_exist $1
