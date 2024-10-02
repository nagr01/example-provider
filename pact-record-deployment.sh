#!/bin/bash
GIT_COMMIT=$(git rev-parse HEAD)
pact-broker record-deployment \
  --pacticipant pactflow-example-provider \
  --version $GIT_COMMIT \
  --environment $1 \
  --broker-base-url https://betssongroup.pactflow.io \
  --broker-token g_3mPH91udpjC34BDhgFyA

echo "Pact deployment recorded!"