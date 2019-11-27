#!/bin/sh -l
curl -H "Authorization: token $GITHUB_TOKEN" -X GET https://api.github.com/repos/$INPUT_REPO_NAME/issues --header "Content-Type:application/vnd.github.symmetra-preview+json" | jq '.[0] |  .body' > issues
ls
sed 's/\"//g' issues > latest_issue
cat latest_issue
git clone https://github.com/$INPUT_ORG_NAME/$INPUT_REPO_NAME
cat latest_issue
mv latest_issue $INPUT_REPO_NAME
git config --global user.email "action@github.com"
git config --global user.name "GitHub Action"
cd $INPUT_REPO_NAME
git add .
git commit -m "Add latest_issue"
