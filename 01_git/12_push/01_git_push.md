# push local branch to remote repository with same name branch
```{bash}
$ git branch -vv
* 5-git-push 5ac3cbf [origin/5-git-push: ahead 1] add git push
  master     358374b [origin/master] Merge branch '4-git-remote-v' into 'master'

$ git push origin 5-git-push:5-git-push
Counting objects: 4, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), 484 bytes | 0 bytes/s, done.
Total 4 (delta 2), reused 0 (delta 0)
remote:
remote: Create merge request for 5-git-push:
remote:   https://gitlab.com/wooheaven/Git-Document/merge_requests/new?merge_request%5Bsource_branch%5D=5-git-push
remote:
To git@gitlab.com:wooheaven/Git-Document.git
   358374b..5ac3cbf  5-git-push -> 5-git-push

$ git branch -vv
* 5-git-push 5ac3cbf [origin/5-git-push] add git push
  master     358374b [origin/master] Merge branch '4-git-remote-v' into 'master'
```

# push local branch to remote repository by force
```
$ git push -f github master 
Enumerating objects: 209, done.
Counting objects: 100% (209/209), done.
Delta compression using up to 8 threads
Compressing objects: 100% (120/120), done.
Writing objects: 100% (191/191), 4.51 MiB | 2.11 MiB/s, done.
Total 191 (delta 115), reused 120 (delta 71)
remote: Resolving deltas: 100% (115/115), completed with 10 local objects.
To github.com:wooheaven/Awesome-CV.git
 + a867293...9027f7f master -> master (forced update)
```

# remove remote branch
```{bash}
# remove remote branch
$ git push origin :5-zen-of-python-english-korean 
To git@gitlab.com:wooheaven/Python2.7-Study.git
 - [deleted]         5-zen-of-python-english-korean

# push local branch to remote branch
$ git push origin 5-zen-of-python-english-korean 
 Counting objects: 1, done.
 Writing objects: 100% (1/1), 189 bytes | 0 bytes/s, done.
 Total 1 (delta 0), reused 0 (delta 0)
		remote: 
remote: View merge request for 5-zen-of-python-english-korean:
remote:   https://gitlab.com/wooheaven/Python2.7-Study/merge_requests/8
remote: 
To git@gitlab.com:wooheaven/Python2.7-Study.git
 * [new branch]      5-zen-of-python-english-korean -> 5-zen-of-python-english-korean
```
