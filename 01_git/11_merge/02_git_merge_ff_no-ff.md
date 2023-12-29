# git merge option : ff vs no-ff
```bash
$ git merge --help
...
OPTIONS
       --ff
           When the merge resolves as a fast-forward, only update the branch pointer, without
           creating a merge commit. This is the default behavior.

       --no-ff
           Create a merge commit even when the merge resolves as a fast-forward. This is the default
           behaviour when merging an annotated (and possibly signed) tag that is not stored in its
           natural place in refs/tags/ hierarchy.

# Suppose that master branch has fast-forward relation with 11-tmp branch
# master branch : history of commit A = x -> A
# 11-tmp branch : history of commit B = x -> A -> B

$ git checkout master
$ git merge --ff 11-tmp
# master bramch : history of commit B = x -> A -> B

$ git merge --no-ff 11-tmp
# master bramch : history of commit B = x -> A -> B -> C (merge B to A)
```
