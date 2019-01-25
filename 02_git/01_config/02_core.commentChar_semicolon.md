```{bash}
$ git config --global core.commentChar ';'
$ git config --global core.commentChar
$ cat ~/.gitconfig
```

# before
```{bash}
$ git commit

# 변경 사항에 대한 커밋 메시지를 입력하십시오. '#' 문자로 시작하는
# 줄은 무시되고, 메시지를 입력하지 않으면 커밋이 중지됩니다.
# 현재 브랜치 25-git-commit-with-vi-editor
# 브랜치가 'gitlab/25-git-commit-with-vi-editor'에 맞게 업데이트된 상태입니다.
#
# 커밋할 변경 사항:
        new file:     16_git_config.md
#
:wq
```

# after
```{bash}
$ git commit

; 변경 사항에 대한 커밋 메시지를 입력하십시오. '#' 문자로 시작하는
; 줄은 무시되고, 메시지를 입력하지 않으면 커밋이 중지됩니다.
; 현재 브랜치 25-git-commit-with-vi-editor
; 브랜치가 'gitlab/25-git-commit-with-vi-editor'에 맞게 업데이트된 상태입니다.
;
; 커밋할 변경 사항:
        new file:     16_git_config.md
;
:wq
```
