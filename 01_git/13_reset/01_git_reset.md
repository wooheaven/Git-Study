# [ git reset --soft HEAD~ ] : reverse of [ git commit ]
```{bash}
$ git status             # 2 : v2,v2,v1 = [ WorkingDirectory = v2, Index = v2, HEAD = v1 ]
$ git commit
$ git status             # 3 : v2,v2,v2

$ git reset --soft HEAD~ 
$ git status             # 2 : v2,v2,v1

$ git commit
$ git status             # 3 : v2,v2,v2
```

# [ git reset --mixed HEAD~ ] : reverse of [ git add file.txt && git commit ]
```{bash}
$ git status             # 1 : v2,v1,v1
$ git add file.txt
$ git status             # 2 : v2,v2,v1

$ git commit             # 3 : v2,v2,v2
$ git status             # 3 : v2,v2,v2

$ git reset HEAD~
$ git status             # 1 : v2,v1,v1

$ git add file.txt
$ git status             # 2 : v2,v2,v1

$ git commit
$ git status             # 3 : v2,v2,v2
```

# [ git reset --hard HEAD~ ] : reverse of [ vi file.txt && git add file.txt && git commit ]
```{bash}
$ git status             # 1 : v1,v1,v1
$ vi file.txt
$ git status             # 2 : v2,v1,v1

$ git add file.txt
$ git status             # 3 : v2,v2,v1

$ git commit
$ git status             # 4 : v2,v2,v2

$ git reset --hard HEAD~
$ git status             # 1 : v1,v1,v1

$ vi file.txt
$ git status             # 2 : v2,v1,v1

$ git add file.txt
$ git status             # 3 : v2,v2,v1

$ git commit
$ git status             # 4 : v2,v2,v2
```
