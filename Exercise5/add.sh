#!/bin/bash -x

# give trigger URL as 1st argument

curl -v -H "Content-Type: application/json" \
	--data @newcontact.json \
	$1
