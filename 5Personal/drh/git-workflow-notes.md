```bash
touch .gitkeep
git init # git clone
git add -A # --no-ignore-removal
git commit -m "$filename-$version $msg"

git branch -vva
git branch $newbranch $start_point
git branch -[cCmMdD] # copy, modify, delete

git switch $branch
git switch -c $newbranch $start_point # git checkout -b $newbranch

git remote -v
git remote rm
git remote add $remote


git pull -v
# git fetch $remote [$branch] && git switch -c $branch $remote/$branch
git branch -u $remote/$branch $localbranch # push to a different remote ref
git config --global push.default upstream 

git push -u $remote $localbranch # for new branch, set up remote refs(same name)
git push $remote --delete $branch
git push $remote_repo [+<src_ref>:<dst_ref>]
```
