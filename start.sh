#!/bin/bash
echo "REPO ${REPOSITORY}"
cd /home/docker/actions-runner
./config.sh --url https://github.com/${REPOSITORY} --token ${ACCESS_TOKEN}
cleanup() {
    echo "Removing runner..."
    ./config.sh remove --unattended --token ${ACCESS_TOKEN}
}
trap 'cleanup; exit 130' INT
trap 'cleanup; exit 143' TERM
./run.sh & wait $!
