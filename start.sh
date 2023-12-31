#!/bin/bash

REPOSITORY="Arts-of-coding/xxxx"
ACCESS_TOKEN="xxxx"

echo "REPO ${REPOSITORY}"
echo "ACCESS_TOKEN ${ACCESS_TOKEN}"

#REG_TOKEN=$(curl -X POST -H "Authorization: token ${ACCESS_TOKEN}" -H "Accept: application/vnd.github+json" https://api.github.com/repos/${REPOSITORY}/actions/runners/registration-token | jq .token --raw-output)

cd /home/docker/actions-runner

./config.sh --url https://github.com/${REPOSITORY} --token ${ACCESS_TOKEN}

cleanup() {
    echo "Removing runner..."
    ./config.sh remove --unattended --token ${ACCESS_TOKEN}
}

trap 'cleanup; exit 130' INT
trap 'cleanup; exit 143' TERM

./run.sh & wait $!