git  
╠══ 1 config --global  
║&ensp;&ensp;&nbsp;╠══ 1.1 alias  
║&ensp;&ensp;&nbsp;║&ensp;&ensp;&nbsp;╠══ 1.1.1 [git config --global alias.lg : git log --graph --decorate](02_git/01_config/01_alias/01_alias.lg.md)  
║&ensp;&ensp;&nbsp;║&ensp;&ensp;&nbsp;╚══ 1.1.2 [git config --global alias.sync : git fetch -p && git pull](02_git/01_config/01_alias/02_alias.sync.md)  
║&ensp;&ensp;&nbsp;╠══ 1.2 core  
║&ensp;&ensp;&nbsp;║&ensp;&ensp;&nbsp;╠══ 1.2.1 [git config --config core.commentChar : # -> ;](02_git/01_config/02_core/01_core.commentChar_semicolon.md)  
║&ensp;&ensp;&nbsp;║&ensp;&ensp;&nbsp;╚══ 1.2.2 [git config --config core.editor : vim](02_git/01_config/02_core/02_core.editor_vim.md)  
╠══ 2 [stash](02_git/02_stash/01_git_stash.md)  


# [git clone](01_git_command/01_git_clone.md)
```{bash}
$ git clone gitRepositoryURL:UserName/gitProject
```

# [git remote](01_git_command/02_git_remote.md)
```{bash}
$ git remote -v
$ git remote set-head origin -d
$ git remote set-head origin -a
$ git remote set-url origin gitRepositoryURL:UserName/gitProject
$ git remote rename origin gitlab
$ git remote add github git@gitlab.com/wooheaven/Git-Study.git
$ git remote show github
$ git remote add myGitLab ssh://git@localhost:220/wooheaven/Spark-Java-Study.git
```

# [git fetch](01_git_command/03_git_fetch.md)
```{bash}
$ git fetch origin
$ git fetch --all
$ git fetch -p
```

# [git pull](01_git_command/04_git_pull.md)
```{bash}
$ git pull
```

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

# [git tag](01_git_command/18_git_tag.md)
```{bash}
$ git tag
$ git tag -l "*V1.0"
$ git tag "tmpV1.0"
$ git tag -d tmpV1.0
```

# [git stash](01_git_command/19_git_stash.md)
```{bash}
$ git stash
$ git stash list
$ git stash pop
```
