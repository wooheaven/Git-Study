1.0.0 ╠═1 [branch](01_git/01_branch/01_git_branch.md)  
2.0.0 ╠═2 [checkout](01_git/02_checkout/01_git_checkout.md)  
3.0.0 ╠═3 [clone](01_git/03_clone/01_git_clone.md)  
4.0.0 ╠═4 config --global  
4.1.0 ║ ╠═4.1 alias  
4.1.1 ║ ║ ╠═4.1.1 [alias.dt : git difftool](01_git/04_config/01_alias/01_alias.dt.md)  
4.1.2 ║ ║ ╠═4.1.2 [alias.lg : git log --graph --decorate](01_git/04_config/01_alias/02_alias.lg.md)  
4.1.3 ║ ║ ╚═4.1.3 [alias.sync : git fetch -p && git pull](01_git/04_config/01_alias/03_alias.sync.md)  
4.2.0 ║ ╠═4.2 core  
4.2.1 ║ ║ ╠═4.2.1 [core.commentChar : # -> ;](01_git/04_config/02_core/01_core.commentChar_semicolon.md)  
4.2.2 ║ ║ ╠═4.2.2 [core.editor : vim](01_git/04_config/02_core/02_core.editor_vim.md)  
4.2.3 ║ ║ ╚═4.2.3 [core.pager : cat, less or pager.cmd](01_git/04_config/02_core/03_core.pager_cat.md)  
4.3.0 ║ ╚═4.3 diff.tool  
4.3.1 ║ - ╚═4.3.1 [diff.tool : vimdiff](01_git/04_config/03_diff/01_diff.tool.md)  
5.0.0 ╠═5 [fetch](01_git/05_fetch/01_git_fetch.md)  
6.0.0 ╠═6 [pull](01_git/06_pull/01_git_pull.md)  
7.0.0 ╠═7 [remote](01_git/07_remote/01_git_remote.md)  
8.0.0 ╠═8 [stash](01_git/08_stash/01_git_stash.md)  
9.0.0 ╠═9 [tag](01_git/09_tag/01_git_tag.md)  

# [git status](02_git_command/07_git_status.md)
```{bash}
$ git status
```

# [git diff](02_git_command/08_git_diff.md)
```{bash}
$ git diff
$ git diff 29-diff-between-branch1-and-branch2:./02_git_command/ master:./01_git_command/
```

# [git difftool](02_git_command/09_git_difftool.md)
```{bash}
$ git difftool
$ git difftool 29-diff-between-branch1-and-branch2:./02_git_command/ master:./01_git_command/
```

# [git commit](02_git_command/10_git_commit.md)
```{bash}
$ git commit
```

# [git reset](02_git_command/11_git_reset_soft.md)
```{bash}
$ git reset --soft HEAD~2
$ git reset --mixed HEAD~
$ git reset --hard HEAD^
```

# [git squash commit](02_git_command/12_git_squash_commit.md)
```{bash}
$ git reset --soft HEAD~9 && git commit
```

# [git push](02_git_command/13_git_push.md)
```{bash}
$ git push origin localBranch:remoteBranch
$ git push origin :remoteBranch
```

# [git log](02_git_command/14_git_log.md)
```{bash}
$ git log
```

# [git revert](02_git_command/15_git_revert.md)
```{bash}
$ git revert
```

# [git merge](02_git_command/17_git_merge.md)
```{bash}
$ git checkout mater
$ git merge --no-ff 31-git-local-merge
$ git push gitlab master
$ git merge --abort
```
