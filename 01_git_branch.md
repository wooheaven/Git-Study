# list-up local branch
```
git branch
* 2-git-branch-v
  master
```

# list-up remote branch
```
git branch -r
  origin/HEAD -> origin/master
  origin/master
```

# list-up remote/local branch
```
git branch -a
* master
  remotes/origin/HEAD -> origin/master
  remotes/origin/master
```

# list-up local branch and SHA-1 hash and last commit
```
git branch -v
* 2-git-branch-v 7f9690c Merge branch '1-git-branch-a-git-remote-set-head-origin-d-git-branch-a-git-remote-set-head-origin-a' into 'master'
  master         7f9690c Merge branch '1-git-branch-a-git-remote-set-head-origin-d-git-branch-a-git-remote-set-head-origin-a' into 'master'
```

# list-up local branch and SHA-1 hash and remote branch which refered and last commit 
```
git branch -vv
* 2-git-branch-v 7f9690c [origin/2-git-branch-v] Merge branch '1-git-branch-a-git-remote-set-head-origin-d-git-branch-a-git-remote-set-head-origin-a' into 'master'
  master         7f9690c [origin/master] Merge branch '1-git-branch-a-git-remote-set-head-origin-d-git-branch-a-git-remote-set-head-origin-a' into 'master'
```
