```
$ git restore ./*
error: unable to create symlink examples/awesome-cv.cls: File name too long
error: unable to create symlink examples/fontawesome.sty: File name too long

$ git config core.symlinks false
$ git restore examples/awesome-cv.cls
$ git restore examples/fontawesome.sty
$ git status 
On branch master
Your branch is up to date with 'origin/master'.

nothing to commit, working tree clean

$ git config core.symlinks true
$ git config core.symlinks 
true
```
