#!/bin/bash

cwd=`pwd`
parent=$(dirname $cwd )
grand_parent=$(dirname $parent )
thor_include_folder="thor/inc/"
thor_lib_folder="thor/bin/"


include_folder="/include/"
include_path="$parent$include_folder"
thor_inc_path="$grand_parent/$thor_include_folder"
thor_lib_path="$grand_parent/$thor_lib_folder"


gcc -g -Wall -O0 -o ../bin/client uclient.c utilsint.c \
	-I$include_path -I/usr/include/libxml2/ -I$thor_inc_path \
	-L$thor_lib_path -Wl,-rpath=$thor_lib_path \
	-lcomm -lalist -lm -lconfig -lcurl -lxml2 -lssl -lcrypto -lpthread

exit 0
