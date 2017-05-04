# Make change and version of files
```{bash}
$ git status
On branch 13-git-commit
Your branch is up-to-date with 'origin/13-git-commit'.

Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	modified:   00_git_command.md
	renamed:    08_git_push.md -> 09_git_push.md

$ git commit
[13-git-commit 175cad4] modify 00 08
 2 files changed, 6 insertions(+), 1 deletion(-)
 rename 08_git_push.md => 09_git_push.md (100%)

$ git status
On branch 13-git-commit
Your branch is ahead of 'origin/13-git-commit' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working directory clean
```
