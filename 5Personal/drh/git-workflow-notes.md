```bash
touch .gitkeep
git init # git clone
git add -A # --no-ignore-removal
git commit -m "$filename-$version $msg"

git branch -vva
git branch $newbranch
git branch -[cCmMdD] # copy, modify, delete

git switch $branch
git switch -c $newbranch $start_point # git checkout -b $newbranch

git remote -v
git remote rm
git remote add $remote

git push -u $remote $localbranch # set up remote refs(same name)
git branch -u $remote/$branch # push to a different remote ref
git config --global push.default upstream
git push -v
git pull -v
```
