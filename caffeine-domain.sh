#!/bin/bash

DOMAINS=$1
SCOPE=scope.txt
for i in $DOMAINS
do
        IP=$(dig +short $i)
        if [[ ! -z $IP ]] && grep -q "$IP" $SCOPE
        then
                echo $i | anew scope-domains.txt 
        fi
done
