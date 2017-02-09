# view status of local branch's commit, working directory
```{bash}
$ git status
On branch 12-git-status
Your branch is up-to-date with 'origin/12-git-status'.
nothing to commit, working directory clean

$ ll
total 64
-rw-r--r--  1 rwoo  staff   657B 12 22 00:31 00_git_command.md
-rw-r--r--  1 rwoo  staff   426B 12 22 00:31 01_git_clone.md
-rw-r--r--  1 rwoo  staff   1.0K 12 22 00:31 02_git_remote.md
-rw-r--r--  1 rwoo  staff   756B 12 22 00:31 03_git_fetch.md
-rw-r--r--  1 rwoo  staff   1.7K 12 22 00:31 04_git_pull.md
-rw-r--r--  1 rwoo  staff   524B 12 22 00:31 05_git_checkout.md
-rw-r--r--  1 rwoo  staff   1.5K 12 22 00:31 06_git_branch.md
-rw-r--r--  1 rwoo  staff   864B 12 22 00:31 07_git_push.md

$ mv 07_git_push.md 08_git_push.md

$ git add 07_git_push.md

$ git add 08_git_push.md

$ git status
On branch 12-git-status
Your branch is up-to-date with 'origin/12-git-status'.
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

    renamed:    07_git_push.md -> 08_git_push.md

$ git commit
[12-git-status 94af345] modify 00 07 08
 3 files changed, 38 insertions(+), 1 deletion(-)
 create mode 100644 07_git_status.md
 rename 07_git_push.md => 08_git_push.md (100%)

$ git status
On branch 12-git-status
Your branch is ahead of 'origin/12-git-status' by 1 commit.
  (use "git push" to publish your local commits)
nothing to commit, working directory clean
```
