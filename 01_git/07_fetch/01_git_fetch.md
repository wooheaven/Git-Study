# fetch all branches of remote repository to local repository
```bash
$ git fetch origin
From gitlab.com:wooheaven/Git-Document
 * [new branch]      7-git-fetch-p -> origin/7-git-fetch-p
```

# fetch single branch of remote repository to local repository
```bash
$ git fetch gitlab 56-update-fetch-checkout:56-update-fetch-checkout
```

# fetch all branches of multiple remote repository to local repository
```bash
$ git fetch --all
gitlab을(를) 가져오는 중
github을(를) 가져오는 중
```

# fetch with prune of remote tracking branches
```bash
$ git fetch -p  # git fetch --prune
gitlab.com:wooheaven/Hattrick-Study URL에서
 x [삭제됨]          (없음)   -> gitlab/43-2017-07-23-player_skill_table-txt

$ git fetch -p gitlab
$ git fetch -p myloc
```
