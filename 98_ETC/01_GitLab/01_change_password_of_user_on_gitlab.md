```
$ docker exec -it gitlab bash

root@localhost:/# gitlab-rails console -e production
--------------------------------------------------------------------------------
 GitLab:       13.3.6 (15c2c8c66db) FOSS
 GitLab Shell: 13.6.0
 PostgreSQL:   11.7
--------------------------------------------------------------------------------
Loading production environment (Rails 6.0.3.1)
irb(main):001:0>

irb(main):001:0> User.where(id:3)
=> #<ActiveRecord::Relation [#<User id:3 @sso>]>

irb(main):007:0> user = User.where(id:3).first
=> #<User id:3 @sso>

irb(main):012:0> user.password = 'o0i9u8y7t6'
=> "o0i9u8y7t6"

irb(main):013:0> user.password_confirmation = 'o0i9u8y7t6'
=> "o0i9u8y7t6"

irb(main):014:0> user.save!
Enqueued ActionMailer::MailDeliveryJob (Job ID: 1a8c9cc3-028a-4e46-896e-257607e7966a) to Sidekiq(mailers) with arguments: "DeviseMailer", "password_change", "deliver_now", {:args=>[#<GlobalID:0x00007f22a7b845e0 @uri=#<URI::GID gid://gitlab/User/3>>]}
=> true

irb(main):015:0> exit

root@localhost:/# exit
exit
```
