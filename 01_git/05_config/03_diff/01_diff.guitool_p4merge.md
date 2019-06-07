```bash
$ git difftool --tool-help
'git difftool --tool=<tool>' may be set to one of the following:
		p4merge
		vimdiff

$ git config --global diff.guitool p4merge
$ git config --global diff.guitool
p4merge

$ git config --global difftool.p4mergetool.cmd "/Applications/p4merge.app/Contents/Resources/launchp4merge \$LOCAL \$REMOTE"
$ git config --global difftool.p4mergetool.cmd
/Applications/p4merge.app/Contents/Resources/launchp4merge $LOCAL $REMOTE
```
