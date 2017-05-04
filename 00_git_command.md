# [git clone](01_git_clone.md)
```{bash}
$ git clone gitRepositoryURL:UserName/gitProject
```

# [git remote](02_git_remote.md)
```{bash}
$ git remote -v
$ git remote set-head origin -d
$ git remote set-head origin -a
$ git remote set-url origin gitRepositoryURL:UserName/gitProject
$ git remote rename origin gitlab
$ git remote add github git@gitlab.com/wooheaven/Git-Study.git
$ git remote show github
```

# [git fetch](03_git_fetch.md)
```{bash}
$ git fetch -p
$ git fetch --all
```

# [git pull](04_git_pull.md)
```{bash}
$ git pull
```

# [git checkout](05_git_checkout.md)
```{bash}
$ git checkout --track origin/remoteBranch
```

# [git branch](06_git_branch.md)
```{bash}
$ git branch
$ git branch -r
$ git branch -a
$ git branch -v
$ git branch -vv
$ git branch -avv
```

# [git status](07_git_status.md)
```{bash}
$ git status
```

# [git commit](08_git_commit.md)
```{bash}
$ git commit
```

# [git reset](09_git_reset_soft.md)
```{bash}
$ git reset --soft HEAD~2
$ git reset --soft HEAD^
```

# [git squash commit](10_git_squash_commit.md)
```{bash}
$ git reset --soft HEAD~9 && git commit
```

# [git push](11_git_push.md)
```{bash}
$ git push origin localBranch:remoteBranch
$ git push origin :remoteBranch
```

# [git log](12_git_log.md)
```{bash}
$ git log
```

# [git revert](15_git_revert.md)
```{bash}
$ git revert
```

# [git config](16_git_config.md)
```{bash}
$ git commit
# ...
# ...
  modified: targetFile.txt
# ...

:wq
```
