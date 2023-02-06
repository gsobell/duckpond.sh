#!/bin/sh

a="  _"
b="_(.)-"
c="\__)"

set -- "$a" "$b" "$c"

# rows=$(tput lines)
columns=$(tput cols)

trap 'tput cnorm && exit' EXIT INT HUP

tput clear
tput civis

x=0
while [ $x -lt "$columns" ]; do
  # Clear the previous position of the duck
  tput cup 0 0
  tput ed

  i=1
  tput setaf 3 # yellow
  for j do tput cup $((i + 1)) $x; echo "$j" ; i=$(( i + 1 )) ; done

  tput setaf 6 # blue
  printf '%*s\n' "$columns" '' | tr ' ' '~'
  tput sgr0

  # Update the position of the duck
  x=$((x + 1))

  # Wait before redrawing
  sleep 0.1
done
