#!/bin/bash
FILE="Info.txt"; OLDIFS=$IFS; IFS=$'\n'; for i in $(cat $FILE); do for j in $(seq 0 ${#i}); do echo -n ${i:$j:1}; read -n1 -s; done; echo; let n=$n+1; done; IFS=$OLDIFS
