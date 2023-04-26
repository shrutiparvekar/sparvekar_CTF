#!/bin/bash
login_enc=VmYieTRxK
while true;
do
    nc -l -p 10049 -c "echo $login_enc"
done;
