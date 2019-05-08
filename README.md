01.0.0 ╠═1 [branch](01_git/01_branch/01_git_branch.md)  
02.0.0 ╠═2 [checkout](01_git/02_checkout/01_git_checkout.md)  
03.0.0 ╠═3 [clone](01_git/03_clone/01_git_clone.md)  
04.0.0 ╠═4 config --global  
04.1.0 ║ ╠═4.1 alias  
04.1.1 ║ ║ ╠═4.1.1 [alias.dt : git difftool](01_git/04_config/01_alias/01_alias.dt.md)  
04.1.2 ║ ║ ╠═4.1.2 [alias.lg : git log --graph --decorate](01_git/04_config/01_alias/02_alias.lg.md)  
04.1.3 ║ ║ ╚═4.1.3 [alias.sync : git fetch -p && git pull](01_git/04_config/01_alias/03_alias.sync.md)  
04.2.0 ║ ╠═4.2 core  
04.2.1 ║ ║ ╠═4.2.1 [core.commentChar : # -> ;](01_git/04_config/02_core/01_core.commentChar_semicolon.md)  
04.2.2 ║ ║ ╠═4.2.2 [core.editor : vim](01_git/04_config/02_core/02_core.editor_vim.md)  
04.2.3 ║ ║ ╚═4.2.3 [core.pager : cat, less or pager.cmd](01_git/04_config/02_core/03_core.pager_cat.md)  
04.3.0 ║ ╚═4.3 diff.tool  
04.3.1 ║ - ╚═4.3.1 [diff.tool : vimdiff](01_git/04_config/03_diff/01_diff.tool.md)  
05.0.0 ╠═5 [fetch](01_git/05_fetch/01_git_fetch.md)  
06.0.0 ╠═6 [pull](01_git/06_pull/01_git_pull.md)  
07.0.0 ╠═7 [remote](01_git/07_remote/01_git_remote.md)  
08.0.0 ╠═8 [stash](01_git/08_stash/01_git_stash.md)  
09.0.0 ╠═9 [status](01_git/09_status/01_git_status.md)  
10.0.0 ╠═10 [tag](01_git/10_tag/01_git_tag.md)  

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
