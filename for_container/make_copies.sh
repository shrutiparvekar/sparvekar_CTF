#!/bin/bash
targ_path=/home/labuser/.keyishere
mkdir $targ_path
mv binary_bomb /home/labuser
mv README /home/labuser
i=01
while [[ $i -lt 101 ]]; do
        cp is_this_the_key $targ_path/is_this_the_key_$i
        ((i++))
        if [[ "$i" == '49' ]]; then
                cp this_is_the_key.txt $targ_path/is_this_the_key_$i
                ((i++))
        fi
done
rm this_is_the_key.txt
rm is_this_the_key
