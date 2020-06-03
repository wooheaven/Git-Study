# install GitLab on docker
```
# ref = https://docs.gitlab.com/omnibus/docker/

$ docker pull gitlab/gitlab-ce:latest

$ pwd
/home/ubuntu/02_Documents/10_Local_Gitlab_WorkSpace

$ mkdir srv
$ mkdir srv/gitlab
$ mkdir srv/gitlab/config
$ mkdir srv/gitlab/logs
$ mkdir srv/gitlab/data

$ cat 01_docker_run.sh 
#!/bin/bash

docker run \
--detach \
--publish 180:80 --publish 122:22 \
--name gitlab \
--restart no \
--volume /srv/gitlab/config:/etc/gitlab \
--volume /srv/gitlab/logs:/var/log/gitlab \
--volume /srv/gitlab/data:/var/opt/gitlab \
gitlab/gitlab-ce:latest
#--hostname localhost \

$ chmod +x 01_docker_run.sh
$ ./01_docker_run.sh

$ docker logs -f gitlab

Configure GitLab for your system by editing /etc/gitlab/gitlab.rb file
And restart this container to reload settings.
To do it use docker exec:

  docker exec -it gitlab vim /etc/gitlab/gitlab.rb
  docker restart gitlab

...

$ docker ps
...STATUS...
...healthy...

$ docker exec -it gitlab vim /etc/gitlab/gitlab.rb
...
  29 # external_url 'GENERATED_EXTERNAL_URL'
  30 external_url 'http://localhost:180'
...

$ docker restart gitlab

# localhost:180
password = 12qwaszx

Full name = RyoungWoo
Username = wooheaven
Email = wooheaven79@gmail.com
Password = 12qwaszx
```

# add localRepository of project in order to connect to GitLab
```
$ git remote add myloc ssh://git@localhost:122/wooheaven/Spark-Study.git
$ git fetch myloc 
$ git push myloc master 
Enumerating objects: 2068, done.
Counting objects: 100% (2068/2068), done.
Delta compression using up to 8 threads
Compressing objects: 100% (1369/1369), done.
Writing objects: 100% (2068/2068), 338.56 KiB | 7.52 MiB/s, done.
Total 2068 (delta 882), reused 753 (delta 280)
remote: Resolving deltas: 100% (882/882), done.
To ssh://localhost:122/wooheaven/Spark-Study.git
 * [new branch]      master -> master
```
