```
$ git config --global merge.tool p4merge
```

# mac
```
$ git config --global mergetool.p4mergetool.cmd "/Applications/p4merge.app/Contents/Resources/launchp4merge \$LOCAL \$REMOTE"
```

# linux
```
$ git config --global mergetool.p4mergetool.cmd "p4merge \$LOCAL \$REMOTE"
```

```
$ git config --global mergetool.p4merge.keepTemporaries false
$ git config --global mergetool.p4merge.trustExitCode false
$ git config --global mergetool.p4merge.keepBackup false
```

# check p4merge config
```
$ git config -l | grep p4merge | grep -v diff
merge.tool=p4merge
mergetool.p4mergetool.cmd=p4merge $LOCAL $REMOTE
mergetool.p4merge.keeptemporaries=false
mergetool.p4merge.trustexitcode=false
mergetool.p4merge.keepbackup=false
```
