```
# rebase 대상 branch와 push 할 branch 확인하기
$ git branch -avv
* main                cf179bb [gitlab/main] Merge branch '58-add-author-of-question-and-answer-by-boarduser' into 'main'
  remotes/gitlab/main cf179bb Merge branch '58-add-author-of-question-and-answer-by-boarduser' into 'main'
  remotes/myloc/main  cf179bb Merge branch '58-add-author-of-question-and-answer-by-boarduser' into 'main'

# rebase 대상 commit을 확인하기
$ git log
commit cf179bbff52c392b95b40aa1b45b5e9acb187ee7 (HEAD -> main, myloc/main, gitlab/main, github/main)
Merge: 7296884 60c4ee0
Author: wooheaven <wooheaven79@gmail.com>
Date:   Mon Jan 9 17:08:48 2023 +0000

    Merge branch '58-add-author-of-question-and-answer-by-boarduser' into 'main'
    
    #58-add-author-of-question-and-answer-by-boarduser
    
    Closes #58
    
    See merge request wooheaven/Spring-Study!58

...

commit fb902b5557f07b5e842797cbdc2605b7b588fcbf
Merge: 078c724 8527612
Author: wooheaven <wooheaven79@gmail.com>
Date:   Thu Dec 8 15:07:34 2022 +0000

    Merge branch '39-qlist-thymeleaf' into 'main'
    
    #39-qlist-thymeleaf
    
    Closes #39
    
    See merge request wooheaven/Spring-Study!39

commit 8527612897ec6a58b3e06e8ac2e18db6756738a9
Author: WooRung <wooheaven79@gmail.com>
Date:   Fri Dec 9 00:05:52 2022 +0900

    #39-qlist-thymeleaf
    ```
    modified:   01_Spring_Boot/01_workspace/board/pom.xml
    modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/BoardApplication.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/QuestionController.java
    modified:   01_Spring_Boot/01_workspace/board/src/main/resources/application.properties
    new file:   01_Spring_Boot/01_workspace/board/src/main/resources/templates/question_list.html
    modified:   README.md
    ```
    modified:   README.md
    new file:   01_Spring_Boot/01_workspace/board/src/main/resources/templates/question_list.html
    modified:   README.md
    ```

commit 078c7246033e0c0360a07299d94c8f8a2885cf65
Merge: dab4573 a4efe44
Author: wooheaven <wooheaven79@gmail.com>
Date:   Sun Dec 4 17:24:40 2022 +0000

    Merge branch '38-jump-to-spring-boot-repository' into 'main'
    
    #38-jump-to-spring-boot-repository
    
    Closes #38
    
    See merge request wooheaven/Spring-Study!38

commit a4efe448291d9de038292eed3db1d4032184a365
Author: WooRung <wooheaven79@gmail.com>
Date:   Mon Dec 5 02:22:44 2022 +0900

    #38-jump-to-spring-boot-repository
    ```
    new file:   01_Spring_Boot/01_workspace/board/.gitignore
    new file:   01_Spring_Boot/01_workspace/board/.mvn/wrapper/maven-wrapper.jar
    new file:   01_Spring_Boot/01_workspace/board/.mvn/wrapper/maven-wrapper.properties
    new file:   01_Spring_Boot/01_workspace/board/mvnw
    new file:   01_Spring_Boot/01_workspace/board/mvnw.cmd
    new file:   01_Spring_Boot/01_workspace/board/pom.xml
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/BoardApplication.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/HelloController.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/MainController.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Answer.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Hello.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Question.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/repository/AnswerRepository.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/repository/QuestionRepository.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/resources/application.properties
    new file:   01_Spring_Boot/01_workspace/board/src/test/java/com/mysite/board/BoardApplicationTests.java
    modified:   README.md
    ```

commit dab4573edf8e548edf7b08bf57d08e4ea5249520
Merge: da60466 bbf7ebb
Author: wooheaven <wooheaven79@gmail.com>
Date:   Fri Nov 11 17:16:29 2022 +0000

    Merge branch '37-spring-io-guides-gs-rest-service' into 'main'
    
    #37-spring-io-guides-gs-rest-service
    
    Closes #37
    
    See merge request wooheaven/Spring-Study!37
...

# 변경을 원하는 commit 의 parent commit으로 rebase 시작하기
$ git rebase -i dab4573edf8e548edf7b08bf57d08e4ea5249520
Stopped at a4efe44...  #38-jump-to-spring-boot-repository ``` new file:   01_Spring_Boot/01_workspace/board/.gitignore new file:   01_Spring_Boot/01_workspace/board/.mvn/wrapper/maven-wrapper.jar new file:   01_Spring_Boot/01_workspace/board/.mvn/wrapper/maven-wrapper.properties new file:   01_Spring_Boot/01_workspace/board/mvnw new file:   01_Spring_Boot/01_workspace/board/mvnw.cmd new file:   01_Spring_Boot/01_workspace/board/pom.xml new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/BoardApplication.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/HelloController.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/MainController.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Answer.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Hello.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Question.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/repository/AnswerRepository.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/repository/QuestionRepository.java new file:   01_Spring_Boot/01_workspace/board/src/main/resources/application.properties new file:   01_Spring_Boot/01_workspace/board/src/test/java/com/mysite/board/BoardApplicationTests.java modified:   README.md ```
You can amend the commit now, with

  git commit --amend 

Once you are satisfied with your changes, run

  git rebase --continue

$ vi 01_Spring_Boot/01_workspace/board/src/main/resources/application.properties
... 원하는 내용으로 수정하기 (commit dab4573e 에서 추가 수정할 내용과 commit a4efe448 에서 conflict 나지 않을 내용으로 수정하기) ...

$ git add 01_Spring_Boot/01_workspace/board/src/main/resources/application.properties

$ git status 
interactive rebase in progress; onto dab4573
Last command done (1 command done):
   edit a4efe44 #38-jump-to-spring-boot-repository ``` new file:   01_Spring_Boot/01_workspace/board/.gitignore new file:   01_Spring_Boot/01_workspace/board/.mvn/wrapper/maven-wrapper.jar new file:   01_Spring_Boot/01_workspace/board/.mvn/wrapper/maven-wrapper.properties new file:   01_Spring_Boot/01_workspace/board/mvnw new file:   01_Spring_Boot/01_workspace/board/mvnw.cmd new file:   01_Spring_Boot/01_workspace/board/pom.xml new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/BoardApplication.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/HelloController.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/MainController.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Answer.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Hello.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Question.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/repository/AnswerRepository.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/repository/QuestionRepository.java new file:   01_Spring_Boot/01_workspace/board/src/main/resources/application.properties new file:   01_Spring_Boot/01_workspace/board/src/test/java/com/mysite/board/BoardApplicationTests.java modified:   README.md ```
Next commands to do (20 remaining commands):
   pick 8527612 #39-qlist-thymeleaf ``` modified:   01_Spring_Boot/01_workspace/board/pom.xml modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/BoardApplication.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/QuestionController.java modified:   01_Spring_Boot/01_workspace/board/src/main/resources/application.properties new file:   01_Spring_Boot/01_workspace/board/src/main/resources/templates/question_list.html modified:   README.md ```
   pick 7e0e7ac #40-root-url-redirect ``` modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/MainController.java modified:   README.md ```
  (use "git rebase --edit-todo" to view and edit)
You are currently editing a commit while rebasing branch 'main' on 'dab4573'.
  (use "git commit --amend" to amend the current commit)
  (use "git rebase --continue" once you are satisfied with your changes)

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
    modified:   01_Spring_Boot/01_workspace/board/src/main/resources/application.properties

$ git commit --amend 
[detached HEAD 0f0504d] #38-jump-to-spring-boot-repository ``` new file:   01_Spring_Boot/01_workspace/board/.gitignore new file:   01_Spring_Boot/01_workspace/board/.mvn/wrapper/maven-wrapper.jar new file:   01_Spring_Boot/01_workspace/board/.mvn/wrapper/maven-wrapper.properties new file:   01_Spring_Boot/01_workspace/board/mvnw new file:   01_Spring_Boot/01_workspace/board/mvnw.cmd new file:   01_Spring_Boot/01_workspace/board/pom.xml new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/BoardApplication.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/HelloController.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/MainController.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Answer.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Hello.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Question.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/repository/AnswerRepository.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/repository/QuestionRepository.java new file:   01_Spring_Boot/01_workspace/board/src/main/resources/application.properties new file:   01_Spring_Boot/01_workspace/board/src/test/java/com/mysite/board/BoardApplicationTests.java modified:   README.md ```
 Date: Mon Dec 5 02:22:44 2022 +0900
 17 files changed, 893 insertions(+), 4 deletions(-)
 create mode 100644 01_Spring_Boot/01_workspace/board/.gitignore
 create mode 100644 01_Spring_Boot/01_workspace/board/.mvn/wrapper/maven-wrapper.jar
 create mode 100644 01_Spring_Boot/01_workspace/board/.mvn/wrapper/maven-wrapper.properties
 create mode 100755 01_Spring_Boot/01_workspace/board/mvnw
 create mode 100644 01_Spring_Boot/01_workspace/board/mvnw.cmd
 create mode 100644 01_Spring_Boot/01_workspace/board/pom.xml
 create mode 100644 01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/BoardApplication.java
 create mode 100644 01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/HelloController.java
 create mode 100644 01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/MainController.java
 create mode 100644 01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Answer.java
 create mode 100644 01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Hello.java
 create mode 100644 01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Question.java
 create mode 100644 01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/repository/AnswerRepository.java
 create mode 100644 01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/repository/QuestionRepository.java
 create mode 100644 01_Spring_Boot/01_workspace/board/src/main/resources/application.properties
 create mode 100644 01_Spring_Boot/01_workspace/board/src/test/java/com/mysite/board/BoardApplicationTests.java
 rewrite README.md (96%)

# local branch에서 원하는 commit에 원하는 변경이 반영되어 기존 commit message에 적용됨
 $ git log
 commit 0f0504d5109183b3165709335f6c8cc520a8c1f5 (HEAD)
Author: WooRung <wooheaven79@gmail.com>
Date:   Mon Dec 5 02:22:44 2022 +0900

    #38-jump-to-spring-boot-repository
    ```
    new file:   01_Spring_Boot/01_workspace/board/.gitignore
    new file:   01_Spring_Boot/01_workspace/board/.mvn/wrapper/maven-wrapper.jar
    new file:   01_Spring_Boot/01_workspace/board/.mvn/wrapper/maven-wrapper.properties
    new file:   01_Spring_Boot/01_workspace/board/mvnw
    new file:   01_Spring_Boot/01_workspace/board/mvnw.cmd
    new file:   01_Spring_Boot/01_workspace/board/pom.xml
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/BoardApplication.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/HelloController.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/MainController.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Answer.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Hello.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Question.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/repository/AnswerRepository.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/repository/QuestionRepository.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/resources/application.properties
    new file:   01_Spring_Boot/01_workspace/board/src/test/java/com/mysite/board/BoardApplicationTests.java
    modified:   README.md
    ```

commit dab4573edf8e548edf7b08bf57d08e4ea5249520
Merge: da60466 bbf7ebb
Author: wooheaven <wooheaven79@gmail.com>
Date:   Fri Nov 11 17:16:29 2022 +0000

    Merge branch '37-spring-io-guides-gs-rest-service' into 'main'
    
    #37-spring-io-guides-gs-rest-service
    
    Closes #37
    
    See merge request wooheaven/Spring-Study!37
...

# rebase 진행하기
$ git rebase --continue 
Auto-merging 01_Spring_Boot/01_workspace/board/src/main/resources/application.properties
CONFLICT (content): Merge conflict in 01_Spring_Boot/01_workspace/board/src/main/resources/application.properties
error: could not apply 8527612... #39-qlist-thymeleaf
hint: Resolve all conflicts manually, mark them as resolved with
hint: "git add/rm <conflicted_files>", then run "git rebase --continue".
hint: You can instead skip this commit: run "git rebase --skip".
hint: To abort and get back to the state before "git rebase", run "git rebase --abort".
Could not apply 8527612... #39-qlist-thymeleaf ``` modified:   01_Spring_Boot/01_workspace/board/pom.xml modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/BoardApplication.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/QuestionController.java modified:   01_Spring_Boot/01_workspace/board/src/main/resources/application.properties new file:   01_Spring_Boot/01_workspace/board/src/main/resources/templates/question_list.html modified:   README.md ```

# rebase 하다가 conflict 수정하기
$ vi 01_Spring_Boot/01_workspace/board/src/main/resources/application.properties

$ git add 01_Spring_Boot/01_workspace/board/src/main/resources/application.properties

$ git status 
interactive rebase in progress; onto dab4573
Last commands done (2 commands done):
   edit a4efe44 #38-jump-to-spring-boot-repository ``` new file:   01_Spring_Boot/01_workspace/board/.gitignore new file:   01_Spring_Boot/01_workspace/board/.mvn/wrapper/maven-wrapper.jar new file:   01_Spring_Boot/01_workspace/board/.mvn/wrapper/maven-wrapper.properties new file:   01_Spring_Boot/01_workspace/board/mvnw new file:   01_Spring_Boot/01_workspace/board/mvnw.cmd new file:   01_Spring_Boot/01_workspace/board/pom.xml new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/BoardApplication.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/HelloController.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/MainController.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Answer.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Hello.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Question.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/repository/AnswerRepository.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/repository/QuestionRepository.java new file:   01_Spring_Boot/01_workspace/board/src/main/resources/application.properties new file:   01_Spring_Boot/01_workspace/board/src/test/java/com/mysite/board/BoardApplicationTests.java modified:   README.md ```
   pick 8527612 #39-qlist-thymeleaf ``` modified:   01_Spring_Boot/01_workspace/board/pom.xml modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/BoardApplication.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/QuestionController.java modified:   01_Spring_Boot/01_workspace/board/src/main/resources/application.properties new file:   01_Spring_Boot/01_workspace/board/src/main/resources/templates/question_list.html modified:   README.md ```
Next commands to do (19 remaining commands):
   pick 7e0e7ac #40-root-url-redirect ``` modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/MainController.java modified:   README.md ```
   pick 72757d5 #41-dto-service-repository ``` modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/QuestionController.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/service/QuestionService.java modified:   README.md ```
  (use "git rebase --edit-todo" to view and edit)
You are currently rebasing branch 'main' on 'dab4573'.
  (all conflicts fixed: run "git rebase --continue")

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
    modified:   01_Spring_Boot/01_workspace/board/pom.xml
    modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/BoardApplication.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/QuestionController.java
    modified:   01_Spring_Boot/01_workspace/board/src/main/resources/application.properties
    new file:   01_Spring_Boot/01_workspace/board/src/main/resources/templates/question_list.html
    modified:   README.md

$ git rebase --continue 
[detached HEAD 4591c2e] #39-qlist-thymeleaf ``` modified:   01_Spring_Boot/01_workspace/board/pom.xml modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/BoardApplication.java new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/QuestionController.java modified:   01_Spring_Boot/01_workspace/board/src/main/resources/application.properties new file:   01_Spring_Boot/01_workspace/board/src/main/resources/templates/question_list.html modified:   README.md ```
 6 files changed, 50 insertions(+), 10 deletions(-)
 create mode 100644 01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/QuestionController.java
 create mode 100644 01_Spring_Boot/01_workspace/board/src/main/resources/templates/question_list.html
Successfully rebased and updated refs/heads/main.

$ git status 
On branch main
Your branch and 'gitlab/main' have diverged,
and have 21 and 42 different commits each, respectively.
  (use "git pull" to merge the remote branch into yours)

nothing to commit, working tree clean

# local branch 에서 원하는 rebase가 되었는지 확인하기
$ git log
commit dda4678d9520b867bdeef05d4f524356e6557977 (HEAD -> main)
Author: WooRung <wooheaven79@gmail.com>
Date:   Tue Jan 10 02:07:08 2023 +0900

    #58-add-author-of-question-and-answer-by-boarduser
    ```
    modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/config/SecurityConfig.java
    modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/AnswerController.java
    modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/QuestionController.java
    modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Answer.java
    modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Question.java
    modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/service/AnswerService.java
    modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/service/BoardUserService.java
    modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/service/QuestionService.java
    modified:   01_Spring_Boot/01_workspace/board/src/main/resources/templates/question_detail.html
    modified:   01_Spring_Boot/01_workspace/board/src/test/java/com/mysite/board/BoardApplicationTests.java
    ```

...

commit 4f496ac3db546eb8d716fb6a6e2d81d52343ef02
Author: WooRung <wooheaven79@gmail.com>
Date:   Fri Dec 9 00:05:52 2022 +0900

    #39-qlist-thymeleaf
    ```
    modified:   01_Spring_Boot/01_workspace/board/pom.xml
    modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/BoardApplication.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/QuestionController.java
    modified:   01_Spring_Boot/01_workspace/board/src/main/resources/application.properties
    new file:   01_Spring_Boot/01_workspace/board/src/main/resources/templates/question_list.html
    modified:   README.md
    ```

commit 0f0504d5109183b3165709335f6c8cc520a8c1f5
Author: WooRung <wooheaven79@gmail.com>
Date:   Mon Dec 5 02:22:44 2022 +0900

    #38-jump-to-spring-boot-repository
    ```
    new file:   01_Spring_Boot/01_workspace/board/.gitignore
    new file:   01_Spring_Boot/01_workspace/board/.mvn/wrapper/maven-wrapper.jar
    new file:   01_Spring_Boot/01_workspace/board/.mvn/wrapper/maven-wrapper.properties
    new file:   01_Spring_Boot/01_workspace/board/mvnw
    new file:   01_Spring_Boot/01_workspace/board/mvnw.cmd
    new file:   01_Spring_Boot/01_workspace/board/pom.xml
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/BoardApplication.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/HelloController.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/MainController.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Answer.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Hello.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Question.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/repository/AnswerRepository.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/repository/QuestionRepository.java
    new file:   01_Spring_Boot/01_workspace/board/src/main/resources/application.properties
    new file:   01_Spring_Boot/01_workspace/board/src/test/java/com/mysite/board/BoardApplicationTests.java
    modified:   README.md
    ```

commit dab4573edf8e548edf7b08bf57d08e4ea5249520
Merge: da60466 bbf7ebb
Author: wooheaven <wooheaven79@gmail.com>
Date:   Fri Nov 11 17:16:29 2022 +0000

    Merge branch '37-spring-io-guides-gs-rest-service' into 'main'
    
    #37-spring-io-guides-gs-rest-service
    
    Closes #37
    
    See merge request wooheaven/Spring-Study!37

$ git branch -avv
* main                dda4678 [gitlab/main: ahead 21, behind 42] #58-add-author-of-question-and-answer-by-boarduser ``` modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/config/SecurityConfig.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/AnswerController.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/QuestionController.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Answer.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Question.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/service/AnswerService.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/service/BoardUserService.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/service/QuestionService.java modified:   01_Spring_Boot/01_workspace/board/src/main/resources/templates/question_detail.html modified:   01_Spring_Boot/01_workspace/board/src/test/java/com/mysite/board/BoardApplicationTests.java ```
  remotes/gitlab/main cf179bb Merge branch '58-add-author-of-question-and-answer-by-boarduser' into 'main'
  remotes/myloc/main  cf179bb Merge branch '58-add-author-of-question-and-answer-by-boarduser' into 'main'

# 원하는 repository 에 rebase 된 branch를 push 하기
$ git push -f myloc main # localhost:180 repository / Allow to force push -> # localhost:180 repository / commit 에서 확인하기
Enumerating objects: 442, done.
Counting objects: 100% (442/442), done.
Delta compression using up to 8 threads
Compressing objects: 100% (340/340), done.
Writing objects: 100% (437/437), 143.68 KiB | 5.53 MiB/s, done.
Total 437 (delta 194), reused 1 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (194/194), done.
To ssh://gitlab.rwoo.com:122/wooheaven/Spring-Study.git
 + cf179bb...dda4678 main -> main (forced update)

$ git push -f gitlab main # https://gitlab.com/wooheaven/Spring-Study repository / Allow to force push -> # https://gitlab.com/wooheaven/Spring-Study repository / commit 에서 확인하기
Enumerating objects: 442, done.
Counting objects: 100% (442/442), done.
Delta compression using up to 8 threads
Compressing objects: 100% (340/340), done.
Writing objects: 100% (437/437), 143.80 KiB | 5.75 MiB/s, done.
Total 437 (delta 193), reused 1 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (193/193), done.
To gitlab.com:wooheaven/Spring-Study.git
 + cf179bb...dda4678 main -> main (forced update)

$ git branch -avv
* main                dda4678 [gitlab/main] #58-add-author-of-question-and-answer-by-boarduser ``` modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/config/SecurityConfig.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/AnswerController.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/QuestionController.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Answer.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Question.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/service/AnswerService.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/service/BoardUserService.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/service/QuestionService.java modified:   01_Spring_Boot/01_workspace/board/src/main/resources/templates/question_detail.html modified:   01_Spring_Boot/01_workspace/board/src/test/java/com/mysite/board/BoardApplicationTests.java ```
  remotes/gitlab/main dda4678 #58-add-author-of-question-and-answer-by-boarduser ``` modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/config/SecurityConfig.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/AnswerController.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/QuestionController.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Answer.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Question.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/service/AnswerService.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/service/BoardUserService.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/service/QuestionService.java modified:   01_Spring_Boot/01_workspace/board/src/main/resources/templates/question_detail.html modified:   01_Spring_Boot/01_workspace/board/src/test/java/com/mysite/board/BoardApplicationTests.java ```
  remotes/myloc/main  dda4678 #58-add-author-of-question-and-answer-by-boarduser ``` modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/config/SecurityConfig.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/AnswerController.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/controller/QuestionController.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Answer.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/model/Question.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/service/AnswerService.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/service/BoardUserService.java modified:   01_Spring_Boot/01_workspace/board/src/main/java/com/mysite/board/service/QuestionService.java modified:   01_Spring_Boot/01_workspace/board/src/main/resources/templates/question_detail.html modified:   01_Spring_Boot/01_workspace/board/src/test/java/com/mysite/board/BoardApplicationTests.java ```
```
