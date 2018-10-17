# git tag
```{bash}
# list all tags
$ git tag

# list tags with keyword
$ git tag -l "*h1"

# create tag with message
$ git tag -a "tmpV1.0" -m "tmpV1.0 is tagged"

# checkout to tag
$ git branch
develop
$ git checkout tmpV1.0

# checkout to previous
$ git checkout develop

# delete tag on local repository
$ git tag -d tmpV1.0

# delete tag on remote repository
$ git push gitlab :tmpV1.0

# push a tag
$ git push gitlab tmpV1.0

# push all tags of a branch
$ git push gitlab develop --tags
```
