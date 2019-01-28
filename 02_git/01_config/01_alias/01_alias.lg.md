```{bash}
$ git config --get-regexp alias
$ git config --global alias.lg log --graph --decorate
$ git config --get-regexp alias
```

# before
```{bash}
$ git log
commit 1bec5d9c47d27aa49790811738acd17dbf1d5e7a (HEAD -> master, gitlab/master, gitlab/HEAD)
Merge: 8f57ce1 6ed8086
Author: wooheaven <wooheaven79@gmail.com>
Date:   Fri Jan 25 14:09:41 2019 +0000

    Merge branch '218-brew-install-git' into 'master'
    
    #218-brew-install-git
    
    Closes #218
    
    See merge request wooheaven/UNIX-Study!214

commit 6ed80860cf970dca739e959a80c176d68eda104f
Author: ubuntu <wooheaven79@gmail.com>
Date:   Fri Jan 25 23:08:16 2019 +0900

    #218-brew-install-git
    ```
    new file:   01_Ubuntu/02_16/07_brew/03_brew_install_git.md
    modified:   README.md
    ```

...
```

# after
```{bash}
$ git lg
*   commit 1bec5d9c47d27aa49790811738acd17dbf1d5e7a (HEAD -> master, gitlab/master, gitlab/HEAD)
|\  Merge: 8f57ce1 6ed8086
| | Author: wooheaven <wooheaven79@gmail.com>
| | Date:   Fri Jan 25 14:09:41 2019 +0000
| | 
| |     Merge branch '218-brew-install-git' into 'master'
| |     
| |     #218-brew-install-git
| |     
| |     Closes #218
| |     
| |     See merge request wooheaven/UNIX-Study!214
| | 
| * commit 6ed80860cf970dca739e959a80c176d68eda104f
|/  Author: ubuntu <wooheaven79@gmail.com>
|   Date:   Fri Jan 25 23:08:16 2019 +0900
|   
|       #218-brew-install-git
|       ```
|       new file:   01_Ubuntu/02_16/07_brew/03_brew_install_git.md
|       modified:   README.md
|       ```
|   
...
```
