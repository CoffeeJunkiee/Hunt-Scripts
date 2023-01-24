#!/bin/bash

str="$@"
vhost=$(echo "$str" | grep -oP '^([^\s]+)')
ip=$(echo "$str" | sed -r 's/^[^ ]+\s+([^ ]+).+/\1/')
cmd="echo \"${ip}\" | httpx -silent -H \"Host: ${vhost}\" -title -content-length -proxy http://localhost:9393"

echo -e "cmd to execute: $cmd"
eval "$cmd"
