#!/bin/bash

infile=$1

words=$(grep -oE '\b[a-zA-Z0-9]+\b' "$infile")

filtered_words=$(echo "$words" | grep -E -v '[\!(,%]|.{100,}|[0-9]{4,}|[0-9]{3,}$|[a-z0-9]{32}|[0-9]+[A-Z0-9]{5,}|\/.*\/.*\/.*\/.*\/.*\/.*\/|\w{8}-\w{4}-\w{4}-\w{4}-\w{12}|[0-9]+[a-zA-Z]+[0-9]+[a-zA-Z]+[0-9]+|\.(png|jpg|jpeg|gif|svg|bmp|ttf|avif|wav|mp4|aac|ajax|css|all)$')

unique_words=$(echo "$filtered_words" | sort | uniq)

echo "$unique_words"
