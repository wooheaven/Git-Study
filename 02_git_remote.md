# listUp remote repository's fetch/push URL
```
git remote -v
origin    git@gitlab.com:wooheaven/Git-Document.git (fetch)
origin    git@gitlab.com:wooheaven/Git-Document.git (push)
```
# delete origin/HEAD remote symbolic
```Shell
git branch -a
* master
  remotes/origin/HEAD -> origin/master
  remotes/origin/master

git remote set-head origin -d

git branch -a
* master
  remotes/origin/master
```
# set origin/HEAD point to the remote's currnt branch
```Shell
git branch -a
* master
  remotes/origin/master

git remote set-head origin -a
origin/HEAD set to master

git branch -a
* master
  remotes/origin/HEAD -> origin/master
  remotes/origin/master
```
