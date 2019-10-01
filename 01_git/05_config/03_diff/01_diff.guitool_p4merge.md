```
$ git difftool --tool-help
'git difftool --tool=<tool>' may be set to one of the following:
		p4merge
		vimdiff

$ git config --global diff.guitool p4merge
$ git config --global difftool.p4merge.trustExitCode false
$ git config --global difftool.p4merge.keepBackup false
$ git config --global difftool.p4merge.keepTemporaries false
```

# mac
```
$ git config --global difftool.p4mergetool.cmd "/Applications/p4merge.app/Contents/Resources/launchp4merge \$LOCAL \$REMOTE"
$ git config --global difftool.p4mergetool.cmd
/Applications/p4merge.app/Contents/Resources/launchp4merge $LOCAL $REMOTE
```

# linux
```
$ git config --global difftool.p4mergetool.cmd "p4merge $LOCAL $REMOTE"
```

# check p4merge config
```
$ git config -l | grep p4merge
diff.guitool=p4merge
difftool.p4merge.cmd=p4merge $LOCAL $REMOTE
difftool.p4merge.trustexitcode=false
difftool.p4merge.keepbackup=false
difftool.p4merge.keeptemporaries=false
```
