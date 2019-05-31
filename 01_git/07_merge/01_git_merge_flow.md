# Merge locally flow

## After Commit is done
```{bash}
$ git status
$ git commit
```

## Merge local 7-insert into master and fix any conflicts that come up
```{bash}
$ git checkout master
$ git merge --no-ff 7-insert-player-csv-file-to-postgresql-table
```

## If no conflicts, then push local master of remote master
```{bash}
$ git push gitlab master
```

## Solution 1 : On local master branch -> Cancel merge -> pull master -> fix confilct -> reTry merge
```{bash}
$ git pull  # can't pull remote master into local master
You have not concluded your merge (MERGE_HEAD exists).
Please, commit your changes before you can merge.
$ git merge --abort
$ git pull
$ # fix conflict
$ git merge --no-ff 7-insert-player-csv-file-to-postgresql-table
```

## Solution 2 : On local 7-insert branch -> fix confilict -> reTry merge
```bash
$ # fix conflict by mergetool ( this will automatically merge like below )
$ # git merge --no-ff 7-insert-player-csv-file-to-postgresql-table
```
