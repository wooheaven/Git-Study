# Before : default git commit msg
```

; Please enter the commit message for your changes. Lines starting
; with ';' will be ignored, and an empty message aborts the commit.
;
; On branch 84-brew-update-sometimes-missing-output-text
; Your branch is up to date with 'gitlab/84-brew-update-sometimes-missing-output-text'.
;
; Changes to be committed:
;       modified:   01_Spring_Boot/01_workspace/MySoftwareMaintenance/src/main/java/com/mysite/brew/service/BrewService.java
;
```

# Edit prepare-commit-msg
```
$ cd .git/hooks
$ cp prepare-commit-msg.sample prepare-commit-msg
$ vi prepare-commit-msg
#!/bin/sh

BRANCH_NAME=$(git branch | grep '*' | sed 's/* //')
if [ $BRANCH_NAME != '(no branch)' ]
then
  echo "; Commit Subject : What to do" >> $1
  echo "; New Feature : " >> $1
  echo "; Bug Fix : " >> $1
  echo "; Code Refactoring : " >> $1
  echo ";" >> $1
  echo "; Commit Body : How to do or Why to do" >> $1
  echo ";" >> $1
  echo ";" >> $1
fi
```

# After : custom git commit msg
```

; Please enter the commit message for your changes. Lines starting
; with ';' will be ignored, and an empty message aborts the commit.
;
; On branch 84-brew-update-sometimes-missing-output-text
; Your branch is up to date with 'gitlab/84-brew-update-sometimes-missing-output-text'.
;
; Changes to be committed:
;       modified:   01_Spring_Boot/01_workspace/MySoftwareMaintenance/src/main/java/com/mysite/brew/service/BrewService.java
;
; Commit Subject : What to do
; New Feature : 
; Bug Fix : 
; Code Refactoring : 
;
; Commit Body : How to do or Why to do
;
;
```
