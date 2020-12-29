#!/bin/bash

echo "Create status for commit"
echo '{ "state": "'$1'", "context": "downstream/provider", "description": "Check provider", "target_url": "https://github.com/vmotso-labs/like_provider/actions/runs/'$GITHUB_RUN_ID'" }'

curl -u admin:$ORG_ADMIN_TOKEN \
  -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/repos/vmotso-labs/like_fatmouse/statuses/$UPSTREAM_SHA \
  -d '{ "state": "'$1'", "context": "downstream/provider", "description": "Check provider", "target_url": "https://github.com/vmotso-labs/like_provider/actions/runs/'$GITHUB_RUN_ID'" }'
