# list-up local branch
```{bash}
$ git branch
* 2-git-branch-v
  master
```

# list-up remote branch
```{bash}
$ git branch -r
  origin/HEAD -> origin/master
  origin/master
```

# list-up remote/local branch
```{bash}
$ git branch -a
* master
  remotes/origin/HEAD -> origin/master
  remotes/origin/master
```

# list-up local [branch / SHA-1 hash / last commit]
```{bash}
$ git branch -v
* 2-git-branch-v 7f9690c Merge branch '1-git-branch-a-git-remote-set-head-origin-d-git-branch-a-git-remote-set-head-origin-a' into 'master'
  master         7f9690c Merge branch '1-git-branch-a-git-remote-set-head-origin-d-git-branch-a-git-remote-set-head-origin-a' into 'master'
```

# list-up local [branch / SHA-1 hash / linked remote branch / last commit]
```{bash}
$ git branch -vv
* 2-git-branch-v 7f9690c [origin/2-git-branch-v] Merge branch '1-git-branch-a-git-remote-set-head-origin-d-git-branch-a-git-remote-set-head-origin-a' into 'master'
  master         7f9690c [origin/master] Merge branch '1-git-branch-a-git-remote-set-head-origin-d-git-branch-a-git-remote-set-head-origin-a' into 'master'
```

# list-up local/remote [branch / SHA-1 hash / linked remote branch / last commit]
```{bash}
$ git branch -avv
* master                           83e51f0 [origin/master] Merge branch '9-git-pull' into 'master'
  remotes/origin/10-git-branch-avv 83e51f0 Merge branch '9-git-pull' into 'master'
  remotes/origin/HEAD              -> origin/master
  remotes/origin/master            83e51f0 Merge branch '9-git-pull' into 'master'
```
