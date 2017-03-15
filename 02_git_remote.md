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

# git remote add github
```{bash}
$ cat .git/config 
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "gitlab"]
	url = git@gitlab.com:wooheaven/Git-Study.git
	fetch = +refs/heads/*:refs/remotes/gitlab/*
[branch "master"]
 	remote = gitlab
	merge = refs/heads/master
[branch "20-git-remote-add"]
	remote = gitlab
	merge = refs/heads/20-git-remote-add

$ git remote add github git://github.com/wooheaven/Git-Study.git

$ cat .git/config 
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "gitlab"]
	url = git@gitlab.com:wooheaven/Git-Study.git
	fetch = +refs/heads/*:refs/remotes/gitlab/*
[branch "master"]
	remote = gitlab
	merge = refs/heads/master
[branch "20-git-remote-add"]
	remote = gitlab
	merge = refs/heads/20-git-remote-add
[remote "github"]
	url = git://github.com/wooheaven/Git-Study.git
	fetch = +refs/heads/*:refs/remotes/github/*

$ git remote -v
github	git://github.com/wooheaven/Git-Study.git (fetch)
github	git://github.com/wooheaven/Git-Study.git (push)
gitlab	git@gitlab.com:wooheaven/Git-Study.git (fetch)
gitlab	git@gitlab.com:wooheaven/Git-Study.git (push)

$ git remote show github
* remote github
  Fetch URL: git://github.com/wooheaven/Git-Study.git
    Push  URL: git://github.com/wooheaven/Git-Study.git
  HEAD branch: master
    Remote branch:
    master new (next fetch will store in remotes/github)
  Local ref configured for 'git push':
      master pushes to master (fast-forwardable)

$ git remote show gitlab
* remote gitlab
  Fetch URL: git@gitlab.com:wooheaven/Git-Study.git
    Push  URL: git@gitlab.com:wooheaven/Git-Study.git
  HEAD branch: master
    Remote branches:
    20-git-remote-add tracked
    master            tracked
  Local branches configured for 'git pull':
      20-git-remote-add merges with remote 20-git-remote-add
      master            merges with remote master
    Local refs configured for 'git push':
    20-git-remote-add pushes to 20-git-remote-add (up to date)
    master            pushes to master            (up to date)
```
