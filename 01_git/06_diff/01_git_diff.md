# Check difference between [HEAD and Working Directory]
```{bash}
$ git diff
diff --git a/01_git_command/08_git_diff.md b/01_git_command/08_git_diff.md
index e69de29..b432004 100644
--- a/01_git_command/08_git_diff.md
+++ b/01_git_command/08_git_diff.md
@@ -0,0 +1,3 @@
+# Check difference between [commit and another commit] or [HEAD and Working Directory]
+```{bash}
+```
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
$ git diff ab21aae:./01_git_command/ 627ace9:./01_git_command/
```
