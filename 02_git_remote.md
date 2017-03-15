# listUp remote repository URL of fetch/push
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

# set origin/HEAD point to currnt branch of the remote
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

# change remote repository URL of fetch/push repository
```{bash}
$ git remote -v
origin	git@gitlab.com:wooheaven/Git-Document.git (fetch)
origin	git@gitlab.com:wooheaven/Git-Document.git (push)

$ git remote set-url origin git@github.com:wooheaven/Git-Document.git

$ git remote -v
origin	git@github.com:wooheaven/Git-Document.git (fetch)
origin	git@github.com:wooheaven/Git-Document.git (push)
```

# change remote rename from origin to gitlab
```{bash}
$ git remote -v
origin	git@gitlab.com:wooheaven/Git-Study.git (fetch)
origin	git@gitlab.com:wooheaven/Git-Study.git (push)

$ git remote rename origin gitlab

$ git remote -v
gitlab	git@gitlab.com:wooheaven/Git-Study.git (fetch)
gitlab	git@gitlab.com:wooheaven/Git-Study.git (push)
```
