# git init : Create an empty Git repository or reinitialize an existing one
```
$ pwd
/home/woo/Documents/10_hugo_WorkSpace/myDoc/

$ git init 
hint: Using 'master' as the name for the initial branch. This default branch name
hint: is subject to change. To configure the initial branch name to use in all
hint: of your new repositories, which will suppress this warning, call:
hint: 
hint: 	git config --global init.defaultBranch <name>
hint: 
hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
hint: 'development'. The just-created branch can be renamed via this command:
hint: 
hint: 	git branch -m <name>
Initialized empty Git repository in /home/woo/Documents/10_hugo_WorkSpace/myDoc/.git/
```

# remove git repository
```
$ rm -rf .git/
```

# configure git init as main not master
```
$ git config --global init.defaultBranch main

$ cat ~/.gitconfig
...
[init]
	defaultBranch = main
```

# after configuration, git init
```
$ git init
Initialized empty Git repository in /home/woo/Documents/10_hugo_WorkSpace/myDoc/.git/

$ git status 
On branch main

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	archetypes/
	hugo.toml

nothing added to commit but untracked files present (use "git add" to track)
```
