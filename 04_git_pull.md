# pull remote repository branch last version to local repository branch.
```
git fetch -p
remote: Counting objects: 2, done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 2 (delta 0), reused 0 (delta 0)
Unpacking objects: 100% (2/2), done.
From gitlab.com:wooheaven/Git-Document
   1c5f5e9..21a151f  9-git-pull -> origin/9-git-pull

git branch -avv
* 9-git-pull                1c5f5e9 [origin/9-git-pull: behind 1] Merge branch '8-git-remote-set-url-origin-git-github-com-wooheaven-git-document-git' into 'master'
  master                    1c5f5e9 [origin/master] Merge branch '8-git-remote-set-url-origin-git-github-com-wooheaven-git-document-git' into 'master'
  remotes/origin/9-git-pull 21a151f add 04_git_pull.md
  remotes/origin/master     1c5f5e9 Merge branch '8-git-remote-set-url-origin-git-github-com-wooheaven-git-document-git' into 'master'

git pull
Updating 1c5f5e9..21a151f
Fast-forward
 04_git_pull.md                           | 19 +++++++++++++++++++
 04_git_checkout.md => 05_git_checkout.md |  0
 05_git_branch.md => 06_git_branch.md     |  0
 06_git_push.md => 07_git_push.md         |  0
 4 files changed, 19 insertions(+)
 create mode 100644 04_git_pull.md
 rename 04_git_checkout.md => 05_git_checkout.md (100%)
 rename 05_git_branch.md => 06_git_branch.md (100%)
 rename 06_git_push.md => 07_git_push.md (100%)

git branch -avv
* 9-git-pull                21a151f [origin/9-git-pull] add 04_git_pull.md
  master                    1c5f5e9 [origin/master] Merge branch '8-git-remote-set-url-origin-git-github-com-wooheaven-git-document-git' into 'master'
  remotes/origin/9-git-pull 21a151f add 04_git_pull.md
  remotes/origin/master     1c5f5e9 Merge branch '8-git-remote-set-url-origin-git-github-com-wooheaven-git-document-git' into 'master'
```
