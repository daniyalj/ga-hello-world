#!/bin/sh -l
curl -H "Authorization: token $GITHUB_TOKEN" -X GET https://api.github.com/repos/$INPUT_REPO_NAME/issues --header "Content-Type:application/vnd.github.symmetra-preview+json" | jq '.[0] |  .body' > issues
ls
sed 's/\"//g' issues > latest_issue
cat latest
git clone https://github.com/$INPUT_REPO_NAME
mv latest issue $INPUT_REPO_NAME
git config --local user.email "action@github.com"
git config --local user.name "GitHub Action"
cd $INPUT_REPO_NAME
git add .
git commit -m "Add changes"
