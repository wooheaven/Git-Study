# Merge latest master into issue-branch

## first, finished on issue-branch
```{bash}
$ git checkout -t original/7-issue
$ # edit file
$ git status
$ git commit
$ git status
```

## Merge master into issue-branch and fix any conflicts that come up
```{bash}
$ git checkout master
$ git fetch --all
$ git pull
$ git checkout 7-issue
$ git merge --no-ff master
$ (if fail) git status
$ (if fail) git merge --abort
$ # fix conflict
$ git merge --no-ff master
```
