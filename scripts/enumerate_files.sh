#! /bin/bash

do_not_do_this=$((255))
no_argument=$((1))
dir_doesnt_exist=$((2))

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
  if [ -z "$1" ]; then
    color_red
    echo "Provide path to directory"
    color_none
    exit $no_argument
  fi
  if [ ! -d "$1" ]; then
    color_red
    echo "Dir \"$1\" does not exist"
    color_none
    exit $dir_doesnt_exist
  fi

  local path=$(realpath "$1")
  local self=$(realpath "$0")
  local counter=$((1))

  for file in "$path"/*; do
    file=$(realpath "$file")
    if [ -f "$file" ] && [ "$self" != "$file" ]; then
      local path_no_name=$(dirname "$file")
      local new_name="${path_no_name}/${counter}"

      if [ ! -e "$new_name" ]; then
        mv "$file" "$new_name"
        echo "${path_no_name}:"
        echo -e "\t${file} -->"
        echo -e "\t$new_name"
      fi
      counter=$((++counter))
    fi
  done
}

color_red
echo "DO NOT DO THIS SHIT IF YOU'RE NOT SURE !!!"
color_none
exit $do_not_do_this

enumerate_files_at_path $@

