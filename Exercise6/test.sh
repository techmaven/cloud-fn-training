#!/bin/bash -x

curl -v --form "token=${SLACK_VERIFICATION_TOKEN}" \
	https://us-central1-cloud-fn-class.cloudfunctions.net/slack_get_fortune
