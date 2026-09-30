#!/bin/bash

##################################
#       JUST IMAGE ID            #
##################################

run_level1()
{
  flag_hash=$(docker inspect busybox -f '{{.Id}}' | sha512sum | awk '{printf $1}')
  echo -n "$flag_hash" > "${SRC}/secret"
}

clean_level1()
{
 : 
}
