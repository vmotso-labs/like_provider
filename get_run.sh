#!/bin/bash

curl \
  -u vmotso:$GH_TOKEN \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/repos/vmotso-labs/like_provider/actions/runs \
