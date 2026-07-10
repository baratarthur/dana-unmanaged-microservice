#!/bin/bash

#example use: source scripts/cp-remote-logs.sh 2 social-media-app-0

kubectl logs --namespace dana-remote-social-media-app-ns-$1-replicas dana-remote-$2 | grep -F -e "[STORE][INFO]" -e "[STORE][ERROR]" > logs-$2.txt