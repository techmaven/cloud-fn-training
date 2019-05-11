#!/bin/bash -x

curl -v --form "token=${SLACK_VERIFICATION_TOKEN}" --form "text=121" \
        https://us-central1-turing-outrider-209020.cloudfunctions.net/slack_get_fortune
