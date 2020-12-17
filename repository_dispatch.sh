#!/bin/bash

curl \
  -u vmotso:$GH_TOKEN \
  -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/repos/vmotso-labs/like_provider/dispatches \
  --data '{"event_type": "upstream_push", "client_payload": { "branch": "some_fatmouse_branch" }}'
