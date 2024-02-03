#! /bin/bash

do_not_do_this=$((255))
dir_doesnt_exist=$((1))

function color_none {
  printf "\e[0m"
}
function color_red {
  printf "\e[1;31m"
}
function color_cyan {
  printf "\e[1;36m"
}

function enumerate_files_at_path {
  local path=${1?:"Provide file path"}
  local self=$(realpath "$0")
  local counter=$((1))

  if [ ! -d "$path" ]; then
    color_red
    echo "$path does not exist"
    color_none
    exit $dir_doesnt_exist
  fi

  color_red
  echo "DO NOT DO THIS SHIT IF YOU'RE NOT SURE !!!"
  color_none
  exit $do_not_do_this

  for file in "$path"/*; do
    if [ -f "$file" ] && [ ! "$self" != "$file" ]; then
      local path_no_name=$(dirname "$file")
      local name_no_path=$(basename "$file")

      mv "$file" "${path_no_name}/${counter}"
      if [ $? -eq 0 ]; then
        echo "${path_no_name}:"
        echo -e "\t${file} -->"
        echo -e "\t${path_no_name}/${counter}"
        counter=$((++counter))
      fi
    fi
  done
}

enumerate_files_at_path $@
