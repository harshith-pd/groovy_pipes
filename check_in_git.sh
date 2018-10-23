
message=$1

rm -rf .idea .DS_store
git add .
git commit -m "$message" || echo "please enter the commit message"
git push -u origin master