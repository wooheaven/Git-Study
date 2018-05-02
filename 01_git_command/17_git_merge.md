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

# cancel merge and fix confilct and pull
```{bash}
$ git pull
You have not concluded your merge (MERGE_HEAD exists).
Please, commit your changes before you can merge.

$ git merge --abort

$ # fix conflict

$ git pull

```
