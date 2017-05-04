# git revert : file,version is back to previous, but git log is added
```{bash}
$ git log
commit f4a4b4b763e96dde5965f4e3368df42e107523d2
	Author: rwoo <wooheaven@naver.com>
	Date:   Thu Feb 23 07:19:01 2017 +0900

    modify 00, add 12

$ git revert HEAD

$ git log
commit cc1de8cbd4947ff9be098f0996e9d7167292d7b5
	Author: rwoo <wooheaven@naver.com>
	Date:   Thu Feb 23 07:19:33 2017 +0900

    Revert "modify 00, add 12"
	    
    This reverts commit f4a4b4b763e96dde5965f4e3368df42e107523d2.
commit f4a4b4b763e96dde5965f4e3368df42e107523d2
	Author: rwoo <wooheaven@naver.com>
	Date:   Thu Feb 23 07:19:01 2017 +0900

    modify 00, add 12
```
