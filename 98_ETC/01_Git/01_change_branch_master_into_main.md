# update local branch master
```
$ git branch 
* master
$ git fetch -p
$ git pull
```

# create new local branch main from master
```
$ git branch 
* master

$ git branch -m master main

$ git branch 
* main

$ git status 
On branch main
Your branch is up to date with 'gitlab/master'.

nothing to commit, working tree clean
```

# create new remote branch main from local branch main
```
$ git branch -avv
* main                  2d0adc1 [gitlab/master] Merge branch '85-git-log-follow-path-to-a-file' into 'master'
  remotes/gitlab/HEAD   -> gitlab/master
  remotes/gitlab/master 2d0adc1 Merge branch '85-git-log-follow-path-to-a-file' into 'master'

$ git push -u gitlab main
Total 0 (delta 0), reused 0 (delta 0), pack-reused 0
remote: 
remote: To create a merge request for main, visit:
remote:   https://gitlab.com/wooheaven/git-study/-/merge_requests/new?merge_request%5Bsource_branch%5D=main
remote: 
To gitlab.com:wooheaven/git-study.git
 * [new branch]      main -> main
Branch 'main' set up to track remote branch 'main' from 'gitlab'

$ git status 
On branch main
Your branch is up to date with 'gitlab/main'.

nothing to commit, working tree clean

$ git branch -avv
* main                  2d0adc1 [gitlab/main] Merge branch '85-git-log-follow-path-to-a-file' into 'master'
  remotes/gitlab/HEAD   -> gitlab/master
  remotes/gitlab/main   2d0adc1 Merge branch '85-git-log-follow-path-to-a-file' into 'master'
  remotes/gitlab/master 2d0adc1 Merge branch '85-git-log-follow-path-to-a-file' into 'master'
```

# change GitLab's project Default branch to main from master
```
GitLab's project
> Settings
> Repository
> Default branch : master -> main
> Save changes

GitLab's project
> Settings
> Repository
> Protected branches
> Branch : main
> ETC options
> Protect
```

# remove remote branch master and local branch master
```
$ git branch -avv
* main                  2d0adc1 [gitlab/main] Merge branch '85-git-log-follow-path-to-a-file' into 'master'
  remotes/gitlab/HEAD   -> gitlab/master
  remotes/gitlab/main   2d0adc1 Merge branch '85-git-log-follow-path-to-a-file' into 'master'
  remotes/gitlab/master 2d0adc1 Merge branch '85-git-log-follow-path-to-a-file' into 'master'

$ git push gitlab :master
To gitlab.com:wooheaven/git-study.git
 - [deleted]         master

$ git branch -avv
warning: ignoring broken ref refs/remotes/gitlab/HEAD
* main                2d0adc1 [gitlab/main] Merge branch '85-git-log-follow-path-to-a-file' into 'master'
  remotes/gitlab/main 2d0adc1 Merge branch '85-git-log-follow-path-to-a-file' into 'master'
```

# Set upstream from local main to remote main
```
$ git branch --set-upstream-to=gitlab/main main
branch 'main' set up to track 'gitlab/main'.
```

# ref
[blog](https://bud.agency/rename-master-branch-main-git-gitlab)  
