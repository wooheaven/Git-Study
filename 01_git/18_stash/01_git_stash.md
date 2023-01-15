# changed working-directory to stash
```{bash}
$ git status
$ git stash
```

# show stashed changes
```
$ git stash show -p stash@{0}
```

# stash to working-directory
```{bash}
$ git status
$ git stash list

$ git stash pop
$ git status
$ git stash list
```

# remove stash
```{bash}
$ git stash list
$ git stash drop stash@{0}

$ git stash list
```
