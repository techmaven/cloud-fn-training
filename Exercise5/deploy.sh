#!/bin/bash -x

if [  -z "${GCP_PROJECT_ID}" ]
then
    echo "GCP_PROJECT_ID environment variable not set, aborting."
    exit 1
fi

gcloud beta functions deploy add_contact --trigger-http  --runtime=python37 \
  --set-env-vars "GCP_PROJECT_ID=${GCP_PROJECT_ID}"

