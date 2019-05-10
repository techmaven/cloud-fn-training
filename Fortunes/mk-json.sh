#!/bin/bash -x

TRIGGER_URL="https://us-central1-turing-outrider-209020.cloudfunctions.net/add_fortune"

awk -F: '{print  "curl -H \"Content-Type: application/json\" --data { \"code\": \"" $1 "\", \"content\": \"" $2 "\", \"category\": \"" $3 "\" }"}'

