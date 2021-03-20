# meld config
```
$ git config --global diff.guitool meld
$ git config --global difftool.prompt true
```

# linux
```
$ git config --global difftool.meld.path "/usr/bin/meld"
```

# windows
```
$ cat ~/.gitconfig
[difftool "meld"]
        cmd= \"/c/Program Files (x86)/Meld/Meld.exe\" $LOCAL $REMOTE
```
