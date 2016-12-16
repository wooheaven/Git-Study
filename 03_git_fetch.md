# fetch remote repository to local repository
```
git branch -av
* master                a9b907d Merge branch '6-git-checkout-track' into 'master'
  remotes/origin/HEAD   -> origin/master
  remotes/origin/master a9b907d Merge branch '6-git-checkout-track' into 'master'

git fetch -p
From gitlab.com:wooheaven/Git-Document
 * [new branch]      7-git-fetch-p -> origin/7-git-fetch-p

# add new branch on remote repository

git branch -av
* master                       a9b907d Merge branch '6-git-checkout-track' into 'master'
  remotes/origin/7-git-fetch-p a9b907d Merge branch '6-git-checkout-track' into 'master'
  remotes/origin/HEAD          -> origin/master
  remotes/origin/master        a9b907d Merge branch '6-git-checkout-track' into 'master'
```
