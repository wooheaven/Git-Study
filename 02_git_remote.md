# listUp remote repository's fetch/push URL
```{bash}
$ git remote -v
origin    git@gitlab.com:wooheaven/Git-Document.git (fetch)
origin    git@gitlab.com:wooheaven/Git-Document.git (push)
```

# delete origin/HEAD remote symbolic
```{bash}
$ git branch -a
* master
  remotes/origin/HEAD -> origin/master
  remotes/origin/master

$ git remote set-head origin -d

$ git branch -a
* master
  remotes/origin/master
```

# set origin/HEAD point to the remote's currnt branch
```{bash}
$ git branch -a
* master
  remotes/origin/master

$ git remote set-head origin -a
origin/HEAD set to master

$ git branch -a
* master
  remotes/origin/HEAD -> origin/master
  remotes/origin/master
```

# change remote repository's fetch/push URL
```{bash}
$ git remote -v
origin	git@gitlab.com:wooheaven/Git-Document.git (fetch)
origin	git@gitlab.com:wooheaven/Git-Document.git (push)

$ git remote set-url origin git@github.com:wooheaven/Git-Document.git

$ git remote -v
origin	git@github.com:wooheaven/Git-Document.git (fetch)
origin	git@github.com:wooheaven/Git-Document.git (push)
```
