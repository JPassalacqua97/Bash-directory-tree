#!/bin/bash

function create(){
    direc=($dir)
    
    for((i=1; i < depth+1; i++));do
	temp=()
	for x in ${direc[@]};do
	    temp_direc=()
	    for((j=1; j < breadth+1; j++));do
		echo $x/$j	       
		mkdir -p $x/$j
		temp=(${temp[@]} $x/$j)     
	    done
	   temp_direc=(${temp_direc[@]} ${temp[@]})
	done		  
	direc=(${temp_direc[@]})
    done
}

depth=$1
breadth=$2
dir=$3
create

