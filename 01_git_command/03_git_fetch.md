# fetch remote repository to local repository
```{bash}
$ git branch -av
* master                a9b907d Merge branch '6-git-checkout-track' into 'master'
  remotes/origin/HEAD   -> origin/master
  remotes/origin/master a9b907d Merge branch '6-git-checkout-track' into 'master'

# add new branch on remote repository

$ git fetch -p
From gitlab.com:wooheaven/Git-Document
 * [new branch]      7-git-fetch-p -> origin/7-git-fetch-p

$ git branch -av
* master                       a9b907d Merge branch '6-git-checkout-track' into 'master'
  remotes/origin/7-git-fetch-p a9b907d Merge branch '6-git-checkout-track' into 'master'
  remotes/origin/HEAD          -> origin/master
  remotes/origin/master        a9b907d Merge branch '6-git-checkout-track' into 'master'
```

# fetch multiple remote repository to local repository
```{bash}


$ git fetch --all
gitlab을(를) 가져오는 중
github을(를) 가져오는 중

$ git brach -avv
* master                                        4392e62 [gitlab/master] Merge branch '21-02-02-03_generator_iterator' into 'master'
  remotes/github/master                         4392e62 Merge branch '21-02-02-03_generator_iterator' into 'master'
  remotes/gitlab/21-02-02-03_generator_iterator 4659af5 modify 00_Data_science_from_scratch.md
  remotes/gitlab/HEAD                           -> gitlab/master
  remotes/gitlab/master                         4392e62 Merge branch '21-02-02-03_generator_iterator' into 'master'
```
