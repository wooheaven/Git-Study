```
$ git log -n 3
commit 913f4f34eb25586622aebd7e5aa0fc56c5c19215 (HEAD -> master, gitlab/master, gitlab/HEAD)
Merge: 0dba9c5 ed3fad2
Author: wooheaven <wooheaven79@gmail.com>
Date:   Fri Feb 7 14:38:28 2020 +0000

    Merge branch '69-git-log-n-5' into 'master'
    
    #69-git-log-n-5
    
    Closes #69
    
    See merge request wooheaven/Git-Study!62

commit ed3fad2ae2468f6c062fc9ae0d6a2d4628d5d3c8
Author: ubuntu <wooheaven79@gmail.com>
Date:   Fri Feb 7 23:37:11 2020 +0900

    #69-git-log-n-5
    ```
    new file:   01_git/08_log/02_git_log_n_3.md
    new file:   99_Utility/02_git_squash_commit.py
    modified:   README.md
    ```

commit 0dba9c5d2baa99addde5435f2ee53164cf558d59 (localRepository/master, github/master)
Merge: db5b2f9 1cf6db1
Author: wooheaven <wooheaven79@gmail.com>
Date:   Tue Dec 31 05:24:44 2019 +0000

    Merge branch '68-git-branch' into 'master'
    
    #68-git-branch
    
    Closes #68
    
    See merge request wooheaven/Git-Study!61

$ git log -n 3 --format="%p,%h,%s"
0dba9c5 ed3fad2,913f4f3,Merge branch '69-git-log-n-5' into 'master'
0dba9c5,ed3fad2,#69-git-log-n-5 ``` new file:   01_git/08_log/02_git_log_n_3.md new file:   99_Utility/02_git_squash_commit.py modified:   README.md ```
db5b2f9 1cf6db1,0dba9c5,Merge branch '68-git-branch' into 'master'
```
