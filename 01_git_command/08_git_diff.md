# Check difference between [HEAD and Working Directory]
```{bash}
$ git status 
현재 브랜치 29-diff-between-branch1-and-branch2
브랜치가 'gitlab/29-diff-between-branch1-and-branch2'보다 1개 커밋만큼 앞에 있습니다.
  (로컬에 있는 커밋을 제출하려면 "git push"를 사용하십시오)
커밋하도록 정하지 않은 변경 사항:
  (무엇을 커밋할지 바꾸려면 "git add <파일>..."을 사용하십시오)
  (작업 폴더의 변경 사항을 버리려면 "git checkout -- <파일>..."을 사용하십시오)

	수정함:        08_git_diff.md

커밋할 변경 사항을 추가하지 않았습니다 ("git add" 및/또는 "git commit -a"를
사용하십시오)

$ git diff
diff --git a/01_git_command/08_git_diff.md b/01_git_command/08_git_diff.md
index e69de29..b432004 100644
--- a/01_git_command/08_git_diff.md
+++ b/01_git_command/08_git_diff.md
@@ -0,0 +1,3 @@
+# Check difference between [commit and another commit] or [HEAD and Working Directory]
+```{bash}
+```

$ git add 08_git_diff.md

$ git status
현재 브랜치 29-diff-between-branch1-and-branch2
브랜치가 'gitlab/29-diff-between-branch1-and-branch2'보다 1개 커밋만큼 앞에 있습니다.
  (로컬에 있는 커밋을 제출하려면 "git push"를 사용하십시오)
커밋할 변경 사항:
  (스테이지 해제하려면 "git reset HEAD <파일>..."을 사용하십시오)

	수정함:        08_git_diff.md

$ git diff
$
```

# Check difference between [branch and another branch]
```{bash}
$ git diff 29-diff-between-branch1-and-branch2:./01_git_command/ master:./01_git_command/
diff --git a/08_git_diff.md b/08_git_diff.md
index e69de29..21b8358 100644
--- a/08_git_diff.md
+++ b/08_git_diff.md
@@ -0,0 +1,48 @@
+ ...
+ ...(내용생략)
+ ...
```

# Check difference between [commit and another commit]
```{bash}
```
