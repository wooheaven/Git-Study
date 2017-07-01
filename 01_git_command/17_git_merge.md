# Merge locally

## After Commit is done
```{bash}
$ git status

$ git commit
```

## Merge the branch and fix any conflicts that come up
```{bash}
$ git checkout master

$ git merge --no-ff 7-insert-player-csv-file-to-postgresql-table
```

## Push the result of the merge to GitLab
```{bash}
$ git push gitlab master
```
