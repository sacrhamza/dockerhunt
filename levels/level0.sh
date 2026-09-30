#!/bin/bash

##################################
#                                #
#       JUST IMAGE SHORT ID      #
#                                #
##################################

run_level0()
{
  docker pull busybox 1> /dev/null 2> /dev/null
	image_id=$(docker images busybox --format '{{.ID}}')
  flag_hash=$(echo -n ${image_id:0:12} | sha512sum | awk '{printf $1}')
  echo -n "$flag_hash" > "${SRC}/secret"
}

clean_level0()
{
  :
}
