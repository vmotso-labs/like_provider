#!/bin/bash

curl \
  -u vmotso:$GH_TOKEN \
  -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/repos/vmotso-labs/like_provider/actions/workflows/default.yml/dispatches \
  -d '{"ref":"main", "inputs": {"name": "manual", "home": "local"}}'
