# Check difference between [commit and another commit] or [HEAD and Working Directory] with side-by-side
```{bash}
$ git status 
현재 브랜치 23-git-difftool
브랜치가 'gitlab/23-git-difftool'보다 1개 커밋만큼 앞에 있습니다.
  (로컬에 있는 커밋을 제출하려면 "git push"를 사용하십시오)

커밋할 변경 사항:
  (스테이지 해제하려면 "git reset HEAD <파일>..."을 사용하십시오)

	new file:     09_git_difftool.md

커밋하도록 정하지 않은 변경 사항:
  (무엇을 커밋할지 바꾸려면 "git add <파일>..."을 사용하십시오)
  (작업 폴더의 변경 사항을 버리려면 "git checkout -- <파일>..."을 사용하십시오)

	수정됨:       09_git_difftool.md

$ git config --global diff.tool

$ git config --global diff.tool vimdiff

$ git config --global diff.tool
vimdiff

$ git difftool

Viewing (1/1): '09_git_difftool.md'
Launch 'vimdiff' [Y/n]: y

----------
aaa | aaab
bbb | bbb

:q!

```

# how to use vimdiff
```{bash}
# Move another windows
Ctrl + w + w

# Move next difference
] + c

# Move previous difference
[ + c

# Copy to current windows from other windows
d + o

# Copy to other windows from current windows
d + p

# View all 
z + o

# View only difference
z + c

# Reload difference
:diffupdate
```
