# git stash
```{bash}
git status
git stash
git stash list
git status

git stash pop
git status
```

# real log
```{bash}
$ git branch 
* 229-2018-04-25-hd
  master

$ git status
On branch 229-2018-04-25-hd
Your branch is up to date with 'gitlab/229-2018-04-25-hd'.

Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

    modified:   00_LastKeeper/00_memo_Player.md
    modified:   00_LastKeeper/parsing_match.ipynb
    modified:   01_Heavy2Defence/00_memo_Player.md
    modified:   01_Heavy2Defence/06_FW_table.md
    modified:   03_Remake_with_TDD/algorithms/ht_match.py
    modified:   03_Remake_with_TDD/test/test_ht_match.py

$ git stash
Saved working directory and index state WIP on 229-2018-04-25-hd: 1ff697d Merge branch '228-2018-04-25-lk' into 'master'

$ git status 
On branch 229-2018-04-25-hd
Your branch is up to date with 'gitlab/229-2018-04-25-hd'.

nothing to commit, working tree clean

$ git stash pop
On branch 229-2018-04-25-hd
Your branch is up to date with 'gitlab/229-2018-04-25-hd'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

    modified:   00_LastKeeper/00_memo_Player.md
    modified:   00_LastKeeper/parsing_match.ipynb
    modified:   01_Heavy2Defence/00_memo_Player.md
    modified:   01_Heavy2Defence/06_FW_table.md
    modified:   03_Remake_with_TDD/algorithms/ht_match.py
    modified:   03_Remake_with_TDD/test/test_ht_match.py

no changes added to commit (use "git add" and/or "git commit -a")
Dropped refs/stash@{0} (fb5db1d8a66885a1fc328d781407aae20ae0cddc)

$ git status
On branch 229-2018-04-25-hd
Your branch is up to date with 'gitlab/229-2018-04-25-hd'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

    modified:   00_LastKeeper/00_memo_Player.md
    modified:   00_LastKeeper/parsing_match.ipynb
    modified:   01_Heavy2Defence/00_memo_Player.md
    modified:   01_Heavy2Defence/06_FW_table.md
    modified:   03_Remake_with_TDD/algorithms/ht_match.py
    modified:   03_Remake_with_TDD/test/test_ht_match.py

no changes added to commit (use "git add" and/or "git commit -a")
```
