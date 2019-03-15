git  
╠══ 1 config --global  
║&ensp;&ensp;&nbsp;╠══ 1.1 alias  
║&ensp;&ensp;&nbsp;║&ensp;&ensp;&nbsp;╠══ 1.1.1 [alias.lg : git log --graph --decorate](02_git/01_config/01_alias/01_alias.lg.md)  
║&ensp;&ensp;&nbsp;║&ensp;&ensp;&nbsp;╚══ 1.1.2 [alias.sync : git fetch -p && git pull](02_git/01_config/01_alias/02_alias.sync.md)  
║&ensp;&ensp;&nbsp;╠══ 1.2 core  
║&ensp;&ensp;&nbsp;║&ensp;&ensp;&nbsp;╠══ 1.2.1 [core.commentChar : # -> ;](02_git/01_config/02_core/01_core.commentChar_semicolon.md)  
║&ensp;&ensp;&nbsp;║&ensp;&ensp;&nbsp;╠══ 1.2.2 [core.editor : vim](02_git/01_config/02_core/02_core.editor_vim.md)  
║&ensp;&ensp;&nbsp;║&ensp;&ensp;&nbsp;╚══ 1.2.3 [core.pager : cat or less](02_git/01_config/02_core/03_core.pager_cat.md)  
║&ensp;&ensp;&nbsp;╚══ 1.3 diff  
║&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;╚══ 1.3.1 [diff.tool : vimdiff](02_git/01_config/03_diff/01_diff.tool.md)  
╠══ 2 [clone](02_git/02_clone/01_git_clone.md)  
╠══ 3 [fetch](02_git/03_fetch/01_git_fetch.md)  
╠══ 4 [pull](02_git/04_pull/01_git_pull.md)  
╠══ 5 [remote](02_git/05_remote/01_git_remote.md)  
╠══ 6 [stash](02_git/06_stash/01_git_stash.md)  
╠══ 7 [tag](02_git/07_tag/01_git_tag.md)

# [git checkout](01_git_command/05_git_checkout.md)
```{bash}
$ git checkout --track origin/remoteBranch
$ git checkout -- README.md
```

# [git branch](01_git_command/06_git_branch.md)
```{bash}
$ git branch
$ git branch -r
$ git branch -a
$ git branch -v
$ git branch -vv
$ git branch -avv
```

# [git status](01_git_command/07_git_status.md)
```{bash}
$ git status
```

# [git diff](01_git_command/08_git_diff.md)
```{bash}
$ git diff
$ git diff 29-diff-between-branch1-and-branch2:./01_git_command/ master:./01_git_command/
```

# [git difftool](01_git_command/09_git_difftool.md)
```{bash}
$ git difftool
$ git difftool 29-diff-between-branch1-and-branch2:./01_git_command/ master:./01_git_command/
```

# [git commit](01_git_command/10_git_commit.md)
```{bash}
$ git commit
```

# [git reset](01_git_command/11_git_reset_soft.md)
```{bash}
$ git reset --soft HEAD~2
$ git reset --mixed HEAD~
$ git reset --hard HEAD^
```

# [git squash commit](01_git_command/12_git_squash_commit.md)
```{bash}
$ git reset --soft HEAD~9 && git commit
```

# [git push](01_git_command/13_git_push.md)
```{bash}
$ git push origin localBranch:remoteBranch
$ git push origin :remoteBranch
```

# [git log](01_git_command/14_git_log.md)
```{bash}
$ git log
```

# [git revert](01_git_command/15_git_revert.md)
```{bash}
$ git revert
```

# [git merge](01_git_command/17_git_merge.md)
```{bash}
$ git checkout mater
$ git merge --no-ff 31-git-local-merge
$ git push gitlab master
$ git merge --abort
```

# [git stash](01_git_command/19_git_stash.md)
```{bash}
$ git stash
$ git stash list
$ git stash pop
```
