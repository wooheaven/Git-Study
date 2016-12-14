# Checkout new local branch which track remote branch
```
git branch -a
* master
  remotes/origin/6-git-checkout-track
  remotes/origin/HEAD -> origin/master
  remotes/origin/master

git checkout --track origin/6-git-checkout-track
Branch 6-git-checkout-track set up to track remote branch 6-git-checkout-track from origin.
Switched to a new branch '6-git-checkout-track'

git branch -a
* 6-git-checkout-track
  master
  remotes/origin/6-git-checkout-track
  remotes/origin/HEAD -> origin/master
  remotes/origin/master
```
