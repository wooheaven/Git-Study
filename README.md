1.0.0 ╠═1 [checkout](01_git/01_checkout/01_git_checkout.md)  
2.0.0 ╠═2 [clone](01_git/02_clone/01_git_clone.md)  
3.0.0 ╠═3 config --global  
3.1.0 ║ ╠═3.1 alias  
3.1.1 ║ ║ ╠═3.1.1 [alias.dt : git difftool](01_git/03_config/01_alias/01_alias.dt.md)  
3.1.2 ║ ║ ╠═3.1.2 [alias.lg : git log --graph --decorate](01_git/03_config/01_alias/02_alias.lg.md)  
3.1.3 ║ ║ ╚═3.1.3 [alias.sync : git fetch -p && git pull](01_git/03_config/01_alias/03_alias.sync.md)  
3.2.0 ║ ╠═3.2 core  
3.2.1 ║ ║ ╠═3.2.1 [core.commentChar : # -> ;](01_git/03_config/02_core/01_core.commentChar_semicolon.md)  
3.2.2 ║ ║ ╠═3.2.2 [core.editor : vim](01_git/03_config/02_core/02_core.editor_vim.md)  
3.2.3 ║ ║ ╚═3.2.3 [core.pager : cat, less or pager.cmd](01_git/03_config/02_core/03_core.pager_cat.md)  
3.3.0 ║ ╚═3.3 diff.tool  
3.3.1 ║ - ╚═3.3.1 [diff.tool : vimdiff](01_git/03_config/03_diff/01_diff.tool.md)  
4.0.0 ╠═4 [fetch](01_git/04_fetch/01_git_fetch.md)  
5.0.0 ╠═5 [pull](01_git/05_pull/01_git_pull.md)  
6.0.0 ╠═6 [remote](01_git/06_remote/01_git_remote.md)  
7.0.0 ╠═7 [stash](01_git/07_stash/01_git_stash.md)  
8.0.0 ╠═8 [tag](01_git/08_tag/01_git_tag.md)  

# [git branch](02_git_command/06_git_branch.md)
```{bash}
$ git branch
$ git branch -r
$ git branch -a
$ git branch -v
$ git branch -vv
$ git branch -avv
```

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
