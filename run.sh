#!/bin/bash

# Script to compile and run assembly code.
asm_file=$1
obj_file=${asm_file%.*}
gcc -g -o ${obj_file} ${asm_file}
./${obj_file}
echo $?
rm ${obj_file}
