# [git clone](01_git_clone.md)
```
$ git clone gitRepositoryURL:UserName/gitProject
```

# [git remote](02_git_remote.md)
```
$ git remote -v
$ git remote set-head origin -d
$ git remote set-head origin -a
$ git remote set-url origin gitRepositoryURL:UserName/gitProject
```

# [git fetch](03_git_fetch.md)
```
$ git fetch -p
```

# [git pull](04_git_pull.md)
```
$ git pull
```

# [git checkout](05_git_checkout.md)
```
$ git checkout --track origin/remoteBranch
```

# [git branch](06_git_branch.md)
```
$ git branch
$ git branch -r
$ git branch -a
$ git branch -v
$ git branch -vv
$ git branch -avv
```

# [git status](07_git_status.md)
```
$ git status
```

# [git commit](08_git_commit.md)
```
$ git commit
```

# [git squash commit](09_git_squash_commit.md)
```
$ git reset --soft HEAD~9 && git commit
```

# [git push](10_git_push.md)
```
$ git push origin localBranch:remoteBranch # with same name branch
```
