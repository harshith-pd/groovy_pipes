
message=$1

rm -rf .idea .DS_store	
git add .
git commit -m "$message" 
git push -uf origin master