# git object database
```
check in  : ->
check out : <-

Windows end of line : CRLF
Windows : CRLF -> git object database : LF
Windows : CRLF <- git object database : LF

Linux, Mac end of line : LF
Linux : LF -> git object database : LF
Linux : LF <- git object database : LF
```

# Windows OS
```
git config --global core.autocrlf true
```

# Linux, Mac
```
git config --global core.autocrlf input
```
