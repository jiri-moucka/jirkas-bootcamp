# setup git repo remote and locally

## Local repo - auth wiht poublic repo

# git

## git process
**create a new file**:  `git status`
![img.png](img.png)

**git add a file**: `git add filename`
![img_1.png](img_1.png)

**update file**:
![img_2.png](img_2.png)



## git commands
```bash
git add . # all files
git status
git commit
git logs
git push
git -d <branche name>
git -m "commit message"
```

## init new repo 
```bash
# 1. Initialize git in your local directory
git init

# 2. Add your files
git add .

# 3. Create initial commit
git commit -m "Initial commit"

# 4. Add the GitLab remote origin
git remote add origin https://gitlab.com/JiriMoucka1/test-node-app.git

# 5. Push to GitLab (sets upstream tracking)
git push --set-upstream origin master
```

# Trunk based development vs feature branching

Feature driven development - like Gitflov - Develop - release - main

Trunk development - short life branches.

# Branches
## Merge requests == pull request

## Rebase
Avoid merge commit in branch.
add new my commits ont the top of the branch.
pull changes from remote and stacks my changes on the top.
the changes must be in diferent files.
`git pull -r`

