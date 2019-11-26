#!/bin/sh -l

#curl -H "Authorization: token ${{ secrets.GITHUB_TOKEN }}" -X GET -d @issue.json https://api.github.com/repos/$1 --header "Content-Type:application/vnd.github.symmetra-preview+json" | jq '.[0] |  .body' > issues

env
