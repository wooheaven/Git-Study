# Checkout new local branch which track remote branch
```{bash}
$ git branch -a
* master
  remotes/origin/6-git-checkout-track
  remotes/origin/HEAD -> origin/master
  remotes/origin/master

$ git checkout --track origin/6-git-checkout-track
Branch 6-git-checkout-track set up to track remote branch 6-git-checkout-track from origin.
Switched to a new branch '6-git-checkout-track'

$ git branch -a
* 6-git-checkout-track
  master
  remotes/origin/6-git-checkout-track
  remotes/origin/HEAD -> origin/master
  remotes/origin/master
```

# Checkout file as current branch's latest version
```{bash}
$ git status 
현재 브랜치 30-git-checkout
브랜치가 'gitlab/30-git-checkout'에 맞게 업데이트된 상태입니다.
커밋할 사항 없음, 작업 폴더 깨끗함

$ vi README.md 

$ git status 
현재 브랜치 30-git-checkout
브랜치가 'gitlab/30-git-checkout'에 맞게 업데이트된 상태입니다.
커밋하도록 정하지 않은 변경 사항:
  (무엇을 커밋할지 바꾸려면 "git add <파일>..."을 사용하십시오)
  (작업 폴더의 변경 사항을 버리려면 "git checkout -- <파일>..."을 사용하십시오)

	수정함:        README.md

커밋할 변경 사항을 추가하지 않았습니다 ("git add" 및/또는 "git commit -a"를
사용하십시오)

$ git checkout -- README.md

$ git status 
현재 브랜치 30-git-checkout
브랜치가 'gitlab/30-git-checkout'에 맞게 업데이트된 상태입니다.
커밋할 사항 없음, 작업 폴더 깨끗함
```
