#!/bin/bash -x

# Deploy Slack function slack_get_fortune

if [  -z "${GCP_PROJECT_ID}" ]
then
    echo "GCP_PROJECT_ID environment variable not set, aborting."
    exit 1
fi

if [  -z "${SLACK_VERIFICATION_TOKEN}" ]
then
    echo "SLACK_VERIFICATION_TOKEN environment variable not set, aborting."
    exit 1
fi

if [  -z "${SLACK_ACCESS_TOKEN}" ]
then
    echo "SLACK_ACCESS_TOKEN environment variable not set, aborting."
    exit 1
fi

gcloud beta functions deploy slack_get_fortune --trigger-http  --runtime=python37 \
  --set-env-vars "SLACK_VERIFICATION_TOKEN=${SLACK_VERIFICATION_TOKEN},GCP_PROJECT_ID=${GCP_PROJECT_ID},SLACK_ACCESS_TOKEN=${SLACK_ACCESS_TOKEN}"

