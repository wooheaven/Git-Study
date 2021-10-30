# docker pull image
```
# ref = https://docs.gitlab.com/omnibus/docker/
# https://hub.docker.com/r/gitlab/gitlab-ce

$ docker pull gitlab/gitlab-ce:latest
$ docker pull gitlab/gitlab-ce:14.4.1-ce.0

$ docker images
REPOSITORY         TAG           IMAGE ID       CREATED      SIZE
gitlab/gitlab-ce   14.4.1-ce.0   cb10c65dbb7b   5 days ago   2.31GB
gitlab/gitlab-ce   latest        cb10c65dbb7b   5 days ago   2.31GB

$ docker images --digests 
REPOSITORY         TAG           DIGEST                                                                    IMAGE ID       CREATED      SIZE
gitlab/gitlab-ce   14.4.1-ce.0   sha256:a67074548979a08eba93445c37a5dab09e2a8e4f29b301ec5fc7a05607293121   cb10c65dbb7b   5 days ago   2.31GB
gitlab/gitlab-ce   latest        sha256:a67074548979a08eba93445c37a5dab09e2a8e4f29b301ec5fc7a05607293121   cb10c65dbb7b   5 days ago   2.31GB
```

# prepare directories
```
$ pwd
/home/ubuntu/02_Documents/10_Local_Gitlab_WorkSpace

$ cat 01_remove_mkdir_srv.sh 
#!/bin/bash

if [ -d ./srv ]
then
echo "Current ./srv folder will be removed"
rm -rf ./srv
fi

echo "New     ./srv folder will be created"
mkdir ./srv
mkdir ./srv/gitlab
mkdir ./srv/gitlab/config
mkdir ./srv/gitlab/logs
mkdir ./srv/gitlab/data
mkdir ./srv/gitlab/backups
mkdir ./srv/gitlab-runner

chown -R $USER:root ./srv/

$ sudo ./01_remove_mkdir_srv.sh 
[sudo] password for woo: 
Current ./srv folder will be removed
New     ./srv folder will be created

$ tree srv/
srv/
├── gitlab
│   ├── backups
│   ├── config
│   ├── data
│   └── logs
└── gitlab-runner

6 directories, 0 files
```

# docker run
```
$ cat 02_docker_run_gitlab.sh 
#!/bin/bash

docker run \
--detach \
--name gitlab \
--hostname gitlab.rwoo.com \
--restart no \
--publish 180:180 \
--publish 122:22 \
--env GITLAB_OMNIBUS_CONFIG="external_url 'http://gitlab.rwoo.com:180/'; gitlab_rails['gitlab_shell_ssh_port'] = 22" \
--env GITLAB_ROOT_PASSWORD="12qwaszx" \
--env GITLAB_TIMEZONE="Asia/Seoul" \
--volume `pwd`/srv/gitlab/config:/etc/gitlab \
--volume `pwd`/srv/gitlab/logs:/var/log/gitlab \
--volume `pwd`/srv/gitlab/data:/var/opt/gitlab \
--volume `pwd`/srv/gitlab/backups:/var/opt/gitlab/backups \
gitlab/gitlab-ce:14.4.1-ce.0

$ ./02_docker_run_gitlab.sh
02c6cb1e9c4415f532aeb71da42cda3553f145317936ed67185df6495a54c89b
```

# docker container
```
$ docker logs -f gitlab
...

$ docker ps
CONTAINER ID  IMAGE                         COMMAND            CREATED        STATUS                  PORTS                                                                                        NAMES
54058da0f232  gitlab/gitlab-ce:14.4.1-ce.0  "/assets/wrapper"  5 minutes ago  Up 4 minutes (healthy)  80/tcp, 443/tcp, 0.0.0.0:180->180/tcp, :::180->180/tcp, 0.0.0.0:122->22/tcp, :::122->22/tcp  gitlab
```

# remote add myloc (local hosting GitLab) to existing Git Project (Spark-Study)
```
$ git remote add myloc       git@localhost:wooheaven/Spark-Study.git     # use ssh with port 22
$ git remote add myloc ssh://git@localhost:122/wooheaven/Spark-Study.git # use ssh with port 122 because docker port forwarding
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

# clone existing Git Project (Spark-Study) of local hosting GitLab
```
$ git clone       git@localhost:wooheaven/Spark-Study.git     # use ssh with port 22
$ git clone ssh://git@localhost:122/wooheaven/Spark-Study.git # use ssh with port 122 because docker port forwarding
Cloning into 'Spark-Study'...
warning: You appear to have cloned an empty repository.

$ cd Spark-Study
$ git remote rename origin local
```
