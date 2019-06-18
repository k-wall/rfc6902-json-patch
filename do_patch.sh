#!/bin/bash

TOKEN=$(oc whoami -t)
OPENSHIFT_API_URL=$(oc config view --minify -o jsonpath='{.clusters[*].cluster.server}')
PROJECT=$(oc project --short)

curl -k -v -XPATCH  -H "Accept: application/json" -H "Content-Type: application/json-patch+json" -H "Authorization: Bearer ${TOKEN}" "${OPENSHIFT_API_URL}/apis/apps/v1/namespaces/${PROJECT}/statefulsets/test" --data-binary "@rfc6902-json-patch-statefulset.json"
