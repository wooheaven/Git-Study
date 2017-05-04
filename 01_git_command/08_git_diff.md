# Check difference between [commit and another commit] or [HEAD and Working Directory]
```{bash}
$ git status 
현재 브랜치 23-git-difftool
브랜치가 'gitlab/23-git-difftool'보다 2개 커밋만큼 앞에 있습니다.
  (로컬에 있는 커밋을 제출하려면 "git push"를 사용하십시오)

커밋하도록 정하지 않은 변경 사항:
  (무엇을 커밋할지 바꾸려면 "git add <파일>..."을 사용하십시오)
  (작업 폴더의 변경 사항을 버리려면 "git checkout -- <파일>..."을 사용하십시오)

	수정됨:       08_git_diff.md

커밋할 변경 사항을 추가하지 않았습니다 ("git add" 및/또는 "git commit -a"를
사용하십시오)

$ git diff
diff --git a/08_git_diff.md b/08_git_diff.md
index 0c33962..b432004 100644
--- a/08_git_diff.md
+++ b/08_git_diff.md
@@ -1,24 +1,3 @@
-# Make change and version of files
+# Check difference between [commit and another commit] or [HEAD and Working Directory]
 ```{bash}
-$ git status
-On branch 13-git-commit
-Your branch is up-to-date with 'origin/13-git-commit'.
-
-Changes to be committed:
-  (use "git reset HEAD <file>..." to unstage)
-
-       modified:   00_git_command.md
-       renamed:    08_git_push.md -> 09_git_push.md
-
-$ git commit
-[13-git-commit 175cad4] modify 00 08
- 2 files changed, 6 insertions(+), 1 deletion(-)
- rename 08_git_push.md => 09_git_push.md (100%)
-
-$ git status
-On branch 13-git-commit
-Your branch is ahead of 'origin/13-git-commit' by 1 commit.
-  (use "git push" to publish your local commits)
-
-nothing to commit, working directory clean
 ```
```
