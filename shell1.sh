#!/usr/bin/bash

echo "Hello world"


my_ls(){
  dir=$1;
  echo "------- $dir ------"
  a=( $(ls ${dir}) );
  for i in ${a[@]}; do
    printf "\t"${i}"\n";
    if [[ -h ${i} ]]; then
      echo "------- $i ------";
      my_ls ${i};
    fi;
  done;
}

my_ls ~/Desktop


if [[ -d  ]]; then echo 1; fi;
