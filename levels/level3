#!/bin/bash

##################################
#       CONTAINER IMAGE ID       #
##################################


run_level2()
{
  local level=3
  local level_hash_file="./.hash${level}"
  local flag_hash

  if [[ ! -f "$level_hash_file" ]]
  then
    flag_hash=$(docker inspect busybox_container -f '{{.ID}}' | sha512sum | awk '{printf $1}')
    echo -n "$flag_hash" > "$level_hash_file"
  fi
}

clean_level2()
{
  {
    docker stop buxybox_container
  } 1> /dev/null
}
