# start gitlab container
```
woo@woo:~$ docker start gitlab 
gitlab

woo@woo:~$ docker ps
CONTAINER ID        IMAGE                          COMMAND             CREATED             STATUS                   PORTS                                                        NAMES
56b8696b6d08        gitlab/gitlab-ce:13.6.2-ce.0   "/assets/wrapper"   3 days ago          Up 2 minutes (healthy)   80/tcp, 443/tcp, 0.0.0.0:180->180/tcp, 0.0.0.0:122->22/tcp   gitlab
```

# backup gitlab
```
woo@woo:~$ docker exec gitlab cat /etc/gitlab/gitlab.rb | grep backup_path
# gitlab_rails['manage_backup_path'] = true
# gitlab_rails['backup_path'] = "/var/opt/gitlab/backups"

woo@woo:~$ docker exec -t gitlab gitlab-backup create
2020-12-14 02:39:18 +0000 -- Dumping database ... 
Dumping PostgreSQL database gitlabhq_production ... [DONE]
2020-12-14 02:39:20 +0000 -- done
2020-12-14 02:39:20 +0000 -- Dumping repositories ...
 * RungWoo/twim-work (@hashed/6b/86/6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b) ... 
 * RungWoo/twim-work (@hashed/6b/86/6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b) ... [DONE]
 * RungWoo/twim-work.wiki (@hashed/6b/86/6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b.wiki) ... 
 * RungWoo/twim-work.wiki (@hashed/6b/86/6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b.wiki) ... [SKIPPED]
 * RungWoo/twim-work.design (@hashed/6b/86/6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b.design) ... 
 * RungWoo/twim-work.design (@hashed/6b/86/6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b.design) ... [SKIPPED]
2020-12-14 02:39:20 +0000 -- done
2020-12-14 02:39:20 +0000 -- Dumping uploads ... 
2020-12-14 02:39:20 +0000 -- done
2020-12-14 02:39:20 +0000 -- Dumping builds ... 
2020-12-14 02:39:20 +0000 -- done
2020-12-14 02:39:20 +0000 -- Dumping artifacts ... 
2020-12-14 02:39:20 +0000 -- done
2020-12-14 02:39:20 +0000 -- Dumping pages ... 
2020-12-14 02:39:20 +0000 -- done
2020-12-14 02:39:20 +0000 -- Dumping lfs objects ... 
2020-12-14 02:39:21 +0000 -- done
2020-12-14 02:39:21 +0000 -- Dumping container registry images ... 
2020-12-14 02:39:21 +0000 -- [DISABLED]
Creating backup archive: 1607913561_2020_12_14_13.6.2_gitlab_backup.tar ... done
Uploading backup archive to remote storage  ... skipped
Deleting tmp directories ... done
done
done
done
done
done
done
done
Deleting old backups ... skipping
Warning: Your gitlab.rb and gitlab-secrets.json files contain sensitive data 
and are not included in this backup. You will need these files to restore a backup.
Please back them up manually.
Backup task is done.

woo@woo:~$ docker exec gitlab ls /etc/gitlab/gitlab.rb 
/etc/gitlab/gitlab.rb

woo@woo:~$ docker exec gitlab ls /etc/gitlab/gitlab-secrets.json
/etc/gitlab/gitlab-secrets.json

woo@woo:~$ docker exec gitlab ls /var/opt/gitlab/backups/
1607913561_2020_12_14_13.6.2_gitlab_backup.tar

woo@woo:~$ docker cp gitlab:/etc/gitlab/gitlab-secrets.json .
woo@woo:~$ docker cp gitlab:/etc/gitlab/gitlab.rb .
woo@woo:~$ docker cp gitlab:/var/opt/gitlab/backups/1607913561_2020_12_14_13.6.2_gitlab_backup.tar .

woo@woo:~$ ls gitlab-secrets.json 
gitlab-secrets.json

woo@woo:~$ ls gitlab.rb 
gitlab.rb

woo@woo:~$ ls 1607913561_2020_12_14_13.6.2_gitlab_backup.tar 
1607913561_2020_12_14_13.6.2_gitlab_backup.tar
```

# remote copy from backup
```
woo@woo:~$ rsync gitlab.rb twim@bc2:/home/twim/02_Documents/49_Local_Gitlab_WorkSpace/
woo@woo:~$ rsync gitlab-secrets.json  twim@bc2:/home/twim/02_Documents/49_Local_Gitlab_WorkSpace/
woo@woo:~$ rsync 1607913561_2020_12_14_13.6.2_gitlab_backup.tar twim@bc2:/home/twim/02_Documents/49_Local_Gitlab_WorkSpace/

woo@woo:~$ ssh twim@bc2
twim@bc2's password:

twim@bigdatacom2:~/02_Documents/49_Local_Gitlab_WorkSpace$ ll
total 48992
drwxrwxr-x 2 twim twim     4096 Dec 14 05:12 ./
drwxrwxr-x 3 twim twim     4096 Dec 14 05:10 ../
-rw------- 1 twim twim 50022400 Dec 14 05:12 1607913561_2020_12_14_13.6.2_gitlab_backup.tar
-rw------- 1 twim twim    18980 Dec 14 05:12 gitlab-secrets.json
-rw------- 1 twim twim   110934 Dec 14 05:11 gitlab.rb
```

# run gitlab container
```
twim@bigdatacom2:~/02_Documents/49_Local_Gitlab_WorkSpace$ docker pull gitlab/gitlab-ce:13.6.2-ce.0
twim@bigdatacom2:~/02_Documents/49_Local_Gitlab_WorkSpace$ ./03_remove_mkdir_srv.sh 
New     ./srv folder will be created
twim@bigdatacom2:~/02_Documents/49_Local_Gitlab_WorkSpace$ tree srv/
srv/
└── gitlab
    ├── config
    ├── data
    └── logs
4 directories, 0 files
twim@bigdatacom2:~/02_Documents/49_Local_Gitlab_WorkSpace$ ./01_docker_run.sh 
0c22fa698d59939e810acf25daf8dfbe0249000d78db287eec4e60e8008475f3
```

# load gitlab from backup
```
twim@bigdatacom2:~/02_Documents/49_Local_Gitlab_WorkSpace$ docker exec gitlab ls -l /etc/gitlab/
total 160
-rw------- 1 root root  18771 Dec 14 05:20 gitlab-secrets.json
-rw------- 1 root root 110898 Dec 14 05:20 gitlab.rb
-rw------- 1 root root    227 Dec 14 05:20 ssh_host_ecdsa_key
-rw-r--r-- 1 root root    176 Dec 14 05:20 ssh_host_ecdsa_key.pub
-rw------- 1 root root    411 Dec 14 05:20 ssh_host_ed25519_key
-rw-r--r-- 1 root root     96 Dec 14 05:20 ssh_host_ed25519_key.pub
-rw------- 1 root root   1675 Dec 14 05:20 ssh_host_rsa_key
-rw-r--r-- 1 root root    396 Dec 14 05:20 ssh_host_rsa_key.pub
drwxr-xr-x 2 root root   4096 Dec 14 05:20 trusted-certs
twim@bigdatacom2:~/02_Documents/49_Local_Gitlab_WorkSpace$ docker cp gitlab.rb gitlab:/etc/gitlab/
twim@bigdatacom2:~/02_Documents/49_Local_Gitlab_WorkSpace$ docker cp gitlab-secrets.json gitlab:/etc/gitlab/
twim@bigdatacom2:~/02_Documents/49_Local_Gitlab_WorkSpace$ docker exec gitlab ls -l /etc/gitlab/
total 160
-rw------- 1 1000 1000  18980 Dec 14 05:12 gitlab-secrets.json
-rw------- 1 1000 1000 110934 Dec 14 05:11 gitlab.rb
-rw------- 1 root root    227 Dec 14 05:20 ssh_host_ecdsa_key
-rw-r--r-- 1 root root    176 Dec 14 05:20 ssh_host_ecdsa_key.pub
-rw------- 1 root root    411 Dec 14 05:20 ssh_host_ed25519_key
-rw-r--r-- 1 root root     96 Dec 14 05:20 ssh_host_ed25519_key.pub
-rw------- 1 root root   1675 Dec 14 05:20 ssh_host_rsa_key
-rw-r--r-- 1 root root    396 Dec 14 05:20 ssh_host_rsa_key.pub
drwxr-xr-x 2 root root   4096 Dec 14 05:20 trusted-certs

twim@bigdatacom2:~/02_Documents/49_Local_Gitlab_WorkSpace$ docker exec gitlab gitlab-ctl reconfigure
...
Chef Infra Client finished, 9/735 resources updated in 39 seconds
gitlab Reconfigured!

twim@bigdatacom2:~/02_Documents/49_Local_Gitlab_WorkSpace$ docker exec gitlab gitlab-ctl stop unicorn
twim@bigdatacom2:~/02_Documents/49_Local_Gitlab_WorkSpace$ docker exec gitlab gitlab-ctl stop sidekiq
ok: down: sidekiq: 0s, normally up
twim@bigdatacom2:~/02_Documents/49_Local_Gitlab_WorkSpace$ docker exec gitlab gitlab-ctl stop puma
ok: down: puma: 1s, normally up

twim@bigdatacom2:~/02_Documents/49_Local_Gitlab_WorkSpace$ docker exec gitlab gitlab-ctl status
run: alertmanager: (pid 2021) 249s; run: log: (pid 1572) 319s
run: gitaly: (pid 1889) 250s; run: log: (pid 482) 566s
run: gitlab-exporter: (pid 1866) 251s; run: log: (pid 1005) 337s
run: gitlab-workhorse: (pid 1840) 251s; run: log: (pid 917) 351s
run: grafana: (pid 2679) 178s; run: log: (pid 1786) 270s
run: logrotate: (pid 969) 344s; run: log: (pid 979) 343s
run: nginx: (pid 2641) 178s; run: log: (pid 960) 349s
run: postgres-exporter: (pid 2046) 248s; run: log: (pid 1684) 311s
run: postgresql: (pid 614) 561s; run: log: (pid 647) 559s
run: prometheus: (pid 1899) 250s; run: log: (pid 1073) 324s
down: puma: 30s, normally up; run: log: (pid 815) 363s
run: redis: (pid 412) 573s; run: log: (pid 419) 572s
run: redis-exporter: (pid 1879) 251s; run: log: (pid 1034) 329s
down: sidekiq: 37s, normally up; run: log: (pid 842) 355s
run: sshd: (pid 34) 589s; run: log: (pid 33) 589s

twim@bigdatacom2:~/02_Documents/49_Local_Gitlab_WorkSpace$ docker exec gitlab cat /etc/gitlab/gitlab.rb | grep backup_path
# gitlab_rails['manage_backup_path'] = true
# gitlab_rails['backup_path'] = "/var/opt/gitlab/backups"

twim@bigdatacom2:~/02_Documents/49_Local_Gitlab_WorkSpace$ docker cp 1607913561_2020_12_14_13.6.2_gitlab_backup.tar gitlab:/var/opt/gitlab/backups/
twim@bigdatacom2:~/02_Documents/49_Local_Gitlab_WorkSpace$ docker exec gitlab chown git:git /var/opt/gitlab/backups/1607913561_2020_12_14_13.6.2_gitlab_backup.tar
twim@bigdatacom2:~/02_Documents/49_Local_Gitlab_WorkSpace$ docker exec gitlab ls -l /var/opt/gitlab/backups/
total 48852
-rw------- 1 git git 50022400 Dec 14 05:12 1607913561_2020_12_14_13.6.2_gitlab_backup.tar

twim@bigdatacom2:~/02_Documents/49_Local_Gitlab_WorkSpace$ docker exec -it gitlab gitlab-backup restore BACKUP=1607913561_2020_12_14_13.6.2 --trace
** Invoke gitlab:backup:restore (first_time)
** Invoke gitlab_environment (first_time)
** Invoke environment (first_time)
** Execute environment
** Execute gitlab_environment
** Execute gitlab:backup:restore
Unpacking backup ... done
Be sure to stop Puma, Sidekiq, and any other process that
connects to the database before proceeding. For Omnibus
installs, see the following link for more information:
https://docs.gitlab.com/ee/raketasks/backup_restore.html#restore-for-omnibus-gitlab-installations

Before restoring the database, we will remove all existing
tables to avoid future upgrade problems. Be aware that if you have
custom tables in the GitLab database these tables and all data will be
removed.

Do you want to continue (yes/no)? yes
...
Do you want to continue (yes/no)? Do you want to continue (yes/no)? yes

** Invoke cache:clear (first_time)
** Invoke cache:clear:redis (first_time)
** Invoke environment 
** Execute cache:clear:redis
** Execute cache:clear
Warning: Your gitlab.rb and gitlab-secrets.json files contain sensitive data 
and are not included in this backup. You will need to restore these files manually.
Restore task is done.
```
