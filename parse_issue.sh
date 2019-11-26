#!/bin/sh -l
env
curl -H "Authorization: token $GITHUB_TOKEN" -X GET https://api.github.com/repos/$INPUT_REPO_NAME/issues --header "Content-Type:application/vnd.github.symmetra-preview+json" | jq '.[0] |  .body' > latest_issue
cat latest_issue
